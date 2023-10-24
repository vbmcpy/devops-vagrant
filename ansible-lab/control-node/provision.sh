#/bin/sh

echo "Configurando Repositório EPEL"
sudo yum install epel-release vim -y

echo "Instalando Ansible"
sudo yum install ansible net-tools -y

cat <<EOT >> /etc/hosts
192.168.0.2 control-node
192.168.0.3 app01
192.168.0.4 db01
EOT