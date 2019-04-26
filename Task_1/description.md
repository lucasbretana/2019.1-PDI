## PDI Trabalho Prático 1 - Tranformadas
##### Grupo: Douglas Costa, Guilherme Schineider e Lucas Bretana

### Exercício 1
Para cada pixel da imagem é invertido, i.e., é substítuido pelo seu complemento em relação ao valor máximo possível (considerando uma imagem 8bit, 255);

```matlab
pkg load image

A = imread('./res/lena512_8.bmp');
B = imcomplement(A);

subplot(1,2,1), imshow(A);
subplot(1,2,2), imshow(B);`
```

### Exercício 2
A transformada gamma a depender do valor de gamma comporta-se como a tranformada logaritmica (gamma < 1) ou exponencial (gamma > 1). Por isso, na __segunda terceira__ imagem (gamma == 3), temos o comportamento da transformada exponencial onde os pixeis de maior valor (próximos  de 255, i.e. branco) ficam mais distintos entre si, ou seja, tem uma __variação maior__, tornando os detalhes em __tons claros mais nítidos__. Para a __quarta imagem__ (gamma == 0.4) o comportamento é da transformada logaritmica, onde os pixeis __de menor valor__ (próximos do preto) ficam mais variados, tornando os __tons mais escuros mais nítidos__. O mesmo da imagem 3 acontece para a quinta (gamma == 2.5) e sexta imagens (gamma == 1.8) porém com variação de quão drastica é a variação entre os pixeis.


```matlab
pkg load image

A = imread('./res/lena512_8.bmp');

subplot(3,2,1), imshow(A);
subplot(3,2,2), imshow(imadjust(A, [], [], 1));

subplot(3,2,3), imshow(imadjust(A, [], [], 3));
subplot(3,2,4), imshow(imadjust(A, [], [], 0.4));

subplot(3,2,5), imshow(imadjust(A, [], [], 2.5));
subplot(3,2,6), imshow(imadjust(A, [], [], 1.8));
```

### Exercício 3
Todas as imagens sofrem variação na sua faixa dinâmica. Para a __segunda image__ (c == 1), aumentou a faixa dinâmica nas regiões escuras e diminuiu nas claras. Todas as outras imagens (c == 1.45; 2; 5) a variação foi o contrário, diminuiu a faixa dinâmica nas regiões escuras e aumentou nas claras, apenas variando a intensidade, quando maior o __c__, maior a varição da faixa dinâmica, inclusive na última imagem (c == 5) a tranformada é tão extrema que têm-se perda de informação na imagem.

```matlab
pkg load image

A = im2double(imread('./res/lena512_8.bmp'));

subplot(3,2,1), imshow(A);
subplot(3,2,2), imshow(min(1*log(1+A), 1));

subplot(3,2,3), imshow(min(1.45*log(1+A), 1));
subplot(3,2,4), imshow(min(2*log(1+A), 1));

subplot(3,2,5), imshow(min(5*log(1+A), 1));

```
