# Projeto criado para automatizar o disable/enable do DNS Register nas interfaces dos hosts sempre que houver uma conexão/desconexão da VPN SSL pelo FortiClient (Fortinet/Fortigate)

Projeto criado para manter os scripts de forma distribuida, versionada e economizar tempo de operação.
Com este script é possível automatizar o disable/enable do DNS Register nas interfaces dos hosts sempre que houver uma conexão/desconexão da VPN SSL pelo FortiClient (Fortinet/Fortigate). Dessa forma teremos sempre apenas um registro DNS por host.

## Pré-requisitos e observações para utilização deste projeto :exclamation:

Para pleno funcionamento deste projeto, você precisará:
- Criar uma GPO que:
	- Copia o ps1 para o caminho abaixo de todas as estações (Uso File -> Replace):
			From - \\domain.local\NETLOGON\PowerShell\1-Scripts-HBSIS\FortiClient-DNS-Register.ps1
			To - C:\Windows\Scripts\FortiClient-DNS-Register.ps1
	- Cria uma tarefa agendada em todas as estações que roda o ps1 quando ocorre o event ID 4004

## Como Utilizar este projeto

**Na pasta "Scripts" há o Script principal:**<br />
1 - "FortiClient-DNS-Register.ps1"
Este script faz todo o processo de conexão e pesquisa nos Switches e a interação com o Active Directory.<br />
[Para acessar esse script clique aqui](/scripts/FortiClient-DNS-Register.ps1)