Given("the following articles exists:") do |table|
  table.hashes.each do |user_attrs|
    if user_attrs.keys.include? 'author'
      user = User.find_by(email: user_attrs[:author])
      attrs = user_attrs.except('author').merge(author_id: user.id)
    else
      attrs = user_attrs
    end
    Article.create!(attrs)
  end
end

Given("the following users exist:") do |table|
  table.hashes.each do |user_attrs|
    User.create!(user_attrs)
  end
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)

  login_as(user, scope: :user)
end 

Given("I am on the Signed in page") do
  visit new_user_session_path
end

Given('I am on the edit page for {string}') do |article_title|
  article = Article.find_by(title: article_title)
  visit edit_article_path(article)
end

Given("the following comments exist:") do |table|
  table.hashes.each do |hash|
    user = User.find_by(email: "user2@mail.com")
    article = Article.find_by(title: "A breaking News Article")
    article.comments.create(body: hash[:body], user_id: user.id)
  end
end