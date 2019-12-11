## Active Record migrations etc

Create a migration using a generator. Exampl:
```
$ rails g migration add_image_url_to_articles
```
Deleting a migration using a generator:
```
$ rails d migration add_image_url_to_articles
```

Adding a new attribute.

Add `image_url` as a string to the `articles` table:
```
$ rails g migration add_image_url_to_articles image_url:string
```
Once the migration has been created, I have to run the code and modify the db:
```
$ rails db:migrate
```
Create Category model:
```
$ rails g model Category title:string
```
Once model is created, run code to modify db again.

Afterwards, create an association between category and article, stating how every article fits into a category, and every category cantains a number of articles. Use the following code:
In models/category.rb
```
has_many :articles
```
In models/article.rb
```
belongs_to :categories
```
Create reference between articles and category
```
$ rails g migration add_category_to_articles category:references
```
```
rails db:migrate
```

If you make changes to migrations that break everything can issue code:
```
rails db:drop
```
then
```
rails db:create db:migrate
```

Try class creation through console
```
rails c
```
use `.create` to save new class instance to variable
```
article = Article.create(title: "Big News", content: "", image_url: "")
```
Empty values may cause errors. To see error messages:
```
article.errors.full_messages
```
Call specific property of saved article and save a value to it:
```
article.content = "string"
```

Still missing the category. Create new category, save to variabe, save category to appropriate property.
```
sports = Category.create(title: "Sports")
article.category = sports
article.save
```