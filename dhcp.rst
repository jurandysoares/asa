=====================================================
Protocolo de Configuração Dinâmica de Hospedeiros
=====================================================

:Pacote: isc-dhcp-server
:Serviço: isc-dhcp-server
:Configuração: /etc/dhcp/dhcpd.conf
:Porta/Servidor: 67/UDP
:Porta/Cliente: 68/UDP

Roteiro:

#. Configurar um `endereço IP estático <https://www.debian.org/doc/manuals/debian-reference/ch05.pt.html#_the_network_interface_with_the_static_ip>`_ para interface de rede que distribuirá endereços IP;
#. Instalar e configurar o pacote em uma máquina virtual Ubuntu servidor;
#. Testar uma máquina virtual cliente com Windows (XP, 7, ...) ou Ubuntu Desktop.

No servidor, após a instalação e configuração do pacote, é interessante analizar os registros do sistema, 
tanto para descobrir eventuais erros no arquivo de configuração, quanto para compreender melhor o protocolo::

  sudo tail -f /var/log/syslog | grep dhcp
  
Ou fazer a análise via tcpdump::

  sudo tcpdump udp port bootps or udp port bootpc
  
Dica para esconder os comentários e linhas em branco do arquivo de configuração::

  egrep -v '^(#|$)'  /etc/dhcp/dhcpd.conf
  
Links:

* `Servidor Debian | 3.2.2 Servidor DHCP <http://servidordebian.org/pt/squeeze/intranet/dhcp/server>`_
* `Debian: DHCP_Server <https://wiki.debian.org/DHCP_Server>`_ 
  
  
  
  
