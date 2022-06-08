mark(){
	if ! [ -z "$1" ]
	then
		local lines="$(wc -l < ~/.markRecal/mark.list)"
		if [ $1 -gt $lines ]
		then
			for I in { seq $1 $lines} 
			do 
				echo . >>~/.markRecal/mark.list
			done
		fi
		sed -i "$1s#.*#$PWD#" ~/.markRecal/mark.list
	else
		echo $PWD > ~/.markRecal/mark
	fi
}
recal(){
	if ! [ -z "$1" ]
	then
		cd "$(sed "$1!d" ~/.markRecal/mark.list)" 
	else
		cd "$(cat ~/.markRecal/mark)"
	fi
}
swap(){
	if ! [ -z "$1" ]
	then
		local going=$(sed "$1!d" ~/.markRecal/mark.list)
		mark $1
		cd "$going"
	else
		local going=$(cat ~/.markRecal/mark)
		echo $PWD > ~/.markRecal/mark
		cd "$going"
	fi
}
if ! [ -d ~/.markRecal ] 
then
	mkdir ~/.markRecal
	touch ~/.markRecal/mark
	touch ~/.markRecal/mark.list
fi
