# Pong_videogame
Pong videogame developed on Processing(Java)

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/carlosepb/Pong_videogame">
    <img src="images/logo.png" alt="Logo" width="200" height="70">
  </a>

  <h3 align="center">Videojuego Pong</h3>

  <p align="center">
    ¡Videojuego PONG desarrollado en Processing3!
    <br />
      <a href="https://github.com/carlosepb/Pong_videogame"><strong>Explorar repositorio»</strong></a>
    <br />
    <br />
      <a href="https://github.com/carlosepb/Pong_videogame/blob/main/images/animation_pong.gif">Ver Demo</a>
      ·
      <a href="https://github.com/carlosepb/Pong_videogame/issues">Reportar Error</a>
      ·
      <a href="https://github.com/carlosepb/Pong_videogame/issues">Solicitar Colaboración</a>
    </p>
  </p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Tabla de Contenido</summary>
  <ol>
    <li>
      <a href="#sobre-el-proyecto">Sobre el Proyecto</a>
      <ul>
        <li><a href="#herramientas-de-desarrollo">Herramientas de Desarrollo</a></li>
      </ul>
    </li>
    <li>
      <a href="#empezando">Empezando</a>
      <ul>
        <li><a href="#prerrequisitos">Prerrequisitos</a></li>
        <li><a href="#instalación">Instalación</a></li>
      </ul>
    </li>
    <li><a href="#hoja-de-ruta">Hoja de Ruta</a></li>
    <li><a href="#licencia">Licencia</a></li>
    <li><a href="#contacto">Contacto</a></li>
    <li><a href="#agradecimientos">Agradecimientos</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Sobre el Proyecto

Se trata del desarrollo del videojuego PONG para dos jugadores, el jugador de la izquierda se desplazará utilizando las teclas “q” para subir y “a” para bajar (en minúscula siempre) y el jugador de la derecha hará lo propio utilizando la flecha arriba y la flecha abajo. Para pausar el juego o empezar se utilizará la tecla espacio (imagen_1.0).

<p align="center"><img src="images/Pause.JPG" alt="pause" width="500" height="300"></br>imagen_1.0(Pause)</p>

El juego cuenta con dos marcadores que se incrementarán al marcar un gol al jugador contrarío. Al encajar un gol el balón volverá al centro saliendo impulsado hacia el jugador que acaba de marcar un gol (imagen_2.0).

<p align="center"><img src="images/gamePlay.JPG" alt="gamePlay" width="500" height="300"></br>imagen_2.0(Jugando)</p>

El saque inicial será siempre hacia el jugador de la derecha llevando una trayectoria y velocidad aleatoria siendo siempre una que no impida que el jugador pueda devolver la pelota, la cual incrementará su velocidad en cada remate (imagen_3.0).

<p align="center"><img src="images/animation_pong.gif" alt="gamePlay" width="500" height="300"></br>imagen_3.0(Saque)</p>

El juego termina cuando uno de los jugadores llega a 10 puntos.

### Herramientas de Desarrollo

* [Processing3](https://processing.org/download/)

<!-- GETTING STARTED -->
## Empezando

Para modificar la aplicación necesitarás instalar el entorno de desarrollo Processing3 y las herramientas Sound y GifAnimation.

### Prerrequisitos

* Descargar y descomprimir Processing3, lo puedes encontrar [aquí](https://processing.org/download/)

### Instalación

1. Instalar previamente la biblioteca de sonido de la Processing Foundation
    * Herramientas->Añadir herramientas
    * Buscar Sound en la pestaña Libraries.
    * Install
2.  exportar a un archivo con formato gif animado, es necesario instalar GifAnimation a través https://github.com/extrapixel/gif-animation
   

<!-- ROADMAP -->
## Hoja de Ruta

Planes para la versión 0.2:

* Mejorar sistema de colisiones de la pelota con las raquetas.
* Añadir celebración de gol al anotar un gol.
* Añadir mensaje de celebración al llegar un jugador a los 10 goles.
* Mejoras de estabilidad.

Planes para la versión 0.3:

* Ajustar tamaño de pelota.
* Cambiar colores de los jugadores.
* Añadir nuevas pistas de juego.

<!-- LICENSE -->
## Licencia

Software completamente libre para copiar o distribuir.

<!-- CONTACT -->
## Contacto

Carlos Eduardo Pacichana Bastidas - carlos.eduardo.pacichana@gmail.com  carlos.pacichana101@alu.ulpgc.es

Enlace al proyecto: [https://github.com/carlosepb/Pong_videogame](https://github.com/carlosepb/Pong_videogame)

<!-- ACKNOWLEDGEMENTS -->
## Agradecimientos
* [Processing](https://processing.org/)
* [Freewavesamples](https://freewavesamples.com/)
* [Gif-animation](https://github.com/extrapixel/gif-animation)
* [Funprogramming](https://funprogramming.org/)
* [Text](https://processing.org/reference/text_.html)
