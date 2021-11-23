#!/bin/bash

function fazer_backup {
    backup=/etc/
    backup_feito=/.backup/

    tempo=$(date +%Y%b%d-%H%M)
    nome_arquivo=etc-$tempo.tgz

    tar -zcvf $backup_feito$nome_arquivo $backup
    echo "Esses são todos os backup:"
    ls -l $backup_feito
}
contator=1
while $contador > 0
do
    fazer_backup
    sleep 3600
    contador=$contador + 1
done