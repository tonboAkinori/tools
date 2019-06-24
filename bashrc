find-help()
{
cat <<EOF
 - search file 
   find . -name hoge.h 
 - search file and match pattern
   find . -name hoge.h | xargs grep fugafuga
EOF
}

grep-help()
{
cat <<EOF
 - match pattern
   grep -r fugafuga  
 - search file and match pattern
   find . -name hoge.h | xargs grep fugafuga
EOF
}
