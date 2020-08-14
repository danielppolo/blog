require 'open-uri'

file = URI.open('https://images.unsplash.com/photo-1597389463089-ce511f6cb229?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2700&q=80')
article = Article.new(title: 'NES', body: 'A great console')
article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
article.save
