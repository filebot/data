#/bin/sh

for LIST in *.txt; do
	sort --ignore-case --unique "$LIST" --output "$LIST"
	cat "$LIST"
done
