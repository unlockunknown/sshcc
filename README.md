#SSH-SSHFS SHELL
Este basico shell tem como objetivo acabar com rotinas de login repetidas, onde apenas configura três variáveis e irá funcionar. Hoje se encontra em Beta na versão 0.0.1


## Como usar?
Basta ir na pasta que está o arquivo ssh-sshfs.sh e digitar
<pre>
	<code>
		./ssh-sshfs.sh
	</code>
</pre>

Irá pedir:
* __Usuário__ Seu usuário
* __Host__ Máquina para se conectar
* __Path__ Para remote SSHFS


Depois de ter passado usuário, host e path ele pedirá o que você deseja fazer, entre elas existem três opções
* __ssh__ Apenas irá se conectar no servidor via protocolo ssh
* __sshfs__ Criara um remote do servidor em sua maquina e sincroniza no path em que vc passou
* __ssh-sshfs__ Possibilida executar as duas opções anteriores com um único comando



