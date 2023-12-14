# Procesamiento de Imágenes y Convolución

Este código en MATLAB realiza algunas operaciones básicas de procesamiento de imágenes, incluyendo convolución y estiramiento de histograma.

## Descripción del Código

El script comienza realizando las siguientes operaciones:

1. Limpia el entorno de trabajo, cierra todas las ventanas y limpia la consola.
2. Lee una imagen en color.
3. Define diferentes kernels de convolución para aplicar ciertos filtros a la imagen.
4. Convierte la imagen a escala de grises.
5. Aplica un filtro de suavizado (filtro promedio) a la imagen en escala de grises.
6. Calcula las derivadas en x e y de la imagen suavizada.
7. Calcula la magnitud del gradiente como la máxima de las derivadas en x e y.

El código luego crea figuras para mostrar los resultados de las operaciones anteriores, incluyendo la imagen original, la magnitud del gradiente y las derivadas en x e y.


## Notas

- Se realizan operaciones de convolución para suavizar la imagen y calcular las derivadas en x e y.
- Se muestra la imagen original, la magnitud del gradiente y las derivadas en x e y en figuras separadas.
