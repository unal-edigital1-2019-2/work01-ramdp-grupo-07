## Aquí se debe  documentar todo el proceso del proyecto acorde a cada paquete de trabajo


Integrantes Del grupo
=======================
Guillermo Alejandro Cano  
Adolfo Byron Erazo  
Jhon Edison Bohorquez Martinez  

*regunta 1:*

¿Definir cuál es el tamaño máximo de buffer de memoria que puede crear?, se recomienda leer las especificaciones de la FPGA que está usando cada grupo. La respuesta se debe dar en bytes.

1.la FPGA  utilizada fue la Nexys 4. segun el datasheet la capicidad total de almacenamiento en memoria es de
4.860 Kbits equivalentes a 4860000 bits 


*Pregunta 2:*

¿Cuál formato y tamaño de imagen de la cámara OV7670 que se ajusta mejor al tamaño de memoria calculado en la pregunta 1?. Para ello revisar la hoja de datos de la cámara OV7670. Revisar el datasheet que se encuentra aquí
teniendo en cuenta que se tiene:  
AW=15  
DW=8  
Se tendra una captura de datos de la RAM de 262144bits


*Pregunta 3:*

¿Cuáles son los registros de configuración de la cámara OV7670 que permiten tener la configuración dada en la pregunta 2? Revisen los registros dados de la página 11 a la 26 del datasheet e indiquen la configuración para:

    Restablecer todos los registros
    Habilitar el escalado
    Configurar el formato y el tamaño del pixel
    Habilitar el test de barra de colores
