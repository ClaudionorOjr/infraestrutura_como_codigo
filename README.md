# Jornada DevOps com AWS - Impulso

> Bootcamp gratuito promovido pela dio.

## Modulo Linux

**Desafio 01: Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões**

PASSO A PASSO:

1. Excluir diretórios, arquivos, grupos e usuários criados anteriormente no curso; ✅
2. Todo provisionamento deve ser feito em um arquivo do tipo Bash Script; ✅
3. O dono de todos os diretórios criados será o usuário root; ✅
4. Todos os usuários terão permissão total dentro do diretório publico; ✅
5. Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório; ✅
6. Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem. ✅

**Comentários:**

- Além do passo a passo pedido no desafio, adicionei códigos para a expiração da senha padrão criada para cada usuário, para que alterem a senha em seu primeiro acesso.
- Adicionei um simples comentário na criação do usuário identificando a qual setor pertence.

### Info

> Alterações para execução do script.

Alterar as permissões do script `iac.sh`, dando permissão de execução.

- Necessário ter privilégios de usuário root para realizar a alteração.

```ssh
# Adicionando permissão de execução
$ chmod +x iac.sh
```
