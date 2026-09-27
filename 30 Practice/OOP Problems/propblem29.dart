class Book {
  String title;
  String author;
  bool _isIssued = false;

  Book(this.title, this.author);

  bool get isIssued => _isIssued;

  void markIssued() => _isIssued = true;
  void markReturned() => _isIssued = false;
}

class Member {
  String name;
  int memberId;
  List<Book> borrowedBooks = [];

  Member(this.name, this.memberId);
}

class Library {
  List<Book> books = [];
  List<Member> members = [];

  void addBook(Book book) => books.add(book);
  void registerMember(Member member) => members.add(member);

  void issueBook(Member member, Book book) {
    if (!book.isIssued) {
      book.markIssued();
      member.borrowedBooks.add(book);
      print('${book.title} issued to ${member.name}');
    } else {
      print('${book.title} is already issued.');
    }
  }

  void returnBook(Member member, Book book) {
    if (member.borrowedBooks.contains(book)) {
      book.markReturned();
      member.borrowedBooks.remove(book);
      print('${book.title} returned by ${member.name}');
    } else {
      print('${member.name} did not borrow ${book.title}.');
    }
  }
}

void main() {
  Library library = Library();

  Book b1 = Book('Clean Code', 'Robert C. Martin');
  Book b2 = Book('The Pragmatic Programmer', 'Andy Hunt');
  library.addBook(b1);
  library.addBook(b2);

  Member m1 = Member('Shanto', 1);
  library.registerMember(m1);

  library.issueBook(m1, b1);
  library.issueBook(m1, b1); // already issued
  library.returnBook(m1, b1);
  library.returnBook(m1, b2); // not borrowed
}
