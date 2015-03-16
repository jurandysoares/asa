====================================
Acesso a um servidor HTTP via telnet
====================================

:Pergunta: Como acessar um servidor Web via telnet?

:Resposta: Simples, faça::

  telnet <servidor> <porta>

Exemplo:

  telnet sulina.ifrn.edu.br 80
  
Onde:

  * <servidor> é o nome de domínios totalmente qualificados (FQDN) ou o endereço IP do servidor
  * <porta> é a porta do servidor Web, que geralmente é a porta 80
  
Uma vez estabelecida a conexão, poder-se-á visualizar algo como::

  Trying 200.137.1.100...
  Connected to sulina.ifrn.edu.br.
  Escape character is '^]'.

Podemos então digitar os comandos do protocolo HTTP, por exemplo::

  GET /sct/certificados/ HTTP/1.1
  HOST: 200.137.1.100

Digite duas vezes a tecla <ENTER> depois de digitar a linha que começa com HOST.

Explicando a primeira linha, temos:

 * Obtenha: GET
 * URI requisitada: /sct/certificados/ 
 * protocolo e versão: HTTP/1.1

Obteremos a seguinte resposta::

  HTTP/1.1 400 BAD REQUEST
  Date: Mon, 16 Mar 2015 16:50:29 GMT
  Server: Apache/2.4.7 (Ubuntu)
  X-Frame-Options: SAMEORIGIN
  Connection: close
  Transfer-Encoding: chunked
  Content-Type: text/html; charset=UTF-8
  
  1a
  <h1>Bad Request (400)</h1>
  0
   
Experimente novamente fazer o telnet na porta 80 da sulina, só que agora inserindo "HOST: sulina.ifrn.edu.br" logo após o comando GET.
         
