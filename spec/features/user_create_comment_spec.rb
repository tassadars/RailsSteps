require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Comment creation" do 
  before(:each) do 
    sign_up
    @article = create(:article, title: 'Lorem Ipsum')
  end

  scenario "allows user to visit new comment page" do
    visit article_path(@article)
    expect(page).to have_content 'Lorem Ipsum'
  end

  scenario "allows user to create new comment for article" do
    visit article_path(@article)

    msg = 'Test message!!!'
    # will find by input edit id="contact_email". Use inspect element on page to see this name
    fill_in :comment_body, :with => msg

    click_button 'Create Comment' #I18n.t('articles.save_article')

    expect(page).to have_content msg
  end

end

