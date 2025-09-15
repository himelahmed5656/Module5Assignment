// Book class definition
class Book {
  String title;
  String author;
  double price;

  // Constructor
  Book(this.title, this.author, this.price);

  // Method to calculate discounted price
  double discountedPrice(double discountPercent) {
    return price - (price * discountPercent / 100);
  }

  // Method to display book details
  void display(double discountPercent) {
    print("Title: $title");
    print("Author: $author");
    print("Original Price: \$${price.toStringAsFixed(2)}");
    print("Discounted Price (${discountPercent}% off): "
        "\$${discountedPrice(discountPercent).toStringAsFixed(2)}");

  }
}

void main() {
  // Creating book objects
  Book book1 = Book("Clean Code", "Robert C. Martin", 30.0);
  Book book2 = Book("The Pragmatic Programmer", "Andrew Hunt", 45.0);

  book1.display(10); // 10% discount
  book2.display(15); // 15% discount
}
