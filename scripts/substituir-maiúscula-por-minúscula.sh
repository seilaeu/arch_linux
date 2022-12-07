echo
echo
echo
echo Qual é o ficheiro origem?
echo
echo
echo
read origem
echo
echo
echo
echo Qual é o ficheiro destino?
echo 
echo
echo
read destino

sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZÀÁÂÃÉÊÍÓÔÕÚÇ/abcdefghijklmnopqrstuvwxyzàáâãéêíóôõúç/' $origem > $destino
echo
echo
echo
