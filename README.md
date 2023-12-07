# LAMPP + HAProxy
Lampp (PHP7.4-Apache, Mariadb dam PHPMyAdmin) dengan HAProxy yang dijalankan pada Docker Stack

# JALANKAN #
apt update -y && \
apt install git && \
https://github.com/otnamrehus/lampp-haproxy.git && \
cd lampp-haproxy && \
chmod +x server.sh && \
./server.sh


# TESTING #
- Browser http://ipaddress:7007  [PHPMyAdmin]
  - MySQL user : user/password
  - MySQL root : user/password
- Browser http://ipaddress:7000  [Web]
