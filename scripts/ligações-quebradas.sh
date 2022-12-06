#!/bin/bash

# Procurar ligações quebradas

sudo find / -not -path '/proc*' -not -path '/run*' -xtype l

#sudo find / -xtype l -not -path "/run"

#sudo find / -path '/proc' -prune -o -path '/run' -prune -o -xtype l

