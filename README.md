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




