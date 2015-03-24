Uso Básico do Mysql
=====================

Conectar-se à base de dados::

  mysql -u root -p
  
Então, será aberto o prompt do MySQL::

  mysql>
  
A partir de agora, digitaremos comandos do MySQL. Para criar uma base de dados e atribuirmos permissão total a um usuário, faríamos::

  CREATE DATABASE nome_da_base;
  GRANT ALL ON nome_da_base.* TO 'usuario'@'localhost' IDENTIFIED BY 'senha';
  FLUSH TABLES;
  \q
  
Troque:

  * nome_da_base
  * usuario
  * senha
  
pelos seus próprios valores.
