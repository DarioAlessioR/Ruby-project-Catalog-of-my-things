![](https://img.shields.io/badge/Microverse-blueviolet)

# Project Name: Ruby-project-Catalog-of-my-things

## Project description:
A console app that help to keep a record of different types of things you own: books, music albums, and games

The app allow to:

- List all books
- List all music albums
- List all movies
- List of games
- List all genres (e.g 'Comedy', 'Thriller')
- List all labels (e.g. 'Gift', 'New')
- List all authors (e.g. 'Stephen King')
- List all sources (e.g. 'From a friend', 'Online shop')
- Add a book
- Add a music album
- Add a movie
- Add a game

All data is preserved by saving collections in .json files.

## Project Requirements:
Create the entities presented in this diagram:

![](images/uml_diagram.png)

- Logic

Each class from the UML class diagram should be created in a separate .rb file.

All associations (1-to-many relationships) and aggregations (parent-child relationships) between classes should be implemented.

All properties visible in the diagram should be defined and set up in the constructor method. Exception: properties for the 1-to-many relationships should NOT be set in the constructor method. Instead, they should have a custom setter method created.

All methods visible in the diagram should be implemented:

. add_item method (in all classes that have that method)

    should take an instance of the Item class as an input.
    should add the input item to the collection of items.
    should add self as a property of the item object (by using the correct setter from the item object).

. can_be_archived?() in the Item class

    should return true if published_date is older than 10 years.
    otherwise, it should return false.

. move_to_archive() in the Item class

    should reuse can_be_archived?() method.
    should change the archived property to true if the result of the can_be_archived?() method is true.
    should do nothing if the result of the can_be_archived?() method is false.

. can_be_archived?() in the Book class

    should override the method from the parent class.
    should return true if parent's method returns true OR if cover_state equals to "bad".
    otherwise, it should return false.

. can_be_archived?() in the MusicAlbum class

    should override the method from the parent class.
    should return true if parent's method returns true AND if on_spotify equals true.
    otherwise, it should return false.

. can_be_archived?() in the Movie class

    should override the method from the parent class.
    should return true if parent's method returns true OR if silent equals true.
    otherwise, it should return false.

. can_be_archived?() in the Game class

    should override the method from the parent class.
    should return true if parent's method returns true AND if last_played_at is older than 2 years.
    otherwise, it should return false.


Add unit tests for all implemented methods.

-Database

The schema.sql file: it has tables analogical to the structure of the app classes. Properties and associations from the parent Item class are added as table columns to all tables based on the child classes.

## Getting Started

Get a local copy by clonning this repo.

To run the code please use the "Code Runner" VSCode extension or
ruby main.rb in the terminal.

## Built With:
Major languages: Ruby, Postgresql
Technologies used: VSC, Github, Gitflow, RSpec

## Video presentation:

Please click the following link to watch the video presentation

https://www.loom.com/share/607de9f99904407a9e726ce15bdd8419

##  Authors
👤 Author1

Dario Alessio

GitHub: https://github.com/DarioAlessioR

Slack: https://microverse-students.slack.com/team/U039GCFRK9B

LinkedIn: https://www.linkedin.com/in/dario-alessio-3a3b7911b

## 🤝 Contributing:

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support:

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./LICENSE.md) licensed.