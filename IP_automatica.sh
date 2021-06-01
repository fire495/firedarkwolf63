#! /bin/bash
# IP automatica con kalitorify
clear
# Mensaje
sleep 5s
echo ""
spinner() { 
   local i sp n 
   sp='/-\|' 
   n=${#sp} 
   printf ' ' 
   while sleep 0.1; do 
   printf "%s\b" "${sp:i++%n:1}" 
   done 
   } 
   
printf 'Accediendo a la configuracion de kalitorify...' 
spinner & 
sleep 5 # se duerme por 5 segundos en lo que carga kalitorify 
kill "$!" # mata la animacion del spinner
printf '\n'

# Al directorio que tiene que acceder
sleep 5s
cd /opt/kalitorify
sleep 5s
echo ""
echo "Carpeta kalitorify lista 𐊙"

# Simula cargar los datos
echo ""
spinner() { 
   local i sp n 
   sp='/-\|' 
   n=${#sp} 
   printf ' ' 
   while sleep 0.1; do 
   printf "%s\b" "${sp:i++%n:1}" 
   done 
   } 
   
printf 'Cargando los datos del servicio tor browser...' 
spinner & 
sleep 10 # se duerme por 10 segundos en lo que carga tor
kill "$!" # mata la animacion del spinner 
printf '\n'
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
