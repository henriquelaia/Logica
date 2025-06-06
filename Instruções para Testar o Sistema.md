# Instruções para Testar o Sistema

Este documento contém instruções detalhadas para testar o sistema de consulta de clubes de futebol com o predicado pais corrigido.

## Arquivos Necessários

1. **sistema.pl**: Contém a lógica principal do sistema pericial, modificado para perguntar primeiro sobre o país.
2. **clubes.pl**: Contém a base de conhecimento dos clubes, com o predicado pais corretamente implementado em cada clube.

## Passos para Testar

### 1. Preparação

Certifique-se de que ambos os arquivos estão no mesmo diretório:
- `sistema.pl`
- `clubes.pl`

### 2. Iniciar o SWI-Prolog

Abra um terminal e inicie o SWI-Prolog:

```
swipl
```

### 3. Carregar o Sistema

Carregue o arquivo do sistema modificado:

```prolog
?- consult('sistema.pl').
```

Você deverá ver uma mensagem de sucesso.

### 4. Iniciar o Sistema Pericial

Inicie o sistema pericial:

```prolog
?- perito.
```

Você verá a mensagem de boas-vindas e os comandos disponíveis:

```
 Sistema Pericial
Versao de 2025

Comandos disponiveis (introduza o numero 1, 2 ou 3):
1 - Consultar uma Base de Conhecimento (BC)
2 - Solucionar
3 - Sair
> 
```

### 5. Consultar a Base de Conhecimento

Digite `1` para consultar a base de conhecimento:

```
> 1
```

Quando solicitado o nome da BC, digite:

```
Nome da BC: clubes_com_pais_corrigido.pl
```

Você deverá ver a mensagem:

```
BC consultada com sucesso.

Comandos disponiveis (introduza o numero 2 ou 3):
2 - Solucionar
3 - Sair
> 
```

### 6. Iniciar a Solução

Digite `2` para iniciar a solução:

```
> 2
```

### 7. Responder às Perguntas

O sistema perguntará primeiro sobre o país:

```
De qual país você quer pesquisar o clube?
Opções: franca, alemanha, italia, portugal, espanha, inglaterra
|: 
```

Digite o nome de um país, por exemplo:

```
|: portugal
```

Em seguida, o sistema fará perguntas sobre os atributos do clube. Responda com `sim` ou `nao`:

```
posicao:1? (sim/nao) sim
vitorias:25? (sim/nao) sim
empates:7? (sim/nao) sim
derrotas:2? (sim/nao) sim
golos_marcados:88? (sim/nao) sim
golos_sofridos:27? (sim/nao) sim
pontos:82? (sim/nao) sim
fundacao:'01/07/1906'? (sim/nao) sim
estadio:'Estádio_José_Alvalade'? (sim/nao) sim
cidade:'Lisboa'? (sim/nao) sim
capacidade:50.095? (sim/nao) sim
```

### 8. Ver o Resultado

Se todas as respostas corresponderem a um clube na base de conhecimento, você verá a resposta:

```
Resposta encontrada: sporting_cp
```

### 9. Testar Novamente ou Sair

Você pode:
- Digite `2` para testar novamente com diferentes respostas
- Digite `3` para sair do sistema

## Exemplos de Clubes para Testar

### Portugal
- Sporting CP: posição 1, 25 vitórias, 7 empates, 2 derrotas
- Benfica: posição 2, 25 vitórias, 5 empates, 4 derrotas
- FC Porto: posição 3, 22 vitórias, 5 empates, 7 derrotas

### Espanha
- Barcelona: posição 1, 27 vitórias, 4 empates, 6 derrotas
- Real Madrid: posição 2, 25 vitórias, 6 empates, 6 derrotas
- Atletico Madrid: posição 3, 21 vitórias, 10 empates, 6 derrotas

### Inglaterra
- Liverpool: posição 1, 37 vitórias, 25 empates, 8 derrotas
- Arsenal: posição 2, 37 vitórias, 19 empates, 14 derrotas
- Newcastle: posição 3, 37 vitórias, 20 empates, 6 derrotas

## Solução de Problemas

Se encontrar algum erro ao carregar os arquivos ou durante a execução, verifique:

1. Se os nomes dos arquivos estão corretos
2. Se os arquivos estão no mesmo diretório
3. Se não há erros de sintaxe nos arquivos

Se o sistema não encontrar uma resposta, pode ser que as respostas fornecidas não correspondam a nenhum clube na base de conhecimento. Tente novamente com respostas diferentes.

