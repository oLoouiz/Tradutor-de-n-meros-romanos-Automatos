# Autômato Finito Determinístico (ADF) para Números Romanos

Este projeto implementa um **Autômato Finito Determinístico (ADF)** em Ruby que reconhece e converte números romanos em valores inteiros. O autômato processa símbolos como `I`, `V`, `X`, `L`, `C`, `D` e `M` e calcula o valor correspondente de acordo com as regras de numeração romana.

---

## Funcionalidades

- Reconhecimento de números romanos válidos de `1` a `3999`.
- Cálculo do valor inteiro correspondente.
- Mensagens detalhadas de estado e saída parcial durante a execução.
- Estrutura de estados organizada em unidades de 1s, 10s, 100s e 1000s.

---

## Como usar

1. Clone ou baixe o repositório.
2. Execute o arquivo Ruby:

```bash
ruby ver01.rb
```

Modifique a entrada no final do arquivo para testar outros números romanos:

adf = ADF.new("MMMCMXCIX") # 3999
adf.iniciar

O programa mostrará:

Símbolo processado

Estado atual

Saída parcial

Saída final se o número for válido

Mensagem de erro se a sequência não for reconhecida

Diagrama de Estados

O diagrama abaixo mostra a lógica de transição de estados do autômato:

```mermaid
stateDiagram-v2
    [*] --> q0 : Início
    q0 --> q1 : I
    q1 --> q2 : I
    q2 --> q3 : I
    q0 --> q6 : V
    q6 --> q7 : I
    q7 --> q8 : I
    q8 --> q9 : I
    q1 --> q4 : X
    q1 --> q5 : V


    q10 --> q1 : I
    q10 --> q6 : V

    q11 --> q1 : I
    q11 --> q6 : V

    q12 --> q1 : I
    q12 --> q6 : V

    q13 --> q1 : I
    q13 --> q6 : V

    q14 --> q1 : I
    q14 --> q6 : V

    q15 --> q1 : I
    q15 --> q6 : V

    q16 --> q1 : I
    q16 --> q6 : V

    q17 --> q1 : I
    q17 --> q6 : V

    q18 --> q1 : I
    q18 --> q6 : V


    q0 --> q10 : X
    q10 --> q11 : X
    q11 --> q12 : X
    q10 --> q13 : C
    q10 --> q14 : L
    q0 --> q15 : L
    q15 --> q16 : X
    q16 --> q17 : X
    q17 --> q18 : X


    q19 --> q1 : I
    q19 --> q6 : V
    q19 --> q10 : X
    q19 --> q15 : L

    q20 --> q1 : I
    q20 --> q6 : V
    q20 --> q10 : X
    q20 --> q15 : L

    q21 --> q1 : I
    q21 --> q6 : V
    q21 --> q10 : X
    q21 --> q15 : L

    q22 --> q1 : I
    q22 --> q6 : V
    q22 --> q10 : X
    q22 --> q15 : L

    q23 --> q1 : I
    q23 --> q6 : V
    q23 --> q10 : X
    q23 --> q15 : L

    q24 --> q1 : I
    q24 --> q6 : V
    q24 --> q10 : X
    q24 --> q15 : L

    q25 --> q1 : I
    q25 --> q6 : V
    q25 --> q10 : X
    q25 --> q15 : L

    q26 --> q1 : I
    q26 --> q6 : V
    q26 --> q10 : X
    q26 --> q15 : L

    q27 --> q1 : I
    q27 --> q6 : V
    q27 --> q10 : X
    q27 --> q15 : L


    q0 --> q19 : C
    q19 --> q20 : C
    q20 --> q21 : C
    q19 --> q22 : M
    q19 --> q23 : D
    q0 --> q24 : D
    q24 --> q25 : C
    q25 --> q26 : C
    q26 --> q27 : C


    q28 --> q1 : I
    q28 --> q6 : V
    q28 --> q10 : X
    q28 --> q15 : L
    q28 --> q19 : C
    q28 --> q15 : D

    q29 --> q1 : I
    q29 --> q6 : V
    q29 --> q10 : X
    q29 --> q15 : L
    q29 --> q19 : C
    q29 --> q15 : D

    q30 --> q1 : I
    q30 --> q6 : V
    q30 --> q10 : X
    q30 --> q15 : L
    q30 --> q19 : C
    q30 --> q15 : D


    q0 --> q28 : M
    q28 --> q29 : M
    q29 --> q30 : M


    q3 --> [*]
    q4 --> [*]
    q5 --> [*]
    q9 --> [*]
    q12 --> [*]
    q13 --> [*]
    q14 --> [*]
    q18 --> [*]
    q21 --> [*]
    q22 --> [*]
    q23 --> [*]
    q27 --> [*]
    q30 --> [*]
```

# Autômato Finito Determinístico (AFD) para Números Romanos

Este projeto implementa um **Autômato Finito Determinístico (AFD)** — especificamente um Transdutor Finito — em **Ruby**. O sistema é capaz de reconhecer e converter números romanos em valores inteiros (decimais), processando os símbolos `I`, `V`, `X`, `L`, `C`, `D` e `M` seguindo as regras gramaticais da numeração romana.

---

## 🚀 Funcionalidades

- **Validação:** Reconhece números romanos válidos no intervalo de `1` a `3999`.
- **Conversão:** Calcula o valor decimal correspondente em tempo real.
- **Rastreamento:** Exibe mensagens detalhadas de estado, símbolo processado e saída parcial durante a execução.
- **Estrutura Segmentada:** Estados organizados para processar unidades, dezenas, centenas e milhares de forma determinística.

---

## 🛠️ Como Usar

1.  Certifique-se de ter o **Ruby** instalado em sua máquina.
2.  Clone ou baixe este repositório.
3.  Execute o script principal:

```bash
ruby ver01.rb
```
