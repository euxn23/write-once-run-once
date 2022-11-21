while read line
do
  if [$line == ""]
  then
    continue
  fi
  gh api -X DELETE repos/$line
done < targets.txt

