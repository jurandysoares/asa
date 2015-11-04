Cópia Remota de Arquivos do Linux
==================================

Criar um arquivos de credenciais (Ex.: /home/instrutor/.credenciais) ::

  user=bla
  pass=ble
  dom=bli
  
Substitur:

* bla: nome do usuário na máquina Windows
* ble: senha do usuário descrito acima
* bli: domínio a qual pertence as máquinas

Detalhe: não deixe espaço antes e depois do sinal de igual (**=**).

Criar uma lista de PCS para se conectar remotamente (Ex.: nome de planetas)::

  pcs="mercurio venus terra marte jupiter saturno urano netuno plutao"
  
Certo, plutão não é mais planeta. Vamos deixá-lo na lista mesmo assim.

Suponhamos que ``/atmosfera`` seja o nome do compartilhamento em cada uma das máquinas. Para montarmos 
a pasta ``atmosfera`` compartilhada de cada um dos planetas, faríamos::

  for maquina in $pcs
  do
    echo "--- ${pc} ---"
    PM="/mnt/atmosfera/${pc}"
    sudo mkdir -p ${PM}
    sudo mount -o uid=${UID},credentials=/home/instrutor/.credenciais //${pc}/atmosfera ${PM}
    mkdir -p ${PM}/destino/remoto
    cp /caminho/de/um/arquivo/local ${PM}/destino/remoto/
    sudo umount ${PM}
    sudo rmdir ${PM}
  done
  
Explicando os comandos entre o **do** e o **done**:

#. Exibe o nome da máquina remota
#. Cria uma variável para armazenar o caminho do ponto de montagem (PM)
#. Cria uma pasta que servirá de ponto de montagem (PM)
#. Monta a pasta compartilhada pela máquina remota no ponto de montagem criado anteriormente
#. Cria uma pasta remota para onde copiar o arquivo 
#. Copia um arquivo local para a pasta criada no item anterior
#. Desmonta o ponto de montagem
#. Remove a pasta criada para servir como ponto de montagem

Detalhe: A opção ``"uid=${UID}"`` passada para o comando ``mount`` vai permitir que o usuário corrente manipule 
a pasta remota (criar novas pastas, copiar arquivos, excluir arquivos, etc).


