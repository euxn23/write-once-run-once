while read line
do
  if [$line == ""]
  then
    continue
  fi
  gh api -X PATCH repos/$line -F 'archived=true'
done < targets.txt

