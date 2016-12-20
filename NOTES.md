## Review Basic Forms

1. Create a Genre with a Name
  + As a user, I should be able to fill out a form with a genre name to create it...
2. Add authors to our Book form
3. Add Genres to our Book form



## Quiz Review Notes

____id___| book_id | author_id
     1   |    2    |    3



Books

id |  title
2      In The Woods



Authors

 id | name
3      Tana French


```ruby
class Author < ActiveRecord::Base
  has_many :books
end

a = Author.find_by(name: 'Mark Twain')
a.books





students = Student.select(:name).joins(:teachers).where(teachers: {name: 'bob'});



```
