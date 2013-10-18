for format in eps svg png; do

	echo "building $format"

	for f in gv/*.gv; do

		echo "  $f => ${f/gv/$format}";

		x=`basename $f`
		dot -T$format $f -o $format/${x/gv/$format}

	done;

done;
