#!/bin/bash

function zoo () {
#!/bin/bash
echo "1. make dirs in home dir"
cd ~
rm -rf zoo
mkdir -p zoo/{predatoy/{table,leopard},birds/{parrot,chair}}
echo "2.1 fix names"
mv zoo/predatory/table zoo/predatory/lion
ls zoo/predatory/
echo "2.2 write fact to lion"
echo "parrots and lions" > zoo/predatory/lion/facts
echo "2.3 copy fact to parrot dir"
cp zoo/predatory/lion/facts zoo/birds/parrot/
echo "2.4 rename chair to chicken"
mv zoo/birds/chair/ zoo/birds/chicken/
ls zoo/birds/
echo "3. create 9 chickens"
touch zoo/birds/chicken/chicken{1..9}
ls zoo/birds/chicken/
echo "4. displlay reverse chickens"
ls -lr zoo/birds/chicken/ | tee zoo/birds/chicken/iChick
ls zoo/birds/chicken/
echo "5. creating babyshark group"
sudo groupadd babyshark
cat /etc/group | grep babyshark
echo "6.assigning read perms to others in x\chicken"
chmod -R o=r zoo/birds/chicken/
echo "7. display other perms"
ls -l zoo/birds/chicken/ | grep ^.......... | cut -c 8-10 | tee -a zoo/birds/chicken/iChick
cat zoo/birds/chicken/iChick
echo "8. delete zoo dir"
rm -rf zoo
echo "9. delete babyshark group"
sudo groupdel babyshark
cat /etc/group
}

function triangle() {
read -p "enter a num: " num
while [[ $num -gt 0 ]]
do
    i=1
    while [[ $i -le $num ]]
		do
		    echo -n "$i"
		    let i=i+1
		done
	echo ""
	let num=num-1
done
}

function readname () {

while [[ 1 -eq 1 ]]
	do
		read -p "Enter yo name?: " nam
		len=${#nam}
		if [[ $len -lt 5 ]]
			then
				echo "Enter long name"
			else
				echo "$nam" | tr [[:lower:]] [[:upper:]]
		fi
	done
}

function calc () {
	while [[ 1 -eq 1 ]]
		do
			echo "*************************"
			echo "What you wanna to convert"
			echo "*************************"
			echo "1. Decimal to Binary"
			echo "2. Binary to Decimal"
			echo "3. Exit"
			read -p "Make you choice now: " c
				case $c in
				1) decbin ;;
				2) bindec ;;
				3) exit 5 ;;
				*) echo "1-3 ONLY!" ; sleep 3 ;;
				esac
		done
}
