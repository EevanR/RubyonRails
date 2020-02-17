Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Then("I should be on the {string} page") do |article_title|
  article = Article.find_by(title: article_title)

  expect(current_path).to eq article_path(article)
end 

Then("I should not see {string}") do |element|
  expect(page).not_to have_content element
end

Then("I should be on the edit page for {string}") do |article_title|
  article = Article.find_by(title: article_title)
  expect(current_path).to eq edit_article_path(article)
end

Then("I should see a list of articles") do
  articles = Article.all
  expect(articles.length).to eq 2
end