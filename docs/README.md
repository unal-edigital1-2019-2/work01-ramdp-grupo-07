


Integrantes Del grupo
=======================
Guillermo Alejandro Cano  
Adolfo Byron Erazo  
Jhon Edison Bohorquez Martinez  

*regunta 1:*

¿Definir cuál es el tamaño máximo de buffer de memoria que puede crear?, se recomienda leer las especificaciones de la FPGA que está usando cada grupo. La respuesta se debe dar en bytes.

1.la FPGA  utilizada fue la Nexys 4. segun el datasheet la capicidad total de almacenamiento en memoria es de
4.860 Kbits equivalentes a 4´860.000 bits por lo tanto
se utilizará la formula 2^(AW).DW =(0.4*4´860.000) ,lo que representa que utilizaremos el 40% de la memoria máxima de la placa para ocuparlos en la  memoria RAM de la camara , con DW=16 y despejando el valor de x obtenemos x=17 , lo cual nos da unos valores de AW=17 ;DW=16 que representan un tamaño de pantalla igual a



*Pregunta 2:*

¿Cuál formato y tamaño de imagen de la cámara OV7670 que se ajusta mejor al tamaño de memoria calculado en la pregunta 1?. Para ello revisar la hoja de datos de la cámara OV7670. Revisar el datasheet que se encuentra aquí



*Pregunta 3:*

¿Cuáles son los registros de configuración de la cámara OV7670 que permiten tener la configuración dada en la pregunta 2? Revisen los registros dados de la página 11 a la 26 del datasheet e indiquen la configuración para:

    Restablecer todos los registros
    Habilitar el escalado
    Configurar el formato y el tamaño del pixel
    Habilitar el test de barra de colores
