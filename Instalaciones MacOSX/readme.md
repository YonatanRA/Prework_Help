# Instalaciones para Mac OSX

En este documento te iremos guiando paso a paso para que realices todas las instalaciones necesarias en tu Mac y tengas tu ordenador listo para todo el bootcamp.

Ten paciencia, a veces se complica. Si una instalación te falla por cualquier razón no te preocupes, pasa a la siguiente y más tarde busca en Google como instalar esa aplicación. Recuerda que Google es tu mejor aliado.



# 1. Instalando Homebrew

Homebrew es un gestor de paquetes para macOS.

¿Y qué es eso del gestor de paquetes? Es una herramienta que nos permite instalar desde la terminal herramientas o complementos que no vengan de serie en el Mac. 

**Cómo instalar Brew**


1. Abre la aplicación **Terminal**.

3. Copia la siguiente línea de código:

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

3. Pégala en terminal y presiona la tecla **Enter**. Te pedirá un password, es el password de tu usuario de Mac.

4. Para confirmar la instalación y actulizar brew copia y pega la siguiente línea de código en la terminal y presiona Enter:

    ```bash
    brew update
    ```

Si no tienes instalado Xcode en tu Mac, es posible que tengas que instalar las herramientas de línea de comandos (CLI) de Xcode. Para ello basta con ejecutar el siguiente comando y después volver a intentar instalar Brew:
+  ```bash
    xcode-select --install
    ```


# 2. Git & github

Git es un sistema de control de versiones, que nos permitirá trabajar de manera colaborativa, haciendo fácil y óptimo el trabajo en equipo cuando estamos desarrollando software.

Github, en cambio, es un portal creado para alojar el código de las aplicaciones de cualquier desarrollador. La plataforma está creada para que los desarrolladores suban el código de sus aplicaciones y herramientas, y que como usuario no sólo puedas descargarte la aplicación, sino también entrar a su perfil para leer sobre ella o colaborar con su desarrollo.

**Instalación de git:** copia y pega la siguiente línea de código en la terminal y presiona la tecla Enter:
+ ```bash
    brew install git
    ```

2. Entra en https://github.com y create una cuenta.


# 3. Visual Studio Code

VsCode es un entorno de desarrollo integrado (IDE por las siglas en inglés), es un editor de código que se ejecuta en Windows, macOS y Linux. La elección principal para desarrolladores web y JavaScript, con extensiones para admitir casi cualquier lenguaje de programación.

**Instalación de VsCode:** copia y pega la siguiente línea de código en la terminal y presiona la tecla Enter:
+ ```bash
    brew install --cask visual-studio-code
    ```

# 4. Python & Jupyter

4.1 Instalando python. 

Probablemente ya tengas instalado python por defecto pero por si acaso pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install python3
    ```

4.2. Actualizando pip. 

pip es un sistema de gestión de paquetes utilizado para instalar y administrar paquetes de software escritos en Python. Muchos paquetes pueden ser encontrados en el [Python Package Index (PyPI)](https://pypi.org/). 

Para actualizarlo pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    pip3 install --upgrade --user pip
    ```


4.3. Instalando jupyter notebook

El Proyecto Jupyter es una organización sin ánimo de lucro creada para "desarrollar software de código abierto, estándares abiertos y servicios para computación interactiva en docenas de lenguajes de programación". Creado a partir de IPython en 2014 por Fernando Pérez, el proyecto Jupyter soporta entornos de ejecución en varias docenas de lenguajes de programación. El nombre del proyecto Jupyter es una referencia a los tres lenguajes de programación principales soportados por Jupyter, que son Julia, Python y R, y también un homenaje a los cuadernos de Galileo que registran el descubrimiento de los satélites de Júpiter. El proyecto Jupyter ha desarrollado y respaldado los productos de computación interactiva Jupyter Notebook, JupyterHub y JupyterLab, la versión de próxima generación de Jupyter Notebook. 

Para instalar jupyter notebook pega la siguiente línea de código en la terminal y presiona la tecla Enter:


+ ```bash
    pip3 install jupyter notebook
    ```



# 5. Anaconda

Anaconda es una distribución de los lenguajes de programación Python y R para computación científica (ciencia de datos, aplicaciones de Machine Learning, procesamiento de datos a gran escala, análisis predictivo, etc.).

Tiene como ventaja simplificar la gestión e implementación de paquetes. La distribución incluye paquetes de “data science” adecuados para Windows, Linux y macOS. 

