# Función de Convolución en Imágenes

Este script define una función en MATLAB/Octave llamada `convolucion` que realiza la convolución entre una imagen en escala de grises y una máscara/kernel dado.

## Descripción de la Función

La función realiza lo siguiente:

1. Toma una imagen en escala de grises y una máscara/kernel como entrada.
2. Calcula las dimensiones de la imagen y la máscara.
3. Inicializa una matriz de ceros del mismo tamaño que la imagen resultante.
4. Itera sobre la imagen, aplicando la operación de convolución utilizando la máscara/kernel.
5. Realiza la suma de los productos entre la región de la imagen y la máscara/kernel para cada posición.
6. Devuelve la imagen resultante de la convolución.

