# Taller raster

## Propósito

Comprender algunos aspectos fundamentales del paradigma de rasterización.

## Tareas

Emplee coordenadas baricéntricas para:

1. Rasterizar un triángulo; y,
2. Sombrear su superficie a partir de los colores de sus vértices.

Referencias:

* [The barycentric conspiracy](https://fgiesen.wordpress.com/2013/02/06/the-barycentric-conspirac/)
* [Rasterization stage](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-stage)

Opcionales:

1. Implementar un [algoritmo de anti-aliasing](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-practical-implementation) para sus aristas; y,
2. Sombrear su superficie mediante su [mapa de profundidad](https://en.wikipedia.org/wiki/Depth_map).

Implemente la función ```triangleRaster()``` del sketch adjunto para tal efecto, requiere la librería [frames](https://github.com/VisualComputing/frames/releases).

## Integrantes

Dos, o máximo tres si van a realizar al menos un opcional.

Complete la tabla:

|   Integrante   | github nick |
|----------------|-------------|
| Camilo Pinilla | capinillab  |

## Discusión

Describa los resultados obtenidos. En el caso de anti-aliasing describir las técnicas exploradas, citando las referencias.

Se realizo la rasterización del triangulo, sombreando su superficie a partir de los colores de sus vertices, usando coordenadas baricentricas, como resultado se obtuvo:

![Rasterización Sombreado de superficie](Images/raster_baricentric.png "Rasterización Sombreado de superficie")

Para el antialising se realizo la verificación de los 4 extremos del pixel, como se aprecia en: [Referencia](https://www.scratchapixel.com/lessons/3d-basic-rendering/rasterization-practical-implementation/rasterization-practical-implementation), por cada uno que pertenezca al triangulo se da un valor gamma de 255/4, so los 3 pertenecen al triangulo el pixel tendra el color puro de lo contrario tendra una transparencia.

![Rasterización con Antialising](Images/raster_antialising.png "Rasterización con Antialising")

#### Funcionamiento

| Tecla | Efecto |
|:-----:|--------|
|  'g'  | Activar/Descativar Grid |
|  't'  | Mostrar/Ocultar Triangulo |
|  'd'  | Activar/Descativar Modo debug Vertice V1 |
| '+' / '-' | Aumentar/Disminuir Grid |
|  'r'  | Genera nuevo triangulo |
|  'y'  | Rotación en eje X |
|  'a'  | Activar/Descativar Anti Aliasing |
<!-- |  'm'  | Depth Map | -->

## Entrega

* Modo de entrega: [Fork](https://help.github.com/articles/fork-a-repo/) la plantilla en las cuentas de los integrantes.
* Plazo: 30/9/18 a las 24h.
