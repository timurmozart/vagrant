while IFS=: read u x nn rest; do if [ $nn -ge 500 ]; then echo "YOURSTRONGPASSWORD" | passwd --stdin $u; fi done  < /etc/passwd
