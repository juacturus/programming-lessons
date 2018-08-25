"""Exercício 74
Crie um programa que vai gerar cinco números aleatórios e colocar em uma tupla.
Depois disse, mostre a listagem de números gerados e também indique o menor e maior valor.
"""

from random import randint

tupla = (randint(0, 10), randint(0, 10), randint(0, 10), randint(0, 10), randint(0, 10))

print(tupla)
print('Maior valor: {}'.format(max(tupla)))
print('Menor valor: {}'.format(min(tupla)))