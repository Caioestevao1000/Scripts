#!/bin/bash
echo "Bem-vindo ao Menu Pricipal"
echo ""
echo "!!!Execute o programa em modo 'root' ou com 'sudo' exeplo: sudo $0!!!"
echo ""
echo "1 - Backups - Em Construção"
echo "2 - Diretórios"
echo "3 - Gerenciamento"
echo "4 - Grupos"
echo "5 - Serviços"
echo "6 - Usuários"
echo "7 - Sair"
echo "Digite um número de acordo com a lista:"

##echo "Script em evolução acesse: http://gg.gg/scripts-ws"

read resp
case $resp in
"1")
	echo "1 - Criar Backup"
	echo "2 - Excluir Backup"
	echo "3 - Sair"
	echo "Digite um número de acordo ao desejado:"
	read resp1 
        case $resp1 in
        "1")
           	exit
        ;;

        "2")
                exit
        ;;

        "3")
                exit
        ;;
        esac

;;
"2")
        echo "1 - Ver Diretórios"
        echo "2 - Criar Diretório"
	echo "3 - Excluir Diretório"
        echo "4 - Sair"
	echo "Digite um número de acordo ao desejado:"
	read resp1 
        case $resp1 in
        "1")
		echo "Vendo Diretórios..."
                pwd
      		ls
	;;
        "2")
                echo "Digite o nome do Diretório a ser criado:"
		read nome
		mkdir $nome
        ;;
        "3")
		echo "Digite o nome do Diretório a Ser excluído:"
                read name
		rm -rf $name
        ;;
        "4")
                exit
        ;;
        esac
;;
"3")
        echo "1 - Ver Usuários"
	echo "2 - Ver informação de 1 Usuário"
        echo "3 - Ver Serviços"
	echo "4 - Ver Grupos Criados"
        echo "5 - Sair"
	echo "Digite um número de acordo ao desejado:"
	read resp1 
        case $resp1 in
	"1")
                echo "Vendo os Usuários..."
                cat /etc/passwd
		echo "" 
		cat /etc/passwd| cut -d\: -f1
        ;;
	"2")
		echo "Digite o nome do usuário:"
		read user
		id $user
	;;
        "3")
                echo "Vendo Serviços Ligados..."
                netstat -nlpt
        ;;
	"4")
		cat /etc/group
	;;
	"5")
		exit
	;;
	esac
;;
"4")
        echo "1 - Criar Grupo"
        echo "2 - Excluir Grupo"
        echo "3 - Sair"
	echo "Digite um número de acordo ao desejado:"
	read  resp1
	case $resp1 in
	"1")
		echo "Digite o nome do Grupo:"
		read $grupo
		addgroup $grupo
	;;
	"2")
		echo "Digite o nome do grupo:"
		read grup
		groupdel $grup
	;;
	esac
;;
"5")
        echo "1 - Serviços Ligados"
        echo "2 - Ligar Serviço"
	echo "4 - Desligar Serviço"        
	echo "5 - Sair"
	echo "Digite um número de acordo ao desejado:"
	read resp1 
        case $resp1 in
        "1")
		echo "Vendo Serviços Ligados..."
                netstat -nlpt
        ;;

        "2")
                echo "Digite o nome do Serviços a ser ligado:"
		read s
		service $s restart
		ps aux | grep $s
        ;;

        "3")
		echo "Digite o nome do Serviços a ser Desligado:"
		read s
                service $s stop
        ;;

        "4")
                exit
        ;;
        esac

;;
"6")
        echo "1 - Criar Usuário"
        echo "2 - Excluir Usuário"
	echo "3 - Ver Usuários Existentes"
        echo "4 - Adicionar Usuário em 1 Grupo"
	echo "5 - Sair"
	echo "Digite um número de acordo ao desejado:"
	read resp1
	case $resp1 in
	"1")
		echo "Digite o nome do Usuário (Para Criar):"
		read user
		adduser $user
	;;

	"2")
		echo "Digite o nome do Usuário (para excluir): "
		reas user
		deluser $user
	;;

	"3")
		echo "Vendo os Usuários..."
		cat /etc/passwd
		echo ""
		cat /etc/passwd| cut -d\: -f1
	;;
	"4")
                echo "Digite o nome do grupo:"
                read grup
                echo "Digite o nome do usuário que será add em um grupo:"
                read user
		adduser $user --ingroup $grup
	;;
	"5")
		exit
	;;
	esac
;;
"7")
	exit
;;
esac








