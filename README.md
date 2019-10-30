# UEFI_PXE-WinInstaller
用于容器部署自动化网启安装Windows系统  内置分区工具

## Docker Test
```bash
docker build -t pxetest .
docker run -it --rm --net host -v /netboot/iso:/netboot/iso -v /netboot/boot/BOOT.WIM:/netboot/boot/BOOT.WIM --name pxetest pxetest /bin/bash

docker run -d --net host -v /netboot/iso:/netboot/iso -v /netboot/boot/BOOT.WIM:/netboot/boot/BOOT.WIM --name pxetest pxetest
docker logs pxetest

#必须关防火墙
systemctl stop firewalld
```

