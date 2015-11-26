require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Article update" do 
  before(:each) do 
    sign_up
    @article = create(:article, title: 'mike1', text: 'Lorem Ipsum hum hum')
  end

  scenario "allows user to visit edit article page" do
    # path = article_path(@article) + '/edit'
    # visit path
    visit article_path(@article) + '/edit'

    expect(page).to have_content 'Lorem Ipsum hum hum'
    #visit (article_path(@article) + '/edit')
  end


  scenario "allows user to update article" do
    visit article_path(@article) + '/edit'

    new_msg = 'New test message!!!'
    # will find by input edit id="contact_email". Use inspect element on page to see this name
    fill_in :article_text, :with => new_msg

    click_button 'Save Article' #I18n.t('articles.save_article')

    expect(page).to have_content new_msg
  end



end

