function pcd
  if test (count $argv) = 0
    set peco_flags --layout=bottom-up
  else
    set peco_flags --layout=bottom-up --query "$argv"
  end

  ghq list -p |peco $peco_flags|read foo

  if [ $foo ]
    cd $foo
  else
    cd ''
  end
end