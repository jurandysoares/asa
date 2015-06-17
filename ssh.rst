==================
SSH (Secure SHell)
==================

:Ambiente: Ubuntu 14.04.2 LTS

Ssh (Secure Shell) é um programa para fazer login e executar comandos em
máquinas remotas. Ele fornece comunicação segura criptografada entre dois
dispositivos não-confiáveis em uma rede sem segurança. Conexões X11 e
portas TCP/IP arbitrárias também podem ser redirecionadas através do canal
seguro. Ele pode ser usado para fornecer a outras aplicações um canal de
comunicação seguro. 

(Saída do comando ``apt-cache show openssh-server``)

Cliente
=======

* No Linux: comando ``ssh``
* No Windows: Aplicativo `Putty <http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html>`_

Uso:: 
  
  ssh usuario@máquina
  
Servidor
========

:Porta: 22
:Processo: sshd
:Serviço: ssh
:Pacote: openssh-server

Verificação das Portas Abertas
------------------------------

Comando::

  netstat -tnl
  
Verificação dos Processos na Máquina
---------------------------------------

Comando::

  pstree -p | less
  
Gerenciamento do Serviço
---------------------------

* Verificar o estado::

    service ssh status

* Parar:: 

    sudo service ssh stop

* Iniciar:: 

    sudo service ssh start

Gerenciamento do Pacote
-----------------------

* Descrição do pacote::

    apt-cache show openssh-server
    
* Verificar instalação:: 

    dpkg -l openssh-server
    
* Listagem dos arquivos:: 

    dpkg -L openssh-server
    
* Instalação do pacote:: 

    sudo apt-get install openssh-server
