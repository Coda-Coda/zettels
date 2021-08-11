IFS=$'\n'
for existingF in $(find ./* -name '*.md'); do
  rm "$existingF"
done

for f in $(find ../* -name '*.md'); do 
	f2=${f%.md} # Remove the .md extension
	f3=${f2:2} # Remove the two dots from something like ../index

	fOut=`basename $f` # Gets the basename, for outputting in the _permalink directory.
cp $f "permalink_$fOut"

sed -i 's/\[\[\([[:alnum:]_-][[:alnum:] _-]*\)\]\]/\[\[permalink_\1\]\]/g' "permalink_$fOut"

echo '

```{=html}
<script>
    window.location.replace("/zettels'$f3'");
</script>
```' >> "permalink_$fOut"
done