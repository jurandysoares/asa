===================================================
DNS (Servidor de Nomes de Domínio para Internet)
===================================================

:Ambiente: Ubuntu 14.04.2 LTS

Uso
===

O DNS pode ser utilizado para:

* Associar nome de máquina a endereço(s) IP [RR A]
* Associar endereço IP a nome de máquina [RR PTR]
* Associar apelido a nome de máquina [RR CNAME]
* Atribuir o(s) nome(s) do(s) servidor(es) de e-mail do domínio [RR MX]
* Atribuir o(s) nome(s) do(s) servidor(es) de nome do domínio [RR NS]
* Definir o nome da máquina que servirá de início de autoridade [RR SOA]
* Veja mais na Wikipedia, em Inglês: `List of DNS record types <https://en.wikipedia.org/wiki/List_of_DNS_record_types>`_

Cliente
=======

* nslookup
* dig

Uso
---
  
Indiretamente, toda aplicação utiliza um cliente DNS para resolver nomes. 
Por exemplo, quando se abre uma página da Web ou quando se envia uma mensagem por e-mail. 
  
Diretamente, podemos testar o DNS por meio dos comandos:

* nslookup
* dig
  
Servidor
========

:Porta: 53/UDP
:Processo: named
:Serviço: bind9
:Pacote: bind9

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

    service bind9 status

* Parar:: 

    sudo service bind9 stop

* Iniciar:: 

    sudo service bind9 start

Gerenciamento do Pacote
-----------------------

* Descrição do pacote::

    apt-cache show bind9
    
* Verificar instalação:: 

    dpkg -l bind9
    
* Listagem dos arquivos:: 

    dpkg -L bind9
    
* Instalação do pacote:: 

    sudo apt-get install bind9
