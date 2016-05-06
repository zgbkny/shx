#!/bin/bash
# 主要用于挖掘生物中的复合物

list_complex="/mnt/hgfs/share/pl/mcl/list_complex"

# 1. install mcl

# 2. list all files
for file in /mnt/hgfs/share/cache/mxm_PPI_nets/*
do
    if test -f $file
    then
        echo $file 是文件
    else
        echo $file 是目录
        if [ "${file:(-4):4}"x = "_out"x ]; then #判断目录是不是合法的目录名
            continue
        fi
        flag=1
        outDirPath=${file}'_out'
        if [ ! -d $outDirPath ]; then #判断目录是否存在
            mkdir $outDirPath  
        fi
        
        exequalOutPath=${outDirPath}'_exequal_out.txt'
        
        matchOutPath=${outDirPath}'_match_out.txt'
           
        for subFile in $(ls ${file})
        do       
            temp=${file}'/'${subFile}
            if [ "${temp:(-4):4}"x = ".txt"x ]
            then                 
                outFilePath=${outDirPath}'/'${subFile}
                mcl $temp --abc -o $outFilePath
                if [ $flag = 1 ]
                then 
                    echo "$outFilePath" > "$list_complex"
                    let flag=2 
                else 
                    echo "$outFilePath" >> "$list_complex"
                fi
            fi
        done
        perl /mnt/hgfs/share/pl/mcl/complex_format.pl
        perl /mnt/hgfs/share/pl/mcl/exequal_combine.pl $list_complex $exequalOutPath
        rm -f $matchOutPath
        touch $matchOutPath
        perl /mnt/hgfs/share/pl/mcl/match.pl $exequalOutPath /mnt/hgfs/share/pl/mcl/complex_408.txt $matchOutPath

    fi
done