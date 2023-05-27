<a name="readme-top"></a>

<p align="center">
  <img src="https://raw.githubusercontent.com/AlexisRodriguezCS/Movie/master/images/Movie.jpg" alt="Grid" style="display:block;margin:auto;" height="500">
</p>
<h1 align="center">Movie</h1>

<!-- TABLE OF CONTENTS -->
<p align="center">
  <a href="#about">About The Project</a> •
  <a href="#install">How To Install and Run</a> •
  <a href="#use">How To Use</a> •
  <a href="#contact">Contact</a>
</p>

<a name="about"></a>

# About This Project

This project is a Movie App developed using the Flutter framework. It allows users to browse a list of movies and view detailed information about each movie, including directors, movie stars, duration, IMDb rating, and Rotten Tomatoes rating.

The project consists of four files:

- main.dart: This file contains the entry point of the application and defines the main MyApp widget. It sets up the Flutter app, including the theme and home page.

- list_view.dart: This file defines the MovieList widget, which displays a list of movies. It uses a ListView.separated widget to render each movie item with its corresponding information, such as title, genre, director, and release date. It also handles user interactions, such as tapping on a movie to view its details and long-pressing to show a popup menu with options for more information.

- third_screen.dart: This file defines the ThirdScreen widget, which displays detailed information about a selected movie. It receives the movie's index as a parameter and retrieves the relevant information from predefined lists. The widget displays the movie's directors, movie stars, duration, IMDb rating, and Rotten Tomatoes rating.

- image_view.dart: This file defines the ImageItem widget, which displays a full-size image of a selected movie. It receives the movie's index as a parameter and displays the corresponding image using the Image widget.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<a name="install"></a>

# How to Install and Run


To install and run the Movie App project, follow these steps:

1.  Ensure that you have Flutter and Dart installed on your machine. For installation instructions, refer to the official Flutter documentation.

2.  Clone the project repository or download the project files to your local machine.

3.  Open a terminal or command prompt and navigate to the project directory.

4.  Run the following command to retrieve the project dependencies:

        flutter pub get

5.  Connect a device or start an emulator.

6.  Run the following command to launch the app:

            flutter run

        This command will build the app and install it on the connected device or emulator. The app will start automatically, and you can interact with it using the provided user interface.

    <p align="right">(<a href="#readme-top">back to top</a>)</p>

<a name="use"></a>

# How to Use

Once the Movie App is running, follow these instructions to use the app:

- The app displays a list of movies on the main screen. Scroll through the list to browse the available movies.

- Tap on a movie item to view its detailed information on a new screen.

- On the detailed information screen, you can see the movie's directors, movie stars, duration, IMDb rating, and Rotten Tomatoes rating.

- Long-press on a movie item to show a popup menu with additional options.

- Select "More Info" to view more details about the selected movie.

- Select "Wikipedia" to open the movie's Wikipedia page in a web browser.

- Select "IMDb" to open the movie's IMDb page in a web browser.

- To view a full-size image of a movie, tap on the movie's item on the main screen. This will open a new screen displaying the selected movie's image.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

<a name="contact"></a>

# Contact

Alexis Rodriguez - [LinkedIn](https://www.linkedin.com/in/alexisrodriguezcs/) - alexisrodriguezdev@gmail.com

Project Link: [https://github.com/AlexisRodriguezCS/Movie](https://github.com/AlexisRodriguezCS/Movie)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
