===================
Página Temporária
===================

O proprietário deste sítio eletrônico ainda não publicou nenhuma página web. Por gentileza, retorne mais tarde.

Você deve substituir esta página com suas próprias páginas web o quanto antes.
---------------------------------------------------------------------------------

Ao menos que você tenha alterado as configurações, seu novo servidor está configurado da seguinte forma:

* Arquivos de configuração podem ser encontradas em ``/etc/lighttpd``. Por gentileza, leia o arquivo ``/etc/lighttpd/conf-available/README``

* A raiz dos documentos (*DocumentRoot*), que é o diretório sobre o qual todos seus arquivos HTML deverão existir, está configurado para ``/var/www/html``

* Scripts CGI são procurados em ``/usr/lib/cgi-bin``, que é onde os pacotes do Ubuntu irão colocar seus scripts. Você pode habilitar o módulo cgi ao utilizar o comando ``lighty-enable-mod cgi``
* Os arquivos de registro (log) são postos em ``/var/log/lighttpd`` e serão rotacionados semanalmente. A frequência de rotação pode ser facilmente alterada ao editar o arquivo ``/etc/logrotate.d/lighttpd``

* O índice padrão do diretório é ``index.html``, significando que as solicitações para o diretório ``/foo/bar/`` irá oferecer o conteúdo do arquivo ``/var/www/html/foo/bar/index.html`` se ele existir (assumindo que ``/var/www/html`` é a raiz de documentos [*DocumentRoot*]).
    
* Você pode habilitar os diretórios dos usuários ao executar o comando ``lighty-enable-mod userdir``




