# Roteiro 02 (Parte I)

### Observações
1. Os problemas deverão ser solucionados utilizando o seguinte simulador: Simulador do Tipo I - CircuitVerse (projeto de circuitos lógicos utilizando componentes lógicos).

2. Em um arquivo compactado, deverão ser enviados os arquivos gerados pelo simulador. Em todos os arquivos, deverão ser fornecidos o nome do(a) aluno(a) e o nome do problema. 

3. O arquivo compactado deverá ser nomeado da forma: Nomedo(a)Aluno(a)_Roteiro"NúmerodoRoteiro" (Ex.: Nomedo(a)Aluno(a)_Roteiro02_parteI)

## Problema 01 - Semáforo (duas ruas)

Projete um circuito combinacional para controlar um cruzamento entre as ruas A e B a partir de um semáforo. Considere as informações a seguir.

### Variáveis de Entrada
```
A: representa semáforo da rua A (fluxo de carros na rua A).
B: representa semáforo da rua B (fluxo de carros na rua B).
Variáveis de Saída
VDA: representa sinal verde na rua A.
VMA: representa sinal vermelho na rua A.
VDB: representa sinal verde na rua B.
VMB: representa sinal vermelho na rua B.
```
Observações
- Rua preferencial: A.
- Liberar semáforo da rua B na ausência de fluxo.

## Problema 02 - Semáforo (três ruas)

Projete um circuito combinacional para controlar um cruzamento entre as ruas A, B e C a partir de um semáforo. Considere as informações a seguir.

### Variáveis de Entrada
```
A: representa semáforo da rua A (fluxo de carros na rua A).
B: representa semáforo da rua B (fluxo de carros na rua B).
C: representa semáforo da rua C (fluxo de carros na rua C).
Variáveis de Saída
VDA: representa sinal verde na rua A.
VMA: representa sinal vermelho na rua A.
VDB: representa sinal verde na rua B.
VMB: representa sinal vermelho na rua B.
VDC: representa sinal verde na rua C.
VMC: representa sinal vermelho na rua C.
```
### Observações
- Quando o semáforo 1 abrir para a Rua A, automaticamente os semáforos 2 e 3 devem fechar, para possibilitar ao motorista ambas as conversões.
- Analogamente, quando o semáforo 2 abrir, devem fechar os semáforos 1 e 3.
- Pelo mesmo motivo, quando o semáforo 3 abrir, devem fechar os semáforos 1 e 2.
Devem ser seguidas também as prioridades a seguir.

- O motorista que está na rua A tem prioridade em relação ao motorista que está na rua B.
- O motorista que está na rua B tem prioridade em relação ao motorista que está na rua C.
- O motorista que está na rua C tem prioridade em relação motorista que está na rua A.
- Quando houver carros nas três ruas, a rua A é preferencial.
- Quando não houver nenhum carro nas ruas, deve-se abrir sinal para a rua A.
