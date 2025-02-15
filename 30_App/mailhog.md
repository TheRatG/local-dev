# MailHog

Links
* https://github.com/mailhog/MailHog
* https://www.lullabot.com/articles/installing-mailhog-for-ubuntu


MailHog is an email testing tool for developers:
* Configure your application to use MailHog for SMTP delivery
* View messages in the web UI, or retrieve them with the JSON API
* Optionally release messages to real SMTP servers for delivery

### Install Ubuntu

* install
``` bash
sudo apt-get install golang-go
mkdir gocode
echo "export GOPATH=$HOME/gocode" >> ~/.profile
source ~/.profile
go get github.com/mailhog/MailHog
sudo cp $GOPATH/bin/MailHog /usr/local/bin/mailhog
```
* service, create file `/etc/systemd/system/mailhog.service`
* enable service
```bash
sudo systemctl enable mailhog
sudo systemctl start mailhog
```
* configure php
```ini
sendmail_path = /usr/sbin/sendmail -S mail:1025
```