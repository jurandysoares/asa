=============================
Guardião do Diretório */etc*
=============================

Instalar::

    sudo apt-get install etckeeper
    
Configurar::

    sudo vim /etc/etckeeper/etckeeper.conf
    
Comente o VCS="bzr" e descomente o VCS="hg"::

    # The VCS to use.
    VCS="hg"
    #VCS="git"
    #VCS="bzr"
    #VCS="darcs"
    
Salve e saia do vim:

* <ESC>
* :x
* <ENTER>

Inicialize::

    sudo etckeeper init
    
Faça o primeiro registro::

    sudo etckeeper commit "Primeira importação"    
