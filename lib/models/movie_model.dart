class MovieModel {
  String title;
  int year;
  String genre;
  String director;
  List<String> casts;
  double rating;
  String synopsis;
  String imgUrl;
  String movieUrl;
  bool isfav;
  String lastRev;

  MovieModel({
    required this.title,
    required this.year,
    required this.genre,
    required this.director,
    required this.casts,
    required this.rating,
    required this.synopsis,
    required this.imgUrl,
    required this.movieUrl,
    required this.isfav,
    required this.lastRev
  });
}

List<MovieModel> movieList = [
  MovieModel(
  title: "Inception",
  year: 2010,
  genre: "Sci-Fi",
  director: "Christopher Nolan",
  casts: ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Elliot Page"],
  rating: 8.8,
  synopsis:
      "A skilled thief who specializes in corporate espionage is given a final job that could grant him redemption: to plant an idea deep within a target's subconscious. As his team delves into the dream world, reality and illusion blur, making the mission increasingly dangerous.",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BMTM0MjUzNjkwMl5BMl5BanBnXkFtZTcwNjY0OTk1Mw@@._V1_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Inception",
  isfav: false,
  lastRev: "Amazing concept and mind-bending storyline.",
),

MovieModel(
  title: "The Shawshank Redemption",
  year: 1994,
  genre: "Drama",
  director: "Frank Darabont",
  casts: ["Tim Robbins", "Morgan Freeman"],
  rating: 9.3,
  synopsis:
      "Andy Dufresne, a banker wrongly convicted of murder...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/The_Shawshank_Redemption",
  isfav: false,
  lastRev: "A powerful story about hope and friendship.",
),

MovieModel(
  title: "Interstellar",
  year: 2014,
  genre: "Sci-Fi",
  director: "Christopher Nolan",
  casts: ["Matthew McConaughey", "Anne Hathaway", "Jessica Chastain"],
  rating: 8.6,
  synopsis:
      "In a dystopian future where Earth is slowly becoming uninhabitable...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Interstellar_(film)",
  isfav: false,
  lastRev: "Emotional sci-fi journey with stunning visuals.",
),

MovieModel(
  title: "The Dark Knight",
  year: 2008,
  genre: "Action",
  director: "Christopher Nolan",
  casts: ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
  rating: 9.0,
  synopsis:
      "With Gotham under threat from the enigmatic and chaotic Joker...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/The_Dark_Knight",
  isfav: false,
  lastRev: "One of the best superhero movies ever made.",
),

MovieModel(
  title: "Forrest Gump",
  year: 1994,
  genre: "Drama",
  director: "Robert Zemeckis",
  casts: ["Tom Hanks", "Robin Wright", "Gary Sinise"],
  rating: 8.8,
  synopsis:
      "Forrest Gump, a kind-hearted and simple man with a low IQ...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Forrest_Gump",
  isfav: false,
  lastRev: "Heartwarming story with unforgettable moments.",
),

MovieModel(
  title: "The Matrix",
  year: 1999,
  genre: "Sci-Fi",
  director: "Lana Wachowski, Lilly Wachowski",
  casts: ["Keanu Reeves", "Laurence Fishburne", "Carrie-Anne Moss"],
  rating: 8.7,
  synopsis:
      "Neo, a computer hacker, discovers that the world he lives in is a simulated reality...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BN2NmN2VhMTQtMDNiOS00NDlhLTliMjgtODE2ZTY0ODQyNDRhXkEyXkFqcGc@._V1_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/The_Matrix",
  isfav: false,
  lastRev: "Revolutionary sci-fi that changed cinema.",
),

MovieModel(
  title: "The Godfather",
  year: 1972,
  genre: "Crime",
  director: "Francis Ford Coppola",
  casts: ["Marlon Brando", "Al Pacino", "James Caan"],
  rating: 9.2,
  synopsis:
      "The aging patriarch of the Corleone crime family hands over control...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BNGEwYjgwOGQtYjg5ZS00Njc1LTk2ZGEtM2QwZWQ2NjdhZTE5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/The_Godfather",
  isfav: false,
  lastRev: "A timeless masterpiece of crime drama.",
),

MovieModel(
  title: "Titanic",
  year: 1997,
  genre: "Romance",
  director: "James Cameron",
  casts: ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],
  rating: 7.8,
  synopsis:
      "A young aristocrat falls in love with a struggling artist aboard the ill-fated Titanic...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BYzYyN2FiZmUtYWYzMy00MzViLWJkZTMtOGY1ZjgzNWMwN2YxXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Titanic_(1997_film)",
  isfav: false,
  lastRev: "A tragic love story set in a historical disaster.",
),

MovieModel(
  title: "Pulp Fiction",
  year: 1994,
  genre: "Crime",
  director: "Quentin Tarantino",
  casts: ["John Travolta", "Uma Thurman", "Samuel L. Jackson"],
  rating: 8.9,
  synopsis:
      "A series of interwoven stories about crime, redemption, and fate...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BYTViYTE3ZGQtNDBlMC00ZTAyLTkyODMtZGRiZDg0MjA2YThkXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Pulp_Fiction",
  isfav: false,
  lastRev: "Stylish storytelling with iconic dialogue.",
),

MovieModel(
  title: "Avatar",
  year: 2009,
  genre: "Sci-Fi",
  director: "James Cameron",
  casts: ["Sam Worthington", "Zoe Saldana", "Sigourney Weaver"],
  rating: 7.8,
  synopsis:
      "In the distant world of Pandora, a paraplegic Marine...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BMDEzMmQwZjctZWU2My00MWNlLWE0NjItMDJlYTRlNGJiZjcyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Avatar_(2009_film)",
  isfav: false,
  lastRev: "Visually stunning world with immersive storytelling.",
),

MovieModel(
  title: "The Lord of the Rings: The Fellowship of the Ring",
  year: 2001,
  genre: "Fantasy",
  director: "Peter Jackson",
  casts: ["Elijah Wood", "Ian McKellen", "Viggo Mortensen"],
  rating: 8.8,
  synopsis:
      "A young hobbit, Frodo Baggins, inherits a powerful ring...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BNzIxMDQ2YTctNDY4MC00ZTRhLTk4ODQtMTVlOWY4NTdiYmMwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl:
      "https://en.wikipedia.org/wiki/The_Lord_of_the_Rings:_The_Fellowship_of_the_Ring",
  isfav: false,
  lastRev: "Epic fantasy adventure with incredible world-building.",
),

MovieModel(
  title: "Fight Club",
  year: 1999,
  genre: "Drama",
  director: "David Fincher",
  casts: ["Brad Pitt", "Edward Norton", "Helena Bonham Carter"],
  rating: 8.8,
  synopsis:
      "An insomniac office worker struggling with his mundane life...",
  imgUrl:
      "https://m.media-amazon.com/images/M/MV5BOTgyOGQ1NDItNGU3Ny00MjU3LTg2YWEtNmEyYjBiMjI1Y2M5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  movieUrl: "https://en.wikipedia.org/wiki/Fight_Club",
  isfav: false,
  lastRev: "A dark and thought-provoking cult classic.",
),
];
