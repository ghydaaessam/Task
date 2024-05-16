obj-m += assig1.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

task:
	sudo insmod assig1.ko
	sleep 3s
	cat /proc/jiffies
	sudo rmmod assig1.ko
