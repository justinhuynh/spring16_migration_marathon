acad = Book.create(title: "A Confederacy of Dunces", author: "John Kennedy Toole", rating: 100)
er = Book.create(title: "Eloquent Ruby", author: "Russ Olsen", rating: 100)
ejs = Book.create(title: "Eloquent JavaScript", author: "Marijn Haverbeke", rating: 100)
jh = Book.create(title: "The Autobiography of Justin Huynh", author: "Justin Huynh", rating: 100)

mmckv = Reader.create(full_name: "Matt McKelvey", email: "matt@mckelvey.com", phone_number: "1234567890")
patricia = Reader.create(full_name: "Patricia Chun", email: "patricia@chun.com", phone_number: "2345678901")
mg = Reader.create(full_name: "Mia Gaulin", email: "mia@gaulin.com", phone_number: "3456789012")

sf = Category.create(name: "Science Fiction")
hf = Category.create(name: "Historical Fiction")
tt = Category.create(name: "The Truth")
sal = Category.create(name: "Stories About Life")

Categorization.create(category: sf, book: jh)
Categorization.create(category: tt, book: jh)
Categorization.create(category: sal, book: jh)
Categorization.create(category: sal, book: ejs)
Categorization.create(category: sal, book: er)
Categorization.create(category: sal, book: acad)
Categorization.create(category: hf, book: er)

Checkout.create(book: acad, due_date: "2016/4/14", reader: mmckv)
Checkout.create(book: acad, due_date: "2017/4/14", reader: mg)
Checkout.create(book: ejs, due_date: "2017/7/14", reader: patricia)
Checkout.create(book: jh, due_date: "2017/5/14", reader: patricia)
