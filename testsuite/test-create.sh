for i in diradm.* ; do 
	t=${i/diradm.}  ;
	n=1
	lastj=''
	for j in `awk '/diradm/{print $2}' $i/usage` ; do
		[ "$lastj" = "$j" ] && n=$(($n+1)) || n=1
		echo "------------"
		if [ ! -f "$i/$j-$n.exp" ]; then
			m4 -D_GROUP_=$t -D_COMMAND_=$j -D_NUM_=$n -D_DESC_="`grep $j $i/usage | sed 's,^,#,g' `" <template.exp.in >$i/$j-$n.exp
		fi
		lastj="$j"
	done
done ;
