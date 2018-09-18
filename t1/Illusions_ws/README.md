# Taller ilusiones visuales

## Propósito

Comprender algunos aspectos fundamentales de la [inferencia inconsciente](https://github.com/VisualComputing/Cognitive) de la percepción visual humana.

## Tareas

Implementar al menos 6 ilusiones de tres tipos distintos (paradójicas, geométricas, ambiguas, etc.), al menos dos con movimiento y dos con interactividad.

## Integrantes
(máximo dos)

Complete la tabla:

|   Integrante   | github nick |
|----------------|-------------|
| Camilo Pinilla | capinillab  |

## Discusión

### 1. Complete la la tabla

| Ilusión | Categoria | Referencia | Tipo de interactividad (si aplica) | URL código base (si aplica) |
|---------|-----------|------------|------------------------------------|-----------------------------|
| Caballo | Ambigua | [Referencia 1](http://ilusionesopticas-fotografias.blogspot.com/p/figuras-ambiguas.html)<br>[Referencia 2](http://www.michaelbach.de/ot/sze-silhouette/index.html) | Clik para ver lineas de referencia de dirección | No tiene |
| Faces | Rostros <br> Movimiento | [Referencia](http://mbthompson.com/research/) | Click para ver linea de referencia altura ojos | No tiene |
| Waterfall  | Movimiento | [Referencia 1](http://www.michaelbach.de/ot/mot-adapt/index.html)<br>[Referencia 2](https://www.illusionsindex.org/ir/waterfall-illusion) | Click para ver imagen de fondo (en reposo) | No tiene |
| Orbison | Geometrica | [Referencia](https://www.illusionsindex.org/ir/orbison-illusion) | Pasar el mouse sobre la imagen para quitar las lineas de distorsión | No tiene |
| Snakes | Movimiento Ilusorio | [Referencia 1](http://www.michaelbach.de/ot/mot-snakesLum/index.html)<br>[Referencia 2](https://www.illusionsindex.org/i/rotating-snakes) | No tiene | No tiene |
| Neon | Color<br>Contorno Ilusorio | [Referencia 1](http://www.michaelbach.de/ot/col-neon/index.html)<br>[Referencia 2](https://www.illusionsindex.org/i/neon-color-spreading) | Pasar el Mouse para cambiar el color | No tiene|
| Contraste | Fisiologica<br>Cambio de color | [Referencia](http://www.michaelbach.de/ot/lum-inducedGrating/index.html) | Pasar el mouse sobre la imágen para ocultar la gradación del fondo | [Gradación](https://processing.org/examples/lineargradient.html) |

Las Ilusiones se pueden ver en la página del trabajo: https://capinillab.github.io/cv/t1/Illusions_ws/

### 2. Describa brevememente las referencias estudiadas y los posibles temas en los que le gustaría profundizar:

#### Ilusión Caballo:
En esta imagen se ve el caballo mirando hacia adelante y hacia atras, debido a que no hay puntos de referencia, que nos ayuden a determinar la dirección.

Al hacer click sobre la imágen, se mostraran las lineas de referencia, en forma ciclica, con lo cual la imágen dejara de ser ambigua.
  1. Linea de referencia para que el caballo mire hacia el frente.
  2. Linea de referencia para que el caballo mire hacia atras.
  3. Imagen sin referencias.

##### Referencias:
- http://ilusionesopticas-fotografias.blogspot.com/p/figuras-ambiguas.html
- http://www.michaelbach.de/ot/sze-silhouette/index.html

#### Distorsión de Caras
Se debe enfocar la mirada en el punto de la cruz central, con la vista periferica se observa que los rostros se ven monstruosos.

Al alinear las caras a la altura de los ojos y presentarlas rápidamente, es mucho más fácil compararlas, por lo que las diferencias entre las caras son más extremas. Si alguien tiene una mandíbula grande, se ve casi como un ogro. Si tienen una frente especialmente grande, parece particularmente bulbosa.

Al hacer click sobre al imagen, se mostrara la linea de referencia de la altura de los ojos.
##### Referencia
- http://mbthompson.com/research/

#### Waterfall (Cascada)
Efecto posterior al movimiento,

Fije la mirada en cruz central durante al menos 30 segundos. luego haga click sobre la imagen, Observe el efecto posterior del movimiento en la figura en reposo (grilla de puntos).

Se experimenta después de ver un estímulo moviéndose en una dirección durante un tiempo, y luego mirando una escena estacionaria. La escena estacionaria parece tener movimiento (en la dirección opuesta al estímulo móvil que uno vio anteriormente).

Esto a menudo se explica en términos de "fatiga" de la clase de neuronas que codifica una dirección de movimiento. Es más exacto interpretar esto en términos de adaptación o "control de ganancia".

##### Referencias
- http://www.michaelbach.de/ot/mot-adapt/index.html
- https://www.illusionsindex.org/ir/waterfall-illusion

#### Ilusión de Orbison
El cuadro rojo aparece distorsionado, aunque no lo este, al igual que el rectángulo que contiene la imagen, aunque tampoco lo esté.

Una de las explicaciones a este fenomeno es que nuestros sistemas perceptivos tienen tendencia a "expandir" ángulos agudos, en este caso las líneas de fondo azul que se cruzan con las líneas rojas del cuadro hacen que el sistema visual mejore el contraste de orientación entre las líneas roja y azul, para "expandir" los ángulos agudos en el punto de intersección entre líneas azules y rojas.

Pase el mouse sobre la imagen para que desaparezcan las lineas azules.
##### Referencia
- https://www.illusionsindex.org/ir/orbison-illusion

#### Serpientes Rotatorias
Evoca una experiencia perceptual de movimiento ilusorio.

Es una ilusion de deriva periférica; cualquier parte de la figura que esté en el centro de nuestro campo visual parece inmóvil (como de hecho lo es), mientras que las partes vistas en nuestra visión periférica parecen moverse.
##### Referencias
- http://www.michaelbach.de/ot/mot-snakesLum/index.html
- https://www.illusionsindex.org/i/rotating-snakes

#### Neon
Se aprecia un disco brillante en el area del fondo que lleva el color azul, este color es igual al del fondo del resto de la imágen (blanco), pero se ve mucho mas brillante.

Al pasar el mouse sobre la imagen el color azul de los discos desaparece, y el fondo se ve con el mismo brillo.
##### Referencia
- http://www.michaelbach.de/ot/col-neon/index.html
- https://www.illusionsindex.org/i/neon-color-spreading

#### Cambio de color por contraste
Cambio de color debido al cambio de contraste, la banda del centro es de un tono gris constante, pero se ve afectada por el contraste con el fondo, pareciendo que tiene un cambio de color que no existe.

Pase el mouse sobre la imagen para quitar la gradación del fondo.
##### Referencia
- http://www.michaelbach.de/ot/lum-inducedGrating/index.html


#### Profundización
Fue muy interesante hacer la investigación completa, encontre muchas que me sorprendieron pero así mismo eran de dificil implementación.

Las ilusiones perceptivas me parecieron muy interesantes, y mas viendo como no todos sienten los efectos de la misma forma, a diferencia de algo simple como las geometricas, las cuales son interpretadas casi instantaneamente y de igual forma por todos.

No llegue a implemetar nada en 3D, por lo tanto es un tema pendiente en el que me gustaria profundizar, al igual que en manejo de color y profundidad.

## Entrega
* Modo de entrega: clonar este repo y subirlo a `https://github.com/username/cv/t1`.
* Plazo: 16/9/18 a las 24h.
