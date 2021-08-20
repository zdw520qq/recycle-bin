# recycle-bin
Used for linux or mac,  replace rm with mv, and move the files or dir  to .Trash

# Linux or Mac (bash)
if you device‘s Syctem is Linux or your mac is low version that use bash as default shell， linux.sh is suit for you

paste the script which in linux.sh  into ~/.bash_profile


# Mac （zsh）
if you mac is high version , such as mac OS big sur that use zsh as default shell. mac.sh is suit for you.

```

cat >> ~/.zshrc << EOF

source ~/.bash_profile 

EOF

```

don't forget give you item  the whole permission of accessing to disk （设置-安全与隐私-隐私   万全磁盘访问权限）

then paste the script which in linux.sh  into ~/.bash_profile




# guide

- rm
delete the file or do fold, and a timestamp will append the fileName or foldName.

```

touch 1 2 3 
mkdir  d1 d2 d3

rm  1
rm 2 3
rm d1 d2 d3

```


- rl
find the file you deleted  like  ls 



- rll
find the file you deleted  like  ll

- rlt
find the file you deleted order by time


- rdu
check the size of trash


- rt
recover the file you deleted

```
rl d1_20210820-154042

rl d2_20210820-154042  recycle_bin_20210820-151930

```

- cleartrash
clear the trash when you confirmed with y or Y





