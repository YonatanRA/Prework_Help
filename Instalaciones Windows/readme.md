# Instalaciones para Windows

En este documento te iremos guiando paso a paso para que realices todas las instalaciones necesarias en tu Windows y tengas tu ordenador listo para todo el bootcamp.

Ten paciencia, a veces se complica. Si una instalación te falla por cualquier razón no te preocupes, pasa a la siguiente y más tarde busca en Google como instalar esa aplicación. Recuerda que Google es tu mejor aliado.


# 1. Instalando Anaconda

Anaconda es una distribución de los lenguajes de programación Python y R para computación científica (ciencia de datos, aplicaciones de Machine Learning, procesamiento de datos a gran escala, análisis predictivo, etc.).

Tiene como ventaja simplificar la gestión e implementación de paquetes. La distribución incluye paquetes de “data science” adecuados para Windows, Linux y macOS. 

Existen varias opciones: Anaconda Distribution o Anaconda Individual Edition son gratuitos para uso individual. Otros productos de la compañía son Anaconda Team Edition y Anaconda Enterprise Edition, ambos son comerciales, es decir no gratuitos.

Las versiones de paquetes en Anaconda son administradas por el sistema de gestión de paquetes conda. Este administrador de paquetes se separó como un paquete de código abierto separado, ya que terminó siendo útil por sí solo y para cosas distintas de Python. 

También hay una pequeña versión de arranque de Anaconda llamada Miniconda, que incluye solo conda, Python, los paquetes de los que dependen y un pequeño número de otros paquetes interesantes.

Instalando Anaconda ya tendrás instalado Python y Jupyter Notebook también.

