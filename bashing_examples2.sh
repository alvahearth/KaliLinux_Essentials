#bin/bash!

echo "Ingresa el primer numero"
read num1

echo "Ingresa el segundo numero"
read num2


if [ $num1 -lt $num2 ];
then
	echo "el primer numero es menor al segundo"
else
	echo "el numero es mayor"
fi
