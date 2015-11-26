require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Article creation" do 
  before(:all) do 
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.new_article')
  end
end

