
# trash path
TRASHPATH=/.Trash

# User specific aliases and functions
alias rm=trash
alias rl='ls $TRASHPATH'
alias rll='ll $TRASHPATH'
alias rla='ll -a $TRASHPATH'
alias rlt='ll -rct $TRASHPATH'
alias rdu='du -sh $TRASHPATH'
alias rt=recovertrash
alias cleartrash=cleartrash


trash()
{
  timestmp=`date "+_%Y%m%d-%H%M%S"`

  if [ ! -d "$TRASHPATH" ];then
  mkdir "$TRASHPATH"
  #chmod 777 "$TRASHPATH"
  echo "The trash path is not existing, creating "$TRASHPATH" finished"
  fi

  for rm_var in $*
  do
    if [[ "$rm_var" == / ]]
    then
    echo "You can not rm /"
    else
      if [[ "$rm_var" == */ ]]
      then
      rm_var_m=${rm_var%/*}
echo $rm_var
      /bin/mv $rm_var $TRASHPATH/${rm_var_m##*/}$timestmp
      else
echo $rm_var
      /bin/mv $rm_var $TRASHPATH/${rm_var##*/}$timestmp
      fi
    fi
  done
}

recovertrash()
{
  for rm_var in $*
  do
  /bin/mv  $TRASHPATH/$rm_var ./${rm_var%_*}
  done
}


cleartrash()
{
  echo -n "clear sure?[y/n]"
  read I
# 注意，如果是mac big sur的话 ，用的是 zsh，这里要用双中括号，否则报错
  # [ $I == 'y' ] || [ $I == 'Y' ] && /bin/rm -rf $TRASHPATH/*
  [[ $I == 'y' ]] || [[ $I == 'Y' ]] && /bin/rm -rf $TRASHPATH/*
}

is_empty_dir(){
  return `ls -A $1|wc -w`
}

