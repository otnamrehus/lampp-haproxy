##################### ON-OFF.SH #######################
#!/bin/bash
clear
echo "::::::::::::::::::::::::::::::::::::::::"
echo "............. DOCKER SWARM ............."
echo "::::::::::::::::::::::::::::::::::::::::"
echo "----------------------------------------"
echo "s - [✓] Inisiasi Docker Swarm"
echo "----------------------------------------"
echo "d - [✓] Deploy Stack Swarm "
echo "----------------------------------------"
echo "c - [?] Cek Status Stack Swarm "
echo "----------------------------------------"
echo "r - [X] Hapus Stack Lampp_Swarm " 
echo "----------------------------------------"
echo "rr - [!] Hapus Seluruh Stack yang berjalan "
echo "----------------------------------------"

echo " "

read swarm;
case $swarm in
  d) docker stack deploy -c docker-compose.yaml lampp_swarm ;;
  c) docker stack ps lampp_swarm ;;
  rr) docker swarm leave --force ;;
  r) docker stack rm lampp_swarm_stack ;;
  s) docker swarm  init ;;
  *) clear && echo "Keluar dari Pilihan Service Docker Swarm";;
esac
####################### E N D #########################
