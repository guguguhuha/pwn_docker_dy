#!/usr/bin/sh
export run_binary_cmd="./esp_learn"
export image_name="test/pwn:esp_learn"
export run_port=9999

sudo sed -i "s%run_binary_cmd%$run_binary_cmd%g" ./ctf.xinetd

sudo docker build -t $image_name .

unset run_binary_cmd

# sudo docker run -d -p $run_port:9999 $image_name
unset image_name
