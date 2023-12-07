# Procesamiento de Imágenes con OpenCV

Este código en Python utiliza la biblioteca OpenCV para realizar una serie de operaciones en una imagen. El script realiza varias transformaciones en una imagen que se encuentra en una ruta especificada.

## Instrucciones de Uso

1. Instalación de Dependencias:
   - Asegurese de tener instalada la biblioteca OpenCV en su entorno Python. Si no la tienes instalada, puedes hacerlo mediante:
     ```
     pip install opencv-python
     ```

2. Estructura de Archivos:
   - Asegurese de tener la imagen imagen deseada en alguna ruta como se muestra en el ejemplo: `C:\Users\usuario\Documents\OpenCV\miku.jpg`.

3. Ejecución del Código:
   - Ejecuta el script en Python.

## Descripción de Operaciones

El código realiza las siguientes operaciones en la imagen:

1. **Lectura de la imagen**: Lee la imagen desde la ruta especificada.
2. **Conversión a escala de grises**: Convierte la imagen de formato BGR a escala de grises.
3. **Redimensionamiento de la imagen**: Cambia el tamaño de la imagen a 500x500 píxeles.
4. **Detección de bordes con el algoritmo Canny**: Detecta los bordes en la imagen.
5. **Detección de bordes con el operador Sobel**: Aplica el operador Sobel para calcular la derivada de primer orden en dirección x e y.

## Visualización de Imágenes

El código muestra varias imágenes resultantes en ventanas separadas utilizando `cv2.imshow()`. Se puede modificar para visualizar otras operaciones o combinaciones de imágenes.