Descargarmos el [paquete de Anaconda](https://repo.anaconda.com/archive/Anaconda3-2022.10-Windows-x86_64.exe) y lo instalamos haciendo doble click sobre el ejecutable que se descarga. 

**Referencia: https://www.anaconda.com**



# 2. Instalando winget

Winget es el nuevo gestor de paquetes para Windows 10 que nos permite instalar todo tipo de aplicaciones desde la terminal de forma rápida y sencilla escribiendo un simple comando, y lo mejor de todo, aunque también irónico, es que tiene software más destacable que la misma tienda de Microsoft.

Para instalar winget, nos descargamos el [instalador](https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle), hacemos doble click y seguimos los pasos.

Winget también está en el Microsoft Store para ser instalado.

Sigue [este tutorial](https://learn.microsoft.com/es-es/windows/package-manager/winget/) se te hiciera falta.



# 3. Git & github

Git es un sistema de control de versiones, que nos permitirá trabajar de manera colaborativa, haciendo fácil y óptimo el trabajo en equipo cuando estamos desarrollando software.

Github, en cambio, es un portal creado para alojar el código de las aplicaciones de cualquier desarrollador. La plataforma está creada para que los desarrolladores suban el código de sus aplicaciones y herramientas, y que como usuario no sólo puedas descargarte la aplicación, sino también entrar a su perfil para leer sobre ella o colaborar con su desarrollo.

Busca la aplicación Powershell o Anaconda PowerShell.

**Instalación de git:** copia y pega la siguiente línea de código en Powershell y presiona la tecla Enter:
+ ```bash
    winget install -e --id Git.Git
    ```

# 4. Visual Studio Code

VsCode es un entorno de desarrollo integrado (IDE por las siglas en inglés), es un editor de código que se ejecuta en Windows, macOS y Linux. La elección principal para desarrolladores web y JavaScript, con extensiones para admitir casi cualquier lenguaje de programación.

**Instalación de VsCode:** copia y pega la siguiente línea de código en Powershell y presiona la tecla Enter:
+ ```bash
    winget install -e --id Microsoft.VisualStudioCode
    ```

También se puede descargar desde [aquí](https://code.visualstudio.com/download).


# 5. MySQL

SQL es un acrónimo en inglés para Structured Query Language (Lenguaje de Consulta Estructurado). Un tipo de lenguaje de programación que te permite manipular y descargar datos de una base de datos. Tiene capacidad de hacer cálculos avanzados, álgebra e incluso machine learning. Es utilizado en la mayoría de empresas que almacenan datos en una base de datos. Ha sido y sigue siendo el lenguaje de programación más usado para bases de datos relacionales.

Para instalarlo, sigue los siguientes pasos:

1. Descargar el instalable desde [aquí](https://dev.mysql.com/downloads/file/?id=514518) o ejecuta en PowerShell la siguiente línea de código:
+ ```bash
    winget install Oracle.MySQL
    ```

2. Aceptar permisos.
3. Cuando veamos **Choosing a Setup Type** debemos escoger custom.
4. Se instalan los componentes. De ellos, los necesarios son MySQL Server, MySQL Workbench y el Connector/OBDC.
5. En Accounts and Roles puedes establecer tu password. Por defecto es **admin**.

[Aquí](https://www.adslzone.net/esenciales/windows-10/instalar-mysql/) un link a un tutorial de instalación de MySQL.




# 6. DBeaver

DBeaver es un software que actúa como una herramienta de base de datos universal destinada a desarrolladores y administradores de bases de datos. DBeaver tiene una interfaz de usuario bien diseñada, la plataforma basada en un marco de código abierto y permite escribir múltiples extensiones, así como también es compatible con cualquier base de datos.

También incluye soporte para clientes nativos de MySQL y Oracle, administración de controladores, editor de SQL y formateo. DBeaver es una aplicación multiplataforma pues cuenta con soporte para las plataformas de MacOS , Windows y Linux.

Para instalar DBeaver pega la siguiente línea de código en PowerShell y presiona la tecla Enter:

+ ```bash
    winget install -e --id dbeaver.dbeaver
    ```

También se puede descargar desde [aquí](https://dbeaver.io/).


# 7. MongoDB

MongoDB es una base de datos de documentos que ofrece una gran escalabilidad y flexibilidad, y un modelo de consultas e indexación avanzado. El modelo de documentos de MongoDB resulta muy fácil de aprender y usar, y proporciona a los desarrolladores todas las funcionalidades que necesitan para satisfacer los requisitos más complejos a cualquier escala. 

Para instalar MongoDB pega la siguiente línea de código en PowerShell y presiona la tecla Enter:

+ ```bash
    winget install -e --id MongoDB.Server
    ```

También se puede descargar desde [aquí](https://www.mongodb.com/try/download/community).


Para instalar MongoDB puedes seguir el siguiente [tutorial](https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-windows/).

# 8. Compass

Es la interfaz gráfica para MongoDB. Compass es una herramienta interactiva para consultar, optimizar y analizar sus datos en MongoDB.

Para instalar Compass pega la siguiente línea de código en PowerShell y presiona la tecla Enter:

+ ```bash
    winget install -e --id MongoDB.Compass.Full
    ```

También se puede descargar desde [aquí](https://www.mongodb.com/try/download/shell).


# 9. Microsoft Excel

Excel es una hoja de cálculo que nos permite manipular datos numéricos y de texto en tablas formadas por la unión de filas y columnas. Una hoja de cálculo es lo que utilizaban los contadores para llevar registros, esto se utilizaba mucho antes de que aparecieran las computadoras. Las hojas de cálculo en programas informáticos aparecieron desde la década de 1960 y fueron desarrolladas para simular las hojas de trabajo contables, que se utilizaba en ese entonces y de esa manera automatizaban el trabajo contable.

Para instalar Excel pega la siguiente línea de código PowerShell y presiona la tecla Enter:

+ ```bash
    winget install -e --id tomlm.electron-outlook-365
    ```

Si ya tienes Office365 ya tienes Excel.


# 10. Tableau

Tableau es una herramienta de visualización de datos potente utilizada en el área de la Inteligencia de negocios. Simplifica los datos en bruto en un formato muy fácil de entender. La esencia de Tableau es simple y a la vez muy relevante: ayudar a las personas y empresas a ver y comprender todos sus datos. Y esto lo consigue ofreciendo a los usuarios toda una selección de herramientas útiles e intuitivas de inteligencia de negocios. A través de funciones simples como la de arrastrar y soltar, cualquier persona puede acceder y analizar de forma sencilla datos, e incluso, crear informes y compartir esta información con otros usuarios.

Para instalar Tableau pega la siguiente línea de código en PowerShell y presiona la tecla Enter:

+ ```bash
    winget install -e --id Tableau.Public
    ```

También se puede descargar desde [aquí](https://www.tableau.com/es-es/products/public).


# 11. PowerBI

PowerBI es un conjunto de herramientas que pone el conocimiento al alcance de todos y nos brinda acceder a nuestros datos de forma segura y rápida, generando grandes beneficios para nosotros y para nuestra empresa. Es un sistema predictivo, inteligente y de gran apoyo, capaz de traducir los datos (simples o complejos) en gráficas, paneles o informes por sus cualidades como la capacidad gráfica de presentación de la información, o la integración de Power Query: el motor de extracción, transformación y carga (ETL) incluido en Excel.

Para instalar PowerBI pega la siguiente línea de código en PowerShell y presiona la tecla Enter:

+ ```bash
    winget install -e --id Microsoft.PowerBI
    ```

También se puede descargar desde [aquí](https://powerbi.microsoft.com/es-es/downloads/).


# 12. Slack/Zoom

Slack es una aplicación de mensajería para empresas que conecta a las personas con la información que necesitan.

Zoom es un servicio de videoconferencia basado en la nube que se puede utilizar para reunirse virtualmente con otras personas, ya sea por vídeo o solo por audio, o ambos, todo ello mientras se realizan chats en directo, y permite grabar esas sesiones para verlas más tarde. 

Para instalar ambas aplicaciones pega las siguientes líneas de código en PowerShell y presiona la tecla Enter:
+ ```bash
    winget install -e --id SlackTechnologies.Slack

    winget install -e --id Zoom.Zoom
    ```

Slack también se puede descargar desde [aquí](https://slack.com/intl/es-es/downloads/windows).
Zoom también se puede descargar desde [aquí](https://zoom.us/).



# 13. Resumen
```bash

# 1. Instalando Anaconda
https://repo.anaconda.com/archive/Anaconda3-2022.10-Windows-x86_64.exe

# 2. Instalando winget
https://github.com/microsoft/winget-cli/releases/download/v1.3.2691/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
```
```bash
# 3. Git & github
winget install -e --id Git.Git

# 4. Visual Studio Code
winget install -e --id Microsoft.VisualStudioCode

# 5. MySQL
winget install Oracle.MySQL

# 6. DBeaver
winget install -e --id dbeaver.dbeaver

# 7. MongoDB
winget install -e --id MongoDB.Server

# 8. Compass
winget install -e --id MongoDB.Compass.Full

# 9. Microsoft Excel
winget install -e --id tomlm.electron-outlook-365

# 10. Tableau
winget install -e --id Tableau.Public

# 11. PowerBI
winget install -e --id Microsoft.PowerBI

# 12. Slack/Zoom
winget install -e --id SlackTechnologies.Slack
winget install -e --id Zoom.Zoom
```