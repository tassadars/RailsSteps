class ContactsController < ApplicationController

  def new
  end

  def create
    # we change params[:contact] to contact_params. Receive params from browser in safe way
    @contact = Contact.new(contact_params)    
    @contact.save
  end

  private

  # safe way to permit params from browser
  def contact_params
    params.require(:contact).permit(:email, :message)  
  end

end
