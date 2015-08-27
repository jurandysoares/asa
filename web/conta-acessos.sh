#!/bin/sh

# Ideia copiada de http://www.thegeekstuff.com/2010/03/awk-arrays-explained-with-5-practical-examples/

awk '{                     
ip[$1]++;
}
END{
for (host in ip)
print host, "acessou", ip[host], " vezes"
}
' /var/log/apache2/access.log
