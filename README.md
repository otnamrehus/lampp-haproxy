# LAMPP + HAProxy
Lampp (PHP7.4-Apache, Mariadb dam PHPMyAdmin) dengan HAProxy yang dijalankan pada Docker Stack

# JALANKAN #
apt update -y && \
apt install git && \
https://github.com/otnamrehus/lampp-haproxy.git && \
cd lampp-haproxy && \
chmod +x server.sh && \
./server.sh

