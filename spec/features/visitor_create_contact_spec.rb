require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Contact creation" do 
  scenario "allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content 'Contact us'
  end
end