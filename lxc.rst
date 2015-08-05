LXC
===

Procurar pacotes *lxc*::

  apt-cache search lxc

Instalar pacotes necessários para utilizar o *lxc*::

  sudo apt-get install lxc lxc-templates lxctl
  
Onde:

  * *lxc* : Ferramentas para contêineres Linux a nível de usuário
  * *lxc-templates* : Modelos de contêineres Linux
  * *lxctl* : Utilitários para gerenciar LXC

Criação do primeiro contêiner Linux::
  
  sudo lxc-create --template ubuntu --name ubuntu-asa
  
Onde:

  * --template ubuntu : especifica o modelo de contêiner
  * --name ubuntu-asa : especifica o nome do novo contêiner

Listagem amigável dos contêineres do sistema::

  $ sudo lxc-ls --fancy
  NAME        STATE    IPV4  IPV6  AUTOSTART  
  ------------------------------------------
  ubuntu-asa  STOPPED  -     -     NO       
  
Clonagem de um contêiner::

  $ sudo lxc-clone -o ubuntu-asa -n pc-jurandy
  Created container pc-jurandy as copy of ubuntu-asa

Inicialização de um contêiner no modo de serviço (-d : daemon)::

  $ sudo lxc-start -d -n pc-jurandy
  
Obtenção de informações sobre o contêiner de nome *pc-jurandy*::

  $ sudo lxc-info -n pc-jurandy
  Name:           pc-jurandy
  State:          RUNNING
  PID:            16868
  IP:             10.0.3.93
  CPU use:        1.18 seconds
  BlkIO use:      144.00 KiB
  Memory use:     8.07 MiB
  KMem use:       0 bytes
  Link:           vethXLRPPR
   TX bytes:      2.41 KiB
   RX bytes:      6.70 KiB
   Total bytes:   9.11 KiB
  $ 

* Como criar um contêiner do Debian::

  sudo lxc-create -t debian -n pc-name -- -r wheezy
