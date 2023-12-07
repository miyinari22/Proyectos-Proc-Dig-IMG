# Procesamiento de Imágenes para Detección de Objetos Brillantes

Este código MATLAB realiza operaciones de procesamiento de imágenes para detectar objetos brillantes en una imagen dada. El código utiliza una serie de técnicas, incluyendo ecualización adaptativa del histograma, umbralización adaptativa, operaciones morfológicas y detección de bordes para identificar y resaltar los objetos de interés.


## Uso

1. **Ejecución del código:**

   Abre MATLAB y ejecuta el script `deteccion_objetos_brillantes.m`.

2. **Entrada:**

   Asegurese de tener una imagen de entrada `.tif `en el mismo directorio que el script.

3. **Salida:**

   El script mostrará la imagen original con los objetos detectados resaltados por círculos y números en sus centros.

## Pasos del Proceso

1. **Carga de la imagen**
2. **Ecualización adaptativa del histograma**
3. **Umbralización adaptativa**
4. **Operaciones morfológicas para limpieza**
5. **Filtrado bottom-hat para resaltar regiones oscuras**
6. **Interpolación y ajuste de contraste**
7. **Detección de bordes**
8. **Detección de objetos**
9. **Visualización de resultados**

## Referencias

- [Documentación de MATLAB para funciones de procesamiento de imágenes](https://www.mathworks.com/help/images/index.html)

## Notas

- El código contiene comentarios explicativos que detallan cada paso del proceso.
- Se pueden ajustar parámetros como la sensibilidad de detección de bordes o los elementos estructurantes en las operaciones morfológicas para adaptarse a diferentes imágenes.

---
