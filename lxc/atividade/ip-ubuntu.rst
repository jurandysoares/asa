:Objetivo: Configurar interface de rede em um contêiner Ubuntu

Criar, obter informações e iniciar um contêiner::

  sudo lxc-create -t ubuntu -n ubuntu-seunome
  sudo lxc-info -n ubuntu-seunome
  sudo lxc-start -d -n ubuntu-seunome
  sudo lxc-info -n ubuntu-seunome

Contectar ao contêiner::

  ssh ubuntu@IP
      Senha: ubuntu

Instalar o *vim* e editar o arquivo de configuração de interfaces de redes::

  sudo apt-get install vim
  sudo vim /etc/network/interfaces

Inserir no arquivo o conteúdo::

    auto eth0
    iface eth0 inet static
        address 10.0.3.2
        netmask 255.255.255.0
        gateway 10.0.3.1
        dns-nameservers 127.0.1.1
        
ESC :wq ENTER

Desabilitar a interface de rede::

  sudo ifdown eth0

Irá travar o terminal. E agora?

Fechar o terminal existente e abrir um novo. Então, acoplar-se ao contêiner, habilitar a interface de rede e verificar se um endereço IP foi atribuído corretamente à interface de rede *eth0*::

  sudo lxc-attach -n ubuntu@seunome
  sudo ip addr show dev eth0
  sudo ifup eth0
  sudo ip addr show dev eth0

Em vez de desabilitarmos a interface de rede, conforme foi feito um pouco acima, poderíamos simplesmente reiniciar o contêiner (``sudo shutdown -r now``). De qualquer sorte, é importante aprender a se acoplar a um contêiner, conforme foi demonstrado acima.
  
  
