# sort
for LIST in *.txt
do
	sort --ignore-case --unique "$LIST" --output "$LIST"
done
