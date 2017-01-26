#!/bin/bash

# @author: Robson Gomes de Araújo Júnior
# @description: Logar de uma forma mais automatizada
# @version: beta 0.0.1

#Variaveis de configuracao do usuario e Servidor
echo "User: "
read CONF_USER


echo "Host: "
read CONF_MACHINE


echo "Path: "
read CONF_REMOTEPATH


#Configuracao para remoto
CONF_REMOTE="-o uid=1000 -o gid=1000 -o allow_other"


# ssh, se conecta apenas ssh;
# sshfs, faz o remote;
# ssh-sshfs, conecta via ssh e seta o remote;
echo "O que voce deseja usar? [ssh, sshfs, ssh-sshfs]"
read TYPESERVICE


case $TYPESERVICE in
	"ssh")	echo "SSH Connecting..."
			echo "Server -> ${CONF_MACHINE}"
			echo "User -> ${CONF_USER}"
			ssh ${CONF_USER}@${CONF_MACHINE} ;;
	
	"sshfs")	echo "Creating SSHFS sync:"
				echo "Server -> ${CONF_MACHINE}"
				echo "User -> ${CONF_USER}"
				echo "Path -> ${CONF_REMOTEPATH}"
				sudo sshfs ${CONF_USER}@${CONF_MACHINE}: ${CONF_REMOTEPATH} ${CONF_REMOTE} ;;
	
	"ssh-sshfs")echo "Creating SSHFS sync..."
				echo "Server -> ${CONF_MACHINE}"
				echo "User -> ${CONF_USER}"
				echo "Path -> ${CONF_REMOTEPATH}"
				sudo sshfs ${CONF_USER}@${CONF_MACHINE}: ${CONF_REMOTEPATH} ${CONF_REMOTE}
				
				echo "SSH Connecting..."
				echo "Server -> ${CONF_MACHINE}"
				echo "User -> ${CONF_USER}"
				ssh ${CONF_USER}@${CONF_MACHINE} ;;
	
	*) echo "Sorry... Invalid option" ;;
esac
