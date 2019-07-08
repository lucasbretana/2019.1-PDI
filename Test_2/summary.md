## Resumo prova 2
# NOTAS
- alta frequência: bordas, lados e outras transições

- no espectro de fourier bidimensional (imagens) o _ponto central agrupa as baixas frequencias_ da imagem original

# Filtros
- usados em imagens tons de cinza
- usados para atenuar/suavisar determinados detalhes na imagem

- _passa baixa_: suaviza, atenua, _diminui altas frequências_ (tranformações abruptas)
  * minimiza borramentos na imagem
  * pode ser usado pra remover o ruido do tipo 'salt and pepper'
  * exemplo: filtro de média, mediana


- _passa alta_: _realça_ detalhes (sharpering)(_bordas_, linhas, curvas, manchas)
  * diminui pontos claros, produz uma imagem mais escura (em geral)
  * exemplo: filtro com números negativos

# Filtros Fourier -- Espaço de Frequência
- tranformada de fourier também é uma função gaussiana
- tudo é uma questão de como representar a imagem (o problema)

- representação no espaço de frequência: qualquer sinal (função) pode ser reprentado por uma combinação linear podenderada de senos e cossenos (aka. harmônicos)
  * processamento de sinais nesse dominío é realçar/preservar o conteúdo de destes componentes harmônicos

- a imagem é tranformada pro dominío de frequência (transf. de fourier)
  * aplicado o filtro (see below)
  * inversa transf. fourier

- filtros
  * bolinha branca com fundo preto: filtro passa baixa
  * anel branco em fundo preto: filtro passa média
  * bolinha preta com fundo branco: filtro passa alta


# Exemplos de filtros
- média: usa a média da janela (3x3, 5x5, ..)
- mediana: ....
- ranking:
  * define a vizinhança (NxN)
  * ranquear em ordem crescente
  * escolha a ordem do filtro (1..N)
  * valor filtrado igual ao valor da posição escolhida pelo ranking
