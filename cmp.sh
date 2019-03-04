#!/usr/bin/env bash
gcc data.c libft/libft.a -o data
clear
cpt=0
m="start"
game=0;
echo "Pick a flag for the generator's map
	--big
	--flow-one
	--flow-ten
	--flow-thousand
	--big-superposition"
	read m
if [ -z $m ]
then
	m="vide"
fi
while [ $m != "--flow-one" ] && [ $m != "--flow-ten" ] \
	&& [ $m != "--flow-thousand" ] && [ $m != "--big" ] \
	&& [ $m != "--big-superposition" ]
do
	read -p "Try again : " m
	if [ -z $m ]
	then
		m="vide";
	fi
done
echo "Choose the number of games"
read game
while [ -z $game ] || [ $game -le 0 ]
do
	read -p "wrong number, second chance :" game
done
while ((cpt<=game))
do
	echo "$((($cpt*100)/$game))%"
	./generator $m | ./lem-in | ./data
	((cpt+=1))
done
exit