Existen varias opciones: Anaconda Distribution o Anaconda Individual Edition son gratuitos para uso individual. Otros productos de la compañía son Anaconda Team Edition y Anaconda Enterprise Edition, ambos son comerciales, es decir no gratuitos.

Las versiones de paquetes en Anaconda son administradas por el sistema de gestión de paquetes conda. Este administrador de paquetes se separó como un paquete de código abierto separado, ya que terminó siendo útil por sí solo y para cosas distintas de Python. 

También hay una pequeña versión de arranque de Anaconda llamada Miniconda, que incluye solo conda, Python, los paquetes de los que dependen y un pequeño número de otros paquetes interesantes. Vamos a instalar este paquete, para ello pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask miniconda
    ```


# 6. MySQL

SQL es un acrónimo en inglés para Structured Query Language (Lenguaje de Consulta Estructurado). Un tipo de lenguaje de programación que te permite manipular y descargar datos de una base de datos. Tiene capacidad de hacer cálculos avanzados, álgebra e incluso machine learning. Es utilizado en la mayoría de empresas que almacenan datos en una base de datos. Ha sido y sigue siendo el lenguaje de programación más usado para bases de datos relacionales.

Para instalarlo, sigue los siguientes pasos:

1. Pega la siguiente línea de código en la terminal y presiona la tecla Enter para instalar MySQL:
+ ```bash
    brew install mysql
    ```

2. Una vez finalice, pega la siguiente línea de código en la terminal y presiona la tecla Enter para encender MySQL:
+ ```bash
    mysql.server start
    ```

3. Para que MySQL se encienda cuando enciendes el ordenador, pega la siguiente línea de código en la terminal y presiona la tecla Enter:
+ ```bash
    launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
    ```

4. Para entrar en MySQL y comprobar que todo ha ido bien pega la siguiente línea de código en la terminal y presiona la tecla Enter:
+ ```bash
    mysql -u root -p 
    ```
Si te pide un password es probablemente **admin**. Ahora estarás en una terminal pero de MySQL, lo podrás ver escrito a la izquierda.

5. Para cambiar el password, estando el la terminal de MySQL, pega de una en una las siguientes líneas de código:
+ ```bash
    USE mysql;
    ```
+ ```bash
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'tu_nuevo_password';
    ```
+ ```bash
    FLUSH PRIVILEGES;
    ```
+ ```bash
    QUIT;
    ```


# 7. Workbench

MySQL Workbench es un entorno gráfico de diseño de bases de datos, servidores, administración y mantenimiento para el sistema MySQL. Workbench permite a los desarrolladores, arquitectos de datos y demás clientes diseñar, modelar, gestionar y generar bases de datos de manera visual o gráfica, incluyendo todos los elementos necesarios para realizar modelos con un alto nivel de complejidad. Esta plataforma permite, además, obtener información o diseño a partir de un producto, con el objetivo de establecer cuáles son sus componentes, cómo interactúan entre sí y cómo fueron creados. Este proceso se conoce como ingeniería inversa o retro-ingeniería, y MySQL Workbench permite llevarlo a cabo entre una base de datos que esté activa y un esquema.

Para instalar Workbench pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask mysqlworkbench
    ```


# 8. DBeaver

DBeaver es un software que actúa como una herramienta de base de datos universal destinada a desarrolladores y administradores de bases de datos. DBeaver tiene una interfaz de usuario bien diseñada, la plataforma basada en un marco de código abierto y permite escribir múltiples extensiones, así como también es compatible con cualquier base de datos.

También incluye soporte para clientes nativos de MySQL y Oracle, administración de controladores, editor de SQL y formateo. DBeaver es una aplicación multiplataforma pues cuenta con soporte para las plataformas de MacOS , Windows y Linux.

Para instalar DBeaver pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask dbeaver-community
    ```


# 9. MongoDB

MongoDB es una base de datos de documentos que ofrece una gran escalabilidad y flexibilidad, y un modelo de consultas e indexación avanzado. El modelo de documentos de MongoDB resulta muy fácil de aprender y usar, y proporciona a los desarrolladores todas las funcionalidades que necesitan para satisfacer los requisitos más complejos a cualquier escala. 

Para instalar MongoDB pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install mongodb-community@6.0
    ```

Para iniciar MongoDB pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew services start mongodb-community@6.0
    ```


# 10. Compass

Es la interfaz gráfica para MongoDB. Compass es una herramienta interactiva para consultar, optimizar y analizar sus datos en MongoDB.

Para instalar Compass pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask mongodb-compass
    ```


# 11. Microsoft Excel

