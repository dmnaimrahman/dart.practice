class Document {
  String content;
  Document(this.content);
}

mixin Printable on Document {
  void display() {
    print('Printing Document Content: $content');
  }
}

class Invoice extends Document with Printable {
  Invoice(String content) : super(content);
}

class Report extends Document with Printable {
  Report(String content) : super(content);
}

void main() {
  Invoice inv = Invoice('Invoice #1234 - Total: \$500');
  Report rep = Report('Monthly Sales Report - Q1 2026');

  inv.display();
  rep.display();
}
