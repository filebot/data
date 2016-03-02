# update
git pull origin master

# sort
for LIST in *.txt
do
	sort --ignore-case --unique "$LIST" --output "$LIST"
done

# commit
git commit -m "Update data files" --all