Excel es una hoja de cálculo que nos permite manipular datos numéricos y de texto en tablas formadas por la unión de filas y columnas. Una hoja de cálculo es lo que utilizaban los contadores para llevar registros, esto se utilizaba mucho antes de que aparecieran las computadoras. Las hojas de cálculo en programas informáticos aparecieron desde la década de 1960 y fueron desarrolladas para simular las hojas de trabajo contables, que se utilizaba en ese entonces y de esa manera automatizaban el trabajo contable.

Para instalar Excel pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask microsoft-excel
    ```


# 12. Tableau

Tableau es una herramienta de visualización de datos potente utilizada en el área de la Inteligencia de negocios. Simplifica los datos en bruto en un formato muy fácil de entender. La esencia de Tableau es simple y a la vez muy relevante: ayudar a las personas y empresas a ver y comprender todos sus datos. Y esto lo consigue ofreciendo a los usuarios toda una selección de herramientas útiles e intuitivas de inteligencia de negocios. A través de funciones simples como la de arrastrar y soltar, cualquier persona puede acceder y analizar de forma sencilla datos, e incluso, crear informes y compartir esta información con otros usuarios.

Para instalar Tableau pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask tableau-public
    ```


# 13 VirtualBox / UTM

Ambas herramientas son para virtualizar Microsoft Windows. Será necesario para usar Microsoft PowerBI.

Para los Mac con procesador Intel se usa VirtualBox. VirtualBox es una aplicación que sirve para hacer máquinas virtuales con instalaciones de sistemas operativos. Esto quiere decir que si tienes un ordenador con macOS, puedes crear una máquina virtual con cualquier otro sistema operativo para utilizarlo dentro del que estés usando.

[Tutorial instalación Win10 con VirtualBox](https://www.youtube.com/watch?v=HEL9Uw3AR9s&ab_channel=Benjamin%27sTech).

Para instalar VirtualBox pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask virtualbox
    ```


Para los Mac M1 o M2, con procesadores ARM, se usará UTM. UTM es una solución software para ejecutar distintos sistemas operativos sobre hardware Mac. Aunque oficialmente puede trabajar con sistemas operativos ARM64 también se pueden instalar versiones para procesadores PPC, ARM32, X86 y X64.

[Tutorial instalación Win10 con UTM](https://www.youtube.com/watch?v=KsNoGPczavw&ab_channel=CONATHFILMS).

Para instalar UTM pega la siguiente línea de código en la terminal y presiona la tecla Enter:

+ ```bash
    brew install --cask utm
    ```


Dentro de Windows se procederá a instalar [PowerBI](https://powerbi.microsoft.com/en-us/downloads/).


# 14. Slack/Zoom

Slack es una aplicación de mensajería para empresas que conecta a las personas con la información que necesitan.

Zoom es un servicio de videoconferencia basado en la nube que se puede utilizar para reunirse virtualmente con otras personas, ya sea por vídeo o solo por audio, o ambos, todo ello mientras se realizan chats en directo, y permite grabar esas sesiones para verlas más tarde. 

Para instalar ambas aplicaciones pega las siguientes líneas de código en la terminal y presiona la tecla Enter:
+ ```bash
    brew install --cask slack

    brew install --cask zoomus
    ```

# 15. Resumen
```bash
# 1. Instalando Xcode y Homebrew 
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# 2. Instalando Git
brew install git

# 3. Visual Studio Code
brew install --cask visual-studio-code

# 4. Python & Jupyter
brew install python3

pip3 install --upgrade --user pip

pip3 install jupyter notebook

# 5. Anaconda/MiniConda
brew install --cask miniconda

# 6. MySQL
brew install mysql
mysql.server start
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
mysql -u root -p 

USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'tu_nuevo_password';
FLUSH PRIVILEGES;
QUIT;

# 7. Workbench
brew install --cask mysqlworkbench

# 8. DBeaver
brew install --cask dbeaver-community

# 9. MongoDB
brew install mongodb-community@6.0
brew services start mongodb-community@6.0

# 10. Compass
brew install --cask mongodb-compass

# 11. Microsoft Excel
brew install --cask microsoft-excel

# 12. Tableau
brew install --cask tableau-public

# 13. VirtualBox / UTM
brew install --cask virtualbox

brew install --cask utm

# 14. Slack/Zoom
brew install --cask slack
brew install --cask zoomus
```

Puedes realizar todas las instalaciones ejecutando el archivo `instalacion_mac.sh`de la siguiente manera. Si, por ejemplo, pones el archivo en el Escritorio, el comando sería:

+ ```bash
    sh Desktop/instalacion_mac.sh
    ```