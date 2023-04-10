#bin/bash!

while true;
do
	echo "Ingresa q en cualquier momento para salir"
	sleep 3
	
	echo "Ingresa un numero"
	read num1

	echo "Ingresa otro numero"
	read num2
	
	if [ $num1 = "q" ] || [ $num2 = "q" ];
	then
		echo "Solo numeros"
		break
	else		
		echo $(($num1 + $num2))
	fi
done
	
	

