require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Article creation" do 
  before(:each) do 
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.new_article')
  end

  scenario "allows user to create new article page" do
    visit new_article_path

    msg = 'Test message'
    # will find by input edit id="contact_email". Use inspect element on page to see this name
    fill_in :article_text, :with => msg

    click_button 'Save Article' #I18n.t('articles.save_article')

    expect(page).to have_content msg
  end

end

