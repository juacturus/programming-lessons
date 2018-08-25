"""Exercício 75
Desenvolva um programa que leia quatro valores pelo teclado e guarde-os em uma tupla.
No final, mostre:

A - Quantas vezes apareceu o valor 9
B - Em que posição foi digitado o primeiro 3
C - Quais foram os números pares"""

tupla = ()
lista = []

for i in range(4):
    n = int(input('Digite um valor: '))
    lista.append(n)

tupla = tuple(lista)

print('- - - A - - -')
cont9 = tupla.count(9)
if cont9 != 0:
    print('O valor 9 apareceu {} veze(s) nessa tupla.'.format(cont9))
else:
    print('Não há o valor 9 nesta tupla.')

print('- - - B - - -')
if 3 in tupla:
    print('O valor 3 aparece pela primeira vez na posição {}'.format(tupla.index(3)))
else:
    print('O 3 não aparece nesta tupla.')

print('- - - C - - -')
print('Elementos pares: ')
for i in range(len(tupla)):
    if tupla[i] % 2 == 0:
        print(tupla[i])