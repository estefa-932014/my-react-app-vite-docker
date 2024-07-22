# React + Vite

# #  Implementación de una Aplicación React con GitHub Pages
En este artículo, aprenderás a implementar tus sitios web estáticos en GitHub Pages utilizando el paquete NPM gh-pages.
Requisitos Previos
Para aprovechar al máximo este artículo, debes estar familiarizado con:
Cómo crear una aplicación React básica.
Creación de repositorios en GitHub.
Cómo trabajar con repositorios remotos en tu máquina local
Uso de Git para el control de versiones.
Instalación y Configuraciones Previas
Git
Node.js
Cuenta de usuario en GitHub
# # Parte 1: Creación de la Aplicación React
Iniciaremos creando el proyecto desde una terminal con Vite. Vite es una herramienta para iniciar rápidamente un proyecto a partir de una plantilla básica para frameworks populares como React, Angular, Vue, etc.
Copia y pega el siguiente comando en la terminal para iniciar la aplicación React. Este comando creará el proyecto con los módulos necesarios para empezar:

npm create vite@latest my-react-app-vite-ghpages --template react

Vite te pedirá que selecciones un marco. Selecciona React.

Vite también te pedirá que selecciones una variante. Selecciona JavaScript.

Cuando se complete la configuración, se verá así:

A continuación, importamos el proyecto en Visual Studio Code para ejecutar la inicialización del servidor de desarrollo y probar el proyecto.
Copia y pega el siguiente comando para probar la aplicación en el navegador:
Instala las dependencias ejecutando el comando:
npm install
Ejecuta el proyecto usando el comando:
npm run dev
Ahora tenemos un proyecto básico generado con Vite, una utilidad de compilación diseñada para mejorar la eficiencia y agilidad durante el desarrollo de proyectos web modernos.

# # Parte 2: Configurar el Repositorio de GitHub
Sigue estos pasos para crear un repositorio de GitHub:
Visita GitHub e inicia sesión en tu cuenta.
Haz clic en el botón "Nuevo" en la esquina superior derecha de la página.
Selecciona "Repositorio" en el menú desplegable.
Ingresa el nombre de tu repositorio en el campo "Nombre del repositorio".
(Opcional) En el campo "Descripción", ingresa una descripción para tu repositorio.
La visibilidad predeterminada del repositorio es "Pública", lo que significa que cualquiera puede ver y acceder a tu repositorio.
(Opcional) Selecciona la casilla de verificación "Inicializar este repositorio con un archivo README" para crear un archivo README en tu repositorio.
Después de crear exitosamente el repositorio, puedes enviar tu proyecto React al repositorio.

# # Parte 3: Preparación del Entorno Local para Desplegar Directamente la Aplicación a GitHub Pages desde la Consola
GitHub Pages es un servicio de alojamiento de sitios web estáticos proporcionado por GitHub. Utiliza archivos almacenados en un repositorio de GitHub para generar y mostrar un sitio web público. Este servicio es ideal para alojar páginas personales, organizacionales o de proyectos directamente desde un repositorio de GitHub. GitHub Pages soporta archivos estáticos como HTML, CSS y JavaScript, además de ser compatible con Jekyll, un generador de sitios estáticos que transforma archivos Markdown en HTML. Es comúnmente utilizado para hospedar portafolios personales, páginas de inicio de proyectos, documentación y blogs, proporcionando una manera sencilla de convertir repositorios de código en sitios web accesibles públicamente.
gh-pages es un módulo de Node.js que ofrece una herramienta de línea de comandos fácil de usar para desplegar archivos en una rama específica de GitHub Pages en tu repositorio. Simplifica el envío automatizado de tus recursos estáticos a la rama gh-pages de tu repositorio en GitHub, la cual GitHub Pages publica automáticamente. Este módulo es frecuentemente empleado junto con generadores de sitios o herramientas de compilación para facilitar la implementación de sitios web estáticos o aplicaciones web del lado del cliente.
Instala el módulo gh-pages con el siguiente comando:
npm install gh-pages


Configuración del package.json para Desplegar
Configura la propiedad homepage con la dirección habilitada por GitHub para alojar los sitios web estáticos.
GitHub Pages utiliza el siguiente formato de dominio para los proyectos: nombre-usuario.github.io/nombre-del-proyecto. Con dicha configuración, sabrás dónde estará alojada tu sitio web.

A continuación, ubica el archivo vite.config.js en tu repositorio local. Agrega la sección base al archivo con el nombre del proyecto.
base: "/my-react-app-vite-ghpages/"

Configura los scripts en el archivo package.json para compilar y desplegar la aplicación.

Cuando ejecutas el comando npm run build, se toma todo el código React y se convierte en una carpeta estática con archivos HTML, CSS y JavaScript del frontend. Cuando ejecutas npm run deploy, le estás indicando dónde está la carpeta que va a subir a GitHub Pages con el módulo gh-pages.

Ahora, dirígete a GitHub para ver la página web alojada:
Proyecto: app-react-ghpages
Configuración: Settings
Haz clic en la parte inferior izquierda en "Pages" y podrás ver el enlace que te brinda para ver el sitio web estático.

Abre la URL con el dominio suministrado por GitHub y podrás ver la página web publicada..

Conclusión.
Implementar una aplicación React en GitHub Pages utilizando Vite y el módulo gh-pages es un proceso sencillo y eficiente. Al seguir estos pasos, puedes transformar rápidamente tu proyecto React en un sitio web estático accesible públicamente. Esta metodología es particularmente útil para desarrolladores que buscan una manera fácil de compartir sus proyectos, documentaciones o portafolios en línea sin incurrir en costos adicionales de alojamiento. GitHub Pages proporciona una solución robusta y gratuita que, combinada con herramientas modernas como Vite, permite una experiencia de desarrollo ágil y productiva.
Referencias:
https://vitejs.dev/
https://pages.github.com/
https://www.npmjs.com/package/gh-pages

Aplicación para subir con Github Actions

