for j in {1..2}
do
	for i in {1..500}
	do
		now=$(date +%s%3N)
		echo "{'now':'$now'}" > data.js
		git add data.js
		git commit -m "Commit at $now milliseconds"
		echo "$i/1000"
		sleep 1
	done
	git push origin main
	echo "number of pushs: $j/2"
done

# bash script.sh, Git bash installed, to run it













