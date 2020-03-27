#!/usr/bin/env bash

sudo su vagrant

cd /home/vagrant

mkdir -p Github

pushd Github

git clone https://github.com/philipperemy/tensorflow-1.4-billion-password-analysis

git clone https://github.com/skyblueee/sqli-labs-php7
git clone https://github.com/tuxotron/Audi_SQLi_lamp_container
git clone https://github.com/WebGoat/WebGoat
git clone https://github.com/bkimminich/juice-shop
git clone https://github.com/jehy-security/bwapp
git clone https://github.com/hclproducts/AltoroJ

mkdir -p bwapp-docker
pushd bwapp-docker

rm start-bwapp-docker.sh
cat > ./start-bwapp-docker.sh <<EOF
#!/usr/bin/env bash

docker run -d -p 80:80 raesene/bwapp;
echo "go to http://localhost:80/install.php to see BWAPP :)"

EOF

popd #bwapp-docker

popd

chown -R vagrant:vagrant /home/vagrant/Github
