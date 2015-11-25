require "spec_helper"

describe Comment do 
  it { should belong_to :article }     

  describe "validations" do
    it { should validate_length_of(:author).is_at_most(140) }
    it { should validate_length_of(:body).is_at_most(4000) } 
  end
end
 