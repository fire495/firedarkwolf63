#! /bin/bash
# IP automatica con kalitorify
clear
# Mensaje
sleep 5s
echo ""
echo "accediendo a la configuracion de kalitorify..."
echo ""

# Al directorio que tiene que acceder
sleep 5s
cd /opt/kalitorify
sleep 5s
echo ""
echo "carpeta kalitorify lista."
echo ""

# Simula cargar los datos
echo ""
sleep 5s
echo "cargando los datos del servicio tor browser..."
echo ""
echo ""
sleep 1s
echo "2%[##]"
sleep 1s
echo "16%[########]"
sleep 1s
echo "24%[##########]"
sleep 1s
echo "32%[#############]"
sleep 1s
echo "47%[################]"
sleep 1s
echo "58%[##################]"
sleep 1s
echo "62%[####################]"
sleep 1s
echo "71%[######################]"
sleep 1s
echo "80%[########################]"
sleep 1s
echo "96%[##########################]"
sleep 2s
echo "100%[###########################]"
echo ""
clear

# Inicia el proxy transparente
# Si se cambia nuestra IP nos devolvera la siguiente salida
kalitorify -t
if [ $? -eq 1 ] ; then
echo ""
echo "Se cambio la IP exitosamente!"
echo ""
else
echo ""
echo "Reiniciando conexion con tor espere..."
echo ""
sleep 5s
kalitorify -r
fi

echo ""
echo "Checando el estado de tor..."
echo ""
sleep 5s
kalitorify -s
echo ""

for (( ; ; ))
do
sleep 1m
    kalitorify -r
done

exit
