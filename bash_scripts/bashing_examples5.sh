#bin/bash!

echo "Welcome to this random app"
echo "We'll do some stuff"
sleep 3

nmap -Pn -T4 -p 443 192.168.1.82 -oN ex.txt

cutting=$(cut -z -c 181-188 ex.txt)

echo $cutting > sm.txt

#for i in `seq 1 443`; do
#done

