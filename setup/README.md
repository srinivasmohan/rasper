Initial setup
=============

Download from Download jasper prebuilt raspbian image from http://sourceforge.net/projects/jasperproject/files/jasper-disk-image.tar.gz/download

Formatted SD card as FAT32.

Image to SD card using http://computers.tutsplus.com/articles/how-to-flash-an-sd-card-for-raspberry-pi--mac-53600

```

/dev/disk0
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:      GUID_partition_scheme                        *500.3 GB   disk0
   1:                        EFI EFI                     209.7 MB   disk0s1
   2:                  Apple_HFS Macintosh HD            499.4 GB   disk0s2
   3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3
/dev/disk1 ----> This is the SD card - The name may differ on your system!
   #:                       TYPE NAME                    SIZE       IDENTIFIER
   0:     FDisk_partition_scheme                        *4.0 GB     disk1
   1:                 DOS_FAT_32 RASPER                  4.0 GB     disk1s1
[smohan@Srinivasans-MacBook-Pro Rasper]$ diskutil unmountdisk /dev/disk1
Unmount of all volumes on disk1 was successful

```

Sudo and dd image to SD card.

```

[smohan@Srinivasans-MacBook-Pro Rasper]$ sudo dd if=img/jasper-disk-image.img of=/dev/disk1 bs=2m
1862+0 records in
1862+0 records out
3904897024 bytes transferred i

```


