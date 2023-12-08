#!/bin/bash
clear
echo "::::::::::::::::::::::::::::::::::::::::"
echo "............. DOCKER STACK ............."
echo "::::::::::::::::::::::::::::::::::::::::"
echo "----------------------------------------"
echo "d - [✓] Eksekusi Docker Stack - [ Mode: Silent ]"
echo "----------------------------------------"
echo "b - [✓] Eksekusi Docker Stack [ Mode: Test ] Untuk Stop 'Ctrl+C'"
echo "----------------------------------------"
echo "x - [X] Hapus Docker Stack "
echo "----------------------------------------"
echo "1 - [✓] Start Docker Stack "
echo "----------------------------------------"
echo "0 - [!] Stop Docker Stack "
echo "----------------------------------------"
echo " "
echo "Cek Statistik HAproxy :"
echo "http://ipaddress:7000/haproxy?stats"
echo " "
read lampphaproxy;
case $lampphaproxy in
  d) docker-compose -p "lampp-haproxy" up -d --build && chmod +x server.sh && ./server.sh;;   ### Nama Stack + Dibalik Layar
  b) docker-compose -p "lampp-haproxy" up --build ;;   ### Nama Stack + Proses Test
  x) docker-compose -p "lampp-haproxy" down && chmod +x server.sh && ./server.sh;;   ### Nama Stack + Hapus Container
  0) docker-compose -p "lampp-haproxy" stop && chmod +x server.sh && ./server.sh ;;   ### Stop
  1) docker-compose -p "lampp-haproxy" start && chmod +x server.sh && ./server.sh ;;  ### Start
  *) clear && echo "Keluar dari Pilihan Service Docker Stack";;
esac
