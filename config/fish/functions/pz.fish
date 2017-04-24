function pz 
  if test (count $argv) = 0
    set peco_flags --layout=bottom-up
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  z -l |peco $peco_flags|awk '{print $2}'|read foo

  if [ $foo ]
    cd $foo
  else
    cd ''
  end
end
