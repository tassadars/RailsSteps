require "spec_helper"

# EXAMPLES https://github.com/jnicklas/capybara#using-capybara-with-rspec
feature "Contact creation" do 
  scenario "allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content  I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'

    # will find by input edit id="contact_email". Use inspect element on page to see this name
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'Something' 

    click_button I18n.t('contacts.send_message')

    expect(page).to have_content I18n.t('contacts.thanks')
  end
end