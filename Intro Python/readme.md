# Introducción a Python

https://docs.python.org/3/

![python](https://www.devacademy.es/wp-content/uploads/2018/10/python-logo.png)

$$$$

Python es un lenguaje de programación interpretado cuya filosofía hace hincapié en la legibilidad de su código. Se trata de un lenguaje de programación multiparadigma, ya que soporta parcialmente la orientación a objetos, programación imperativa y, en menor medida, programación funcional. Es un lenguaje interpretado, dinámico y multiplataforma.

Es administrado por la Python Software Foundation. Posee una licencia de código abierto, denominada Python Software Foundation License.


```python
import this
```

    The Zen of Python, by Tim Peters
    
    Beautiful is better than ugly.
    Explicit is better than implicit.
    Simple is better than complex.
    Complex is better than complicated.
    Flat is better than nested.
    Sparse is better than dense.
    Readability counts.
    Special cases aren't special enough to break the rules.
    Although practicality beats purity.
    Errors should never pass silently.
    Unless explicitly silenced.
    In the face of ambiguity, refuse the temptation to guess.
    There should be one-- and preferably only one --obvious way to do it.
    Although that way may not be obvious at first unless you're Dutch.
    Now is better than never.
    Although never is often better than *right* now.
    If the implementation is hard to explain, it's a bad idea.
    If the implementation is easy to explain, it may be a good idea.
    Namespaces are one honking great idea -- let's do more of those!


```python
Bonito es mejor que feo.
Explícito es mejor que implícito.
Simple es mejor que complejo.
Complejo es mejor que complicado.
Plano es mejor que anidado.
Disperso es mejor que denso.
La legibilidad cuenta.
Los casos especiales no son tan especiales como para romper las reglas.
Aunque la practicidad gana a la pureza.
Los errores nunca deben pasar en silencio.
A menos que se silencien explícitamente.
Ante la ambigüedad, rechaza la tentación de suponer.
Debe haber una -y preferiblemente sólo una- forma obvia de hacerlo.
Aunque esa manera puede no ser obvia al principio, a menos que seas holandés.
Ahora es mejor que nunca.
Aunque nunca es a menudo mejor que *ahora mismo*.
Si la implementación es difícil de explicar, es una mala idea.
Si la implementación es fácil de explicar, puede ser una buena idea.
Los espacios de nombres son una gran idea, ¡hagamos más de ellos!
```

**Tabla de contenidos:**

    1  Variables y operaciones
    2  Listas y diccionarios
    3  Condicionales
    4  Bucles

## 1. Variables y operaciones

El concepto de "variable" proviene de las Matemáticas. En Matemáticas, una variable es un símbolo que forma parte de una expresión o de una fórmula. Normalmente las variables se representan mediante letras del alfabeto latino ( x, y, z, n, i, j, etc.). Dependiendo del contexto, las variables significan cosas distintas. Por ejemplo la `x` de una ecuación.

En programación también existe el concepto de "variable", parecido pero no idéntico al concepto matemático.

En Python, las variables están asociadas a variables concretas. Además, cada lenguaje de programación tiene su forma de implementar el concepto de variable, por lo que lo que se explica a continuación es válido para muchos lenguajes de programación, aunque otros lenguajes de programación permiten otras posibilidades.

En muchos lenguajes de programación, una variable se puede entender como una especie de caja en la que se puede guardar un valor, por ejemplo, un valor numérico. Esa caja suele corresponder a una posición de memoria en la memoria del ordenador.

Las variables se representan también mediante letras o palabras completas: x, y, a, b, nombre, apellidos, edad, etc. Aunque siempre es conveniente añadir semántica al nombre de la variable.



```python
edad = 24      # variable edad cuyo valor es 24, un nº entero

print(edad)    # print es la función para imprimir la variable
```

    24



```python
nombre = 'Juana'     # variable nombre cuyo valor es 'Juana', una cadena de caracteres

print(nombre)        # imprime la variable nombre
```

    Juana



```python
entrada = input()    # input es una función para que el usuario escriba, se guarda en una variable
```

    Hola,¿cómo estás?



```python
print(entrada)       # imprime la variable entrada
```

    Hola,¿cómo estás?



```python
# Las variables son recordadas por el código

print('Soy', nombre, '.', entrada)
```

    Soy Juana . Hola,¿cómo estás?


Con las variables podemos realizar operaciones. Operaciones en sentido matemático o no. Hagamos algo de aritmética.


```python
# sumar

a = 4

b = 3

c = a+b   # operación suma

print(c)
```

    7



```python
# restar

a = 4

b = 3

c = a-b   # operación resta

print(c)
```

    1



```python
# multiplicar

a = 4

b = 3

c = a*b   # operación producto

print(c)
```

    12



```python
# dividir

a = 4

b = 3

c = a/b   # operación división

print(c)
```

    1.3333333333333333



```python
# dividir de manera entera, sin decimales

a = 4

b = 3

c = a//b   # operación división entera, doble //

print(c)
```

    1



```python
# modulo, resto de la division

a = 4

b = 3

c = a%b   # operación modulo

print(c)
```

    1



```python
# cuatro modulo dos, resto de dividir 4 entre 2

print(4%2)
```

    0



```python
# cinco modulo dos, resto de dividir 5 entre 2

print(5%2)
```

    1


## 2. Listas y diccionarios

Las listas en Python son un tipo contenedor, compuesto, que se usan para almacenar conjuntos de elementos relacionados del mismo tipo o de tipos distintos. Veamos un ejemplo.


```python
# esta lista contiene 4 números

lista=[10, 20, 30, 40]

print(lista)
```

    [10, 20, 30, 40]


De una lista se puede extraer un elemento según su posición, por ejemplo, si queremos el primer elemento:


```python
lista[0]
```




    10



Los diccionarios en Python nos permiten almacenar una serie de mapeos entre dos conjuntos de elementos, llamados keys and values (Claves y Valores). Se acceden a los elementos según esa estructura, veamos un ejemplo:


```python
diccionario={'numero': 2, 'nombre': 'Pepe', 'edad': 30}

print(diccionario)
```

    {'numero': 2, 'nombre': 'Pepe', 'edad': 30}



```python
diccionario['edad']
```




    30




```python
diccionario['nombre']
```




    'Pepe'



También se puede acceder a las claves y los valores por separado, en formato lista:


```python
print(diccionario.keys())   # claves
```

    dict_keys(['numero', 'nombre', 'edad'])



```python
print(diccionario.values())   # valores
```

    dict_values([2, 'Pepe', 30])


## 3. Condicionales

Los condicionales nos permiten controlar el flujo del código, por ejemplo hacer cosas distintas si una variable es mayor o menor que cierto valor. Veamos un ejemplo:


```python
a = 3  # variable con cierto valor



if a > 0:     # si la variable a es mayor que cero....
    
    b=a+2     # ...sumale 2..
    print(b)  # e imprime
    
else:  # en otro caso...
    print(a)
    
```

    5



```python
# sintaxis completa

a = -2  # variable con cierto valor

if a > 0:     # si la variable a es mayor que cero....
    
    b=a+2     # ...sumale 2..
    print(b)  # e imprime
    
elif a < 0:     # si la variable a es menor que cero....
    
    b=a-2     # ...restale 2..
    print(b)  # e imprime
    
else:         # en otro caso...
    print(a)
    
```

    -4


## 4. Bucles

El bucle for en Python se utiliza para ejecutar repetidamente un bloque de código. Los bucles for son una parte fundamental de la mayoría de los lenguajes de programación. Veamos un ejemplo para recorrer lista elemento a elemento y sumarlos todos:


```python
# vamos a sumar esta lista

lista=[10, 21, 13, 24, 55, 66, 67, 98, 99, 100]

print(lista)
```

    [10, 21, 13, 24, 55, 66, 67, 98, 99, 100]



```python
# sabemos que podemos acceder a un elemento segun su indice

lista[4]   # quinto elemento de la lista
```




    55




```python
# recorremos la lista y sumamos

suma=0        # elemento neutreo de la suma

for i in range(len(lista)):   # para cada indice en la longitud de la lista...
    
    print(i, lista[i])    # ¿qué es i?  Es el indice, y lista[i] es cada nº en la lista
    
    suma = suma+lista[i]  # sumando
    

print('Suma Total')
print(suma)     # enseña la suma completa
```

    0 10
    1 21
    2 13
    3 24
    4 55
    5 66
    6 67
    7 98
    8 99
    9 100
    Suma Total
    553



```python
# también se puede recorrer por elemento directamente


for e in lista:    # para cada elemento de la lista....
    print(e)       # ...imprimelo
```

    10
    21
    13
    24
    55
    66
    67
    98
    99
    100



```python

```
