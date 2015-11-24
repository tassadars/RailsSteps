FactoryGirl.define do 
  factory :comment do
    author "mike"
    # will make different comments each time
    sequence(:body) { |n| "comment body #{n}" }
  end
end
