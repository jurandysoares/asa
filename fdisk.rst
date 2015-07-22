==========
Partições
==========

:Data: 22 de julho de 2015
:Ambiente: site <http://koding.com> ou qualquer distribuição Linux

Objetivos: 

* Aprender a listar, criar e excluir partições com o comando ``fdisk``.
* Trocar o tipo de partição com o comando ``fdisk``.

Criar um disco virtual de 1GB de nome ``hdv.img``::

    dd if=/dev/zero of=hdv.img bs=1G count=1
    
Descrevendo os argumentos do comando *dd*:

* if: input file (arquivo de entrada)
* of: output file (arquivo de saída)
* bs: block size (tamanho do bloco)
* count: count (contador)

Editar as partições do disco virtual::

    fdisk hdv.img

Dentro do fdisk, executar os comandos::

    m(enu)
    p(rint)
    n(ova)
    p(primária)
    1(número da partição)
    <ENTER> (aceitar o primeiro setor)
    +100M (tamanho da partição)
    p(print)
    
Crie agora uma 2ª, 3ª e 4ª partição seguindo o mesmo roteiro.

Lembre-se de gravar as alterações realizadas::

    w(rite)
    q(uit)

Uma vez de volta ao seu *shell*, você poderá listar as partições criadas com o comando::

    fdisk -l hdv.img
    
Os principais comandos do ``fdisk`` são:

* m(menu)
* p(rint)
* n(ew)
* t(ype)
* l(ist)
* w(rite)
* q(uit)

Desafio: Trocar o tipo das partições criadas.

Um primeiro exemplo::

    fdisk hdv.img
    t(tipo)
    1(número da partição)
    l(listar os tipos de partições disponíveis no fdisk)
    7(código para HPFS/NTFS)
    p(listar tabela de partições)
    w(escrever)
    
