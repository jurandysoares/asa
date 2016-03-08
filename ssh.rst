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

Uso
===

O SSH pode ser utilizado para:

* Acesso remoto seguro (Ex.: ``ssh usuario@servidor``)
* Executar comandos remotos (Ex.: ``ssh usuario@servidor comando``)
* Transferência remota de arquivos (Ex.: ``sftp usuario@servidor; scp /caminho/local/ usuario@servidor:/caminho/remoto``)
* Executar aplicações gráficas remotamente (``ssh -XY usuario@servidor; aplicação gráfica &``)
* Criar túnel/proxy socks (``ssh -D 1080 usuario@servidor``)

Cliente
=======

* No Linux: comando ``ssh``
* No Windows: Aplicativo `Putty <http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html>`_

Uso:: 
  
  ssh usuario@máquina
  
Servidor
========

:Porta: 22/TCP
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
    
Bloqueio de conexões indesejadas
---------------------------------

Utilize ou o DenyHosts (obsoleto, mas mais simples) ou o Fail2ban.

* DenyHosts: `How To Install DenyHosts On Ubuntu 14.04 Server <http://www.liberiangeek.net/2014/10/install-denyhosts-ubuntu-14-04-server/>`_
* Fail2ban: `How To Protect SSH with Fail2Ban on Ubuntu 14.04 <https://www.digitalocean.com/community/tutorials/how-to-protect-ssh-with-fail2ban-on-ubuntu-14-04>`_

