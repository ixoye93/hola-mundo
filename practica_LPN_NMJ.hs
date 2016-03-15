--1.1 media de 3 numeros
media3 x y z = (x+y+z)/3

--1.2. Suma de euros de una colección de monedas
sumaMonedas a b c d e = 1*a+2*b+5*c+10*d+20*e

--1.3. Volumen de la esfera
volumenEsfera r = (4/3)*pi*r^3

--1.4. Área de una corona circular
areaDeC r1 r2 = pi*(r2^2 -r1^2)

--1.5. Última cifra de un número
ultimaCifra x = rem x 10

--1.6. Máximo de 3 elementos
maxTres x y z = max x (max y z)

--1.7. Disyunción excluyente
--1.7.1
xor1 True True = False
xor1 True False = True
xor1 False True = True
xor1 False False = False

--1.7.2
xor2 True y = not y
xor2 False y = y

--1.7.3
xor3 x y = (x || y) && not (x && y)

--1.7.4
xor4 x y = x /= y

--1.8. Rotación de listas
--1.8.1
rota1 xs = tail xs ++ [head xs]

--1.8.2
rota n xs = drop n xs ++ take n xs

--1.9. Rango de una lista
rango xs = [minimum xs, maximum xs]

--1.10. Reconocimiento de palíndromos
palindromo xs = xs == reverse xs

--1.11. Elementos interiores de una lista
interior xs = tail (init xs)

--1.12. Finales de una lista
finales n xs = drop (length xs - n) xs

--1.13. Segmentos de una lista
segmento m n xs = drop (m-1) (take n xs)

--1.14.Extremos de una lista
extremos n xs = take n xs ++ drop (length xs - n) xs

--1.15. Mediano de 3 números
--La primera es
mediano x y z = x + y + z- minimum [x,y,z] - maximum [x,y,z]
--La segunda es 
mediano' x y z 
    | a <= x && x <= b = x 
    | a <= y && y <= b = y 
    | otherwise = z
    where a = minimum [x,y,z]
          b = maximum [x,y,z]

--1.16. Igualdad y diferencia de 3 elementos
--Ejercicio 1.16.1
tresIguales x y z = x == y && y == z

--Ejercicio 1.16.2. 
tresDiferentes x y z = x /= y && x /= z && y /= z

--1.17. Igualdad de 4 elementos
cuatroIguales x y z u = x == y && tresIguales y z u

--1.18. Propiedad triangular
triangular a b c = a < b+c && b < a+c && c < a+b

--1.19. División segura
divisionSegura _ 0 = 9999
divisionSegura x y = x/y

--1.20. Disyunción excluyente
--1.20.1. 
xoR1 True True = False
xoR1 True False = True
xoR1 False True = True
xoR1 False False = False

--1.20.2. 
xoR2 True y = not y
xoR2 False y = y

--1.20.3. 
xoR3 x y = (x || y) && not (x && y)

--1.20.4. 
xoR4 x y = x /= y

--1.21. Módulo de un vector
modulo (x,y) = sqrt(x^2+y^2)

--1.22. Rectángulo de área máxima
mayorRectanglo (a,b) (c,d) | a*b >= c*d = (a,b) | otherwise = (c,d)

--1.23. Puntos del plano.
--1.23.1. Cuadrante de un punto
cuadrante (x,y) | x > 0 && y > 0 = 1 | x < 0 && y > 0 = 2 | x < 0 && y < 0 = 3 | x > 0 && y < 0 = 4

--1.23.2. Intercambio de coordenadas
intercambia (x,y) = (y,x)

--1.23.3. Punto simétrico
simetricoH (x,y) = (x,-y)

--1.23.4. Distancia entre dos puntos
distancia (x1,y1) (x2,y2) = sqrt((x1-x2)^2+(y1-y2)^2)

--1.23.5. Punto medio entre otros dos
puntoMedio (x1,y1) (x2,y2) = ((x1+x2)/2, (y1+y2)/2)

--1.24. Números complejos
--1.24.1. Suma de dos números complejos
sumaComplejos (a,b) (c,d) = (a+c, b+d)

--1.24.2. Producto de dos números complejos
productoComplejos (a,b) (c,d) = (a*c-b*d, a*d+b*c)

--1.24.3. Conjugado de un número complejo
conjugado (a,b) = (a,-b)

--1.25. Intercalación de pares
intercala [x1,x2] [y1,y2] = [x1,y1,x2,y2]

--1.26. Permutación cíclica de una lista
ciclo [] = []
ciclo xs = last xs : init xs

--1.27. Mayor número de 2 cifras con dos dígitos dados
numeroMayor x y = a*10 + b 
      where a = max x y 
            b = min x y

--1.28. Número de raíces de una ecuación cuadrática
numeroDeRaices a b c 
     | d < 0 = 0 
     | d == 0 = 1 
     | otherwise = 2 
     where d = b^2-4*a*c

--1.29. Raíces de las ecuaciones cuadráticas
raices_1 a b c = [(-b+d)/t,(-b-d)/t] 
      where d = sqrt (b^2 - 4*a*c) 
            t = 2*a
raices_2 a b c 
   | d >= 0 = [(-b+e)/(2*a), (-b-e)/(2*a)] 
   | otherwise = error "No tine raices reales" 
   where d = b^2-4*a*c 
         e = sqrt d

--1.30. Área de un triángulo mediante la fórmula de Herón
area a b c = sqrt (s*(s-a)*(s-b)*(s-c))
     where s = (a+b+c)/2




