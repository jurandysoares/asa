Syslog
======

Diretório clássico dos arquivos de log
----------------------------------------

* `/var/log`


Visualização de Logs
-----------------------

* Maneira clássica: Ex.: `sudo tail -f /var/log/syslog`
* Maneiras mais aprimoradas (coloridas):

    * Multitail: Ex.: `sudo multitail /var/log/syslog`
    * `CCZE <http://lintut.com/colorize-log-files-on-linux-using-ccze-tool/>`_: Ex.: `sudo tail -f /var/log/syslog | ccze -A`
    * `LNAV <http://lintut.com/install-and-use-log-file-navigator-lnav-in-ubuntu-and-centos-linux/>`_: `sudo lnav`

Links
-----

* `Guia Foca GNU/Linux Capítulo 6 - Arquivos e daemons de Log <http://www.guiafoca.org/cgs/guia/avancado/ch-log.html>`_
* `Syslog Tutorial <http://www.9tut.com/syslog-tutorial>`_
* `The Linux Tutorial: Syslogd <http://www.linux-tutorial.info/modules.php?name=MContent&pageid=57>`_


