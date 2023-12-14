# Rotación de Imagen (Transformación Afín)

Este script en MATLAB/Octave realiza la rotación de una imagen por un ángulo dado.

## Descripción del Código

El código hace lo siguiente:

1. Define una función llamada `rotacion` que toma una imagen `A` y un ángulo de rotación `theta`.
2. Determina las dimensiones de la imagen (`f`: filas, `c`: columnas, `p`: canales de color).
3. Crea una matriz de ceros del mismo tamaño que la imagen original para almacenar la imagen rotada.
4. Genera una malla de coordenadas (`x`, `y`) correspondientes a la imagen original.
5. Calcula las coordenadas rotadas mediante una matriz de rotación.
6. Itera sobre las coordenadas rotadas y verifica si están dentro de los límites de la imagen original.
7. Copia los valores de los píxeles desde la posición original a la posición rotada en la nueva imagen (`R`).
