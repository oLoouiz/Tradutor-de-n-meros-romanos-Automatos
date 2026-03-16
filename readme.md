# ADF para Conversão de Números Romanos

## Descrição

Este projeto implementa um **Autômato Determinístico Finito (ADF)** em **Ruby**, capaz de ler uma **cadeia de caracteres representando números romanos** e calcular o **valor inteiro correspondente**.

O autômato trata números romanos válidos até **3999 (MMMCMXCIX)**, incluindo os casos de subtração como **IV (4), IX (9), XL (40), XC (90), CD (400) e CM (900)**.

Sendo o maior numero possivel **MMMCMXCIX -> 3999**

---

## Como Funciona

- O autômato lê **símbolo por símbolo** da cadeia de entrada.
- Cada símbolo faz o autômato transitar para um **novo estado** e **incrementa a saída parcial** de acordo com a regra do número romano.
- Quando a cadeia termina em um estado válido, a entrada é **aceita** e o valor total é exibido.
- Caso a sequência seja inválida, o autômato **gera erro**.

**Exemplo de fluxo para "MMMCMXCIX" (3999):**

1. `M` → q28 → q29 → q30 (1000 + 1000 + 1000 = 3000)
2. `CM` → q19 → q22 (300 + 800 = 900)
3. `XC` → q10 → q13 (10 + 90 = 100)
4. `IX` → q1 → q4 (1 + 8 = 9)  
   **Total** = 3999

---

## Estrutura do Código

- **ADF.rb**: contém a classe `ADF` que implementa o autômato.
- **Métodos principais**:
  - `initialize(cadeia)`: inicializa a cadeia de entrada.
  - `proximo`: retorna o próximo caractere da cadeia.
  - `iniciar`: executa o autômato, gerenciando estados, transições e saída.

---

## Como Executar

1. Instale o Ruby (caso não tenha): [Ruby Lang](https://www.ruby-lang.org/en/downloads/)
2. Salve o código em um arquivo, por exemplo: `adf.rb`.
3. No terminal, execute:

```bash
ruby ver01.rb
```
