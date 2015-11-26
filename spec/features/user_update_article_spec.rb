require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Article update" do 
  before(:each) do 
    sign_up
    @article = create(:article, title: 'Some bug if not to initialize this field', text: 'Lorem Ipsum hum hum')
  end

  scenario "allows user to visit edit article page" do
    # path = article_path(@article) + '/edit'
    # visit path
    visit article_path(@article) + '/edit'

    expect(page).to have_content 'Lorem Ipsum hum hum'
    #visit (article_path(@article) + '/edit')
  end


end

