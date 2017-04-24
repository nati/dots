function pssh
  if test (count $argv) = 0
    set peco_flags --layout=bottom-up
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end
  grep -r "^Host" ~/.ssh/* | peco | awk "{print \$2}" |read foo

  if [ $foo ]
    ssh $foo
  end
end
