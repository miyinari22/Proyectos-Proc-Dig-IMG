# Aplicación de Filtro Gaussiano en Imagen

Este script en MATLAB/Octave carga una imagen, aplica un filtro gaussiano y muestra el resultado del procesamiento.

## Descripción del Código

El código realiza lo siguiente:

1. Lee una imagen y la convierte a escala de grises.
2. Muestra la imagen en escala de grises.
3. Obtiene las dimensiones de la imagen.
4. Crea una máscara gaussiana con dimensiones relacionadas a la imagen.
5. Visualiza la máscara gaussiana.
6. Convierte la imagen a tipo double.
7. Realiza la operación de convolución entre la imagen y la máscara gaussiana.
8. Normaliza los valores resultantes.
9. Muestra la imagen resultante del filtrado.