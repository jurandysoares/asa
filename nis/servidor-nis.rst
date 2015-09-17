Servidor NIS
============

:Ambiente: Ubuntu 15.04

1. Instalar o pacote *nis* [#]_

2. Editar ``/etc/default/nis``, definindo as variáveis::

    NISSERVER=true
    NISCLIENT=false
    
3. Definir seudominio em ``/etc/defaultdomain``

4. Criar mapas do NIS::

    cd /var/yp
    sudo domainname seudominio
    sudo /usr/lib/yp/ypinit -m
        <control D>
    sudo ypserv
    sudo /usr/lib/yp/ypinit -m
        <control D>
        
5. Definir as redes seguras em ``/etc/ypserv.securenets``, como exemplo::

    # Always allow access for localhost
    255.0.0.0	127.0.0.0

    # This line gives access to everybody. PLEASE ADJUST!
    192.168.0.0	255.255.255.0
    
6. Fazer o servidor NIS seus arquivos de configuração para que as configurações acima tenham efeito.    
        
.. [#] Este serviço é arcáico e inseguro. Recomendo seu uso somente em pequenos laboratórios de informática com Linux.
