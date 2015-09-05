====================
Servidor Proxy Squid
====================

Instalação::

  sudo apt-get install squid3

Pré-configuração (remoção dos comentários e das linhas em branco)::

  sudo sed -i -e '/#/d' -e '/^$/d' /etc/squid3/squid.conf 
  
Configuração (acrescentar)::

  acl labredes src 192.168.0.0/24
  http_access allow labredes

Configuração (trocar)::

  http_port 3128

Por::

  http_port 8080

Força o serviço fazer uma nova leitura do arquivo de configuração::

  sudo systemctl reload squid3
  
Testar em um navegador Web.

Verificar em tempo real quem tem acessado seu servidor Proxy::

  sudo tail -f /var/log/squid3/access.log
