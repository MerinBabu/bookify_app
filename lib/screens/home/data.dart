class Book {
  String title,
      writer,
      price,
      image,
      description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  int pages;
  double rating;

  Book(this.title, this.writer, this.price, this.image, this.rating,
      this.pages);
}

final List<Book> books=[
  Book('A Portrait of the Artist as a Young Man','James Joyce','15 USD','res/a_portrait_of_the_artist_as_a_young_man.jpg',3.5,123),
  Book('A Tale of Two Cities','Charles Dickens','20 USD','res/a_tale_of_two_cities.jpg',3.5,123),
  Book('A Thousand Splendid Suns','Khaled Hosseini','18 USD','res/a_thousand_splendid_suns.jpg',3.5,123),
  Book('Emma','Jane Austen','25 USD','res/emma.jpg',3.5,123),
  Book('Jane Eyre','Jane Austen','20 USD','res/jane_eyre.jpg',3.5,123),
  Book('Kite Runner','Khaled Hosseini','13 USD','res/kite_runner.jpg',3.5,123),
  Book('Misery','Stephen King','12 USD','res/misery.jpg',3.5,123),
  Book('The Great Gatsby','F.Scott Fitzgerald','20 USD','res/the_great_gatsby.jpg',3.5,123),
  Book('The Old Man and The Sea','Ernest Hemingway','25 USD','res/the_old_man_and_the_sea.jpg',3.5,123),
  Book('The Time Machine','H.G Wells','12 USD','res/the_time_machine.jpg',3.5,123),
  Book('To Kill a Mocking Bird','Harper Lee','15 USD','res/to_kill_a_mockingbird.jpg',3.5,123),
  Book('1984','George Orwell','20 USD','res/1984.jpg',3.5,123)
];



