# PiPoE-LibreElec
PiPoE scripts &amp; how-to adapted for LibreElec. Inspired by https://github.com/PiSupply/PiPoE

## 1) install "Raspberry Pi Tools" addon for kodi

Navigate in menu : `Extensions > Programs`.

Select *Raspeberry Pi tools* and install it.

## 2) connect to your LibreElec using SSH and create the directory for the PiPoE scripts :

```bash
ssh root@yourkodi
mkdir /storage/.config/pipoe
```

## 3) download the files from this github, to your client computer :

* pipoe.service
* removepower.sh
* sendturnoffsignal.sh

## 4) using scp, put files in kodi from your client computer :

```bash
scp pipoe.service root@yourkodi:/storage/.config/system.d/pipoe.service
scp removepower.sh root@yourkodi:/storage/.config/pipoe/removepower.sh
scp sendturnoffsignal.sh root@yourkodi:/storage/.config/pipoe/sendturnoffsignal.sh
```

## 5) in LibreElec, enable the PiPoE service :

```bash
systemctl enable pipoe
```

## 6) reboot LibreElec, it's done !

Next time you will shutdown LibreElec, it will poweroff the PiPoE.
