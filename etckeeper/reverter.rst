Reverter um arquivo mal configurado
===================================

#. sudo etckeeper vcs revert /etc/arquivo
#. sudo etckeeper vcs status::
	
	  arquivo.orig

#. sudo rm /etc/arquivo

Exemplo prático
----------------

#. sudo etckeeper vcs revert /etc/ssh/sshd_config
#. sudo etckeeper vcs status::

	  ? /etc/ssh/sshd_config.orig
	
#. sudo rm /etc/arquivo.orig	

PS: Agradecer a Áurica (Redes 2014) pelo exemplo ;-)
