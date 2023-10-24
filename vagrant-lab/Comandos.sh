# Inicializando o Diretório
sudo vagrant init

# Subindo a máquina
sudo vagrant up

# Destruindo a Máquina
sudo vagrant destroy # Pede confirmação
sudo vagrant destroy -f # Não pede confirmação


# Acessando via SSH
sudo vagrant ssh

# Provisionar a máquina pelo VirtualBox 6.1 - Ubuntu 22.04
➜ sudo vagrant up --provider virtualbox

# Validar quais portas estão ouvindo e quais aplicações tcp / udp
netstat -tuln | grep 8080


