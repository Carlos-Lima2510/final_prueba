# Ejercicio de Biblioteca Digital

## Requerimientos:

Se realizará una base de datos para un sistema de gestión de una biblioteca digital. El sistema debe gestionar información sobre los libros, los usuarios de la biblioteca, los autores, generos literarios y los prestamos de libros.


La biblioteca tiene un sistema donde los clientes pueden hacer prestamos de los diferentes libros que tienen a su disposición. La biblioteca tiene usuarios registrados que pueden pedir libros prestados y cada usuario tiene un nombre, correo electrónico y fecha de registro. La fecha de registro debe introducirse al mismo momento en que se hace la prestación del libro y una duración en dias del prestamo. Pero el sistema también solicita ingresar una fecha de fin de prestamo.

Cada libro de la biblioteca tiene un título, un año de publicación, una editorial y un número de ejemplares disponibles. Los libros pueden tener varios generos literarios, pero no necesariamente siempre tienen mas de 1. 

Así como los géneros, los libros tienen autores, pero no necesariamente solo 1 autor. Los autores tienen un nombre y el sistema también solicita que se ingrese el país de origen de los autores y sus fechas de nacimiento. Como dato adicional, pide la edad del autor cuando escribió el libro.

Se pide que el sistema acepte todo tipo de simbolos, a excepción de emojis en todo el sistema. Es importante tomar en cuenta también que al agregar los titulos de los libros *NO* se puede ingresar sin mayúsculas, por lo que debe detectar al momento que se ingresa mal el título de un libro.
