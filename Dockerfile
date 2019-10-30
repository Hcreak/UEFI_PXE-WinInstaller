FROM centos

RUN yum -y install epel-release iproute
RUN yum -y install dnsmasq lighttpd
# RUN yum -y upgrade

# RUN yum -y install python python-devel python2-pip nginx gcc
# RUN pip install --upgrade pip
# RUN pip install uwsgi flask


RUN mkdir /netboot
RUN mkdir /netboot/boot
ADD run /netboot/run
RUN mkdir /netboot/iso

ADD ipxe/ipxe.efi /netboot/ipxe.efi
ADD ipxe/wimboot /netboot/boot/wimboot
ADD ipxe/BCD /netboot/boot/BCD
ADD ipxe/bootmgfw.efi /netboot/boot/bootmgfw.efi
ADD ipxe/BOOT.SDI /netboot/boot/BOOT.SDI
ADD wimscript/startnet.cmd /netboot/boot/startnet.cmd


RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime

RUN chmod +x /netboot/run/start.sh
WORKDIR /netboot/run
CMD ["./start.sh"]