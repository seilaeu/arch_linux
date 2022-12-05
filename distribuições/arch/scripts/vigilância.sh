#!/bin/bash

# Verificar se algum serviço do systemd falhou:

echo
echo
echo

$ systemctl --failed

echo
echo
echo

# Procurar erros de alta prioridade no journal do systemd:

$ journalctl -p 3 -b

echo
echo
echo
