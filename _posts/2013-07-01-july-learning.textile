---
layout: post
title: "What I Learned in July"
---

h1. {{ page.title }}

h2. 2013 July 29

Installing CentOS 6.4 (x86_64) on my Dell Precision T3400:

 * RAID 1
 * 4GB usb drive
 * CentOS 6.4 x86_64 minimal install ISO
 * CentOS DVD1 ISO
<hr>
1. Install the ISO on the USB drive
2. Turn off automatic RAID in the BIOS
3. Follow "instructions":http://wiki.centos.org/HowTos/SoftwareRAIDonCentOS5
4. Install always choked at "Missing ISO 9660" error message and people said to copy the CentOS DVD1 ISO into into the usb drive
5. Mount the iso "like such":https://www.centos.org/modules/newbb/viewtopic.php?topic_id=32286
6. My usb drive was too small, and I couldn't finish downloading the 4GB file, so CentOS complained that the ISO was corrupted
7. Then I had the option to Edit the repository, so I changed it to point to a CentOS mirror (http://mirrors.versaweb.com/centos/6.4/os/x86_64/)
8. Wait patiently for install to finish
9. Reboot with success
