#!/bin/bash

# Verificar se algum serviço do systemd falhou:

echo
echo
echo

systemctl --failed

echo
echo
echo

sleep 7

# Procurar erros de alta prioridade no journal do systemd:

journalctl -p 3 -b

echo
echo
echo
