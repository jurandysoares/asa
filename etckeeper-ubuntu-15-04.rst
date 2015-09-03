============================================
Guardião do Diretório /etc no Ubuntu 15.04
============================================

:Instrutor: Jurandy Soares
:Data: 3 de setembro de 2015

Instalar o etckeeper e mercurial::

    sudo apt-get install etckeeper mercurial

Editar o arquivo de configuração do etckeeper::

    sudo vim /etc/etckeeper/etckeeper.conf 

* Descomentar::

    VCS="hg"

* Comentar::

    #VCS="bzr"

Fazer as configurações iniciais do etckeeper::

    sudo etckeeper init
    sudo etckeeper commit "Primeira importação"

Fazer alguma configuração que altere o diretório /etc::

    sudo adduser seunome
    sudo adduser seunome sudo
    sudo etckeeper vcs status
    sudo etckeeper vcs diff nome_arquivo

A diferença não é exibida com cores. Para fazer isso, editar o arquivo de configuração do Mercurial::

    hg config --edit

Eventualmente será perguntado sobre qual editor de texto você deseja utilizar. 
Faça sua escolha (Por exemplo, digite **1** seguido de **<ENTER>** para selecionar a primeira opção).

Configurar o nome do usuário::

    username = Nome Sobrenome <seuemail@gmail.com>

Descomentar::

    pager =
    progress =  
    color =
    
.. admonition:: Observação

    As definições acima devem ser feitas no início da linha, isto é, se houver espaço(s) em branco ou tabulação(ões) antes de *pager*, *progress* e *color*, dará errado a execução dos próximos comandos.

Verificar o que foi alterado no diretório /etc::
        
    sudo etckeeper vcs diff

Registrar as alterações::

    sudo etckeeper commit "Criação do usuário*seunome*"

Ver o registro das alterações::

    sudo etckeeper vcs log

Habilitar o servidor Web para ver o repositório via Web::

   sudo etckeeper vcs serve

Então, abra em um navegador Web o endereço http://seu_IP:8000
