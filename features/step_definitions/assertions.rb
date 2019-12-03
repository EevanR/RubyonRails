Then(/^I should see "([^"]*)"$/) do |content|
    expect(page).to have_content content
end

Then("I should be on the {string} page") do |article_title|
    article = Article.find_by(title: article_title)

    expect(current_path).to eq article_path(article)
end 