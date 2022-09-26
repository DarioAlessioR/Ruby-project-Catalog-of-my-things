Mas que instrucciones, esta es la forma como funciona el proyecto:

Se inicia todo desde el terminal por el comando: ruby main.rb

Este llama al metodo main que esta en archivo main.rb.

Y este metodo crea un app usando la clase App.new, y luego llama al metodo run de dicha clase.

Cuando se inicializa el objeto app de la clase App, lo primero que ocurre es que se crean las variables:

    @books = load_books
    @games = load_games
    @music_list = load_musics
    @authors = load_authors(@books, @games, @music_list)
    @labels = load_labels(@books, @games, @music_list)
    @genres = load_genres(@books, @games, @music_list)


Cada variable sera igual a un array que se forma llamando a los metodos load_books, load_games, etc.

Esos metodos se encuentran en los archivos read_books.rb, read_games.rb, etc, que se encuentran en el directorio data/load_data.

Cuando se ejecutan los metodos load_books, load_games, etc, el programa trae la data que se encuentra enn los archivos boos.json, games.json, que se encuentran en el directorio data/data_json/. Esos archivos contienen los arrays en formato json con la data que el usuario ha guardado previamente.

De manera que cuando el usuario llama a ruby main.rb, el programa lo primero que hace es cargar en las variables @books, @games, etc, lo que previamente ya habia sido guardado en alguna sesion anterior por el usuario. Y cuando se pide listar la informacion disponible de cada item, esa es la primera informacion que se muestra.

Como ya dijimos, luego de inicializar esas variables, se llama al metodo run de app.

Ese metodo run solo corre un metodo llamado menu, que se encuentra en el archivo menu_options.rb, y que es el que presenta el primer menu en el terminal al usuario:

Welcome to the Catalog of Things App!!

Please, enter a number from the following list to continue:

1) List items
2) Add items
3) Exit from app

El metodo run no solo presenta ese primer menu, sino que llama al siguiente metodo (run_options) que presenta el segundo menu de acuerdo a la indicacion del usuario, y luego este llama a un tercer metodo para un siguiente menu.


Please, enter a number from the following list to continue:

1) List all books
2) List all music albums
3) List all games
4) List all genres
5) List all labels
6) List all authors
7) Back to main menu


Please, enter a number from the following list to continue:

1) Add books
2) Add music albums
3) Add games
4) Back to main menu


Todos esos metodos estan en menu_options.rb, incluido el metodo para el exit de la app. 

Este metodo, exit_from_app, es el encargado de desconectar de la app al usuario, pero antes de hacerlo, llama al metodo que guarda toda la data en los archivos books.json, games.json, etc. El metodo para ello es write_data, y se encuentra en el archivo write_data.rb, dentro de la carpeta data/preserve_data/.

Cuando el usuario elige exit, y se ejecuta write_data, este metodo corre varios metodos (6), para guardar la data en los archivos json. Esos metodos son:

  write_books(books)
  write_albums(musics)
  write_games(games)
  write_authors(authors)
  write_labels(labels)
  write_genres(genres)

Si el usuario elige Add items, se le presentan las opciones para agregar items. dependiendo de cual elije, se corren los siguientes metodos:

add_a_book_menu
add_a_music_album_menu
add_a_game_menu

Esos metodos se encuentran en el archivo add_methods.rb, y cada uno de ellos hace uso de las clases Book, Game, Author, etc, para crear los items que se quieren agregar.

Esas clases estan en los archivos book.rb, game.rb, author.rb, etc.

Si el usuario elige listar los items, se llaman a los metodos:

list_all_books
list_all_music_albums
list_all_games
list_all_genres
list_all_labels
list_all_authors

Esos metodos se encuentran en el archivo list_methods.rb.

Hay un archivo schema, el cual contiene codigo para crear las tablas que se necesitaria para operar el sistema, pero no esta vinculado al codigo de ruby, por lo que no tiene utilidad practica (solo fue un requisito de Microverse agregarlo).





