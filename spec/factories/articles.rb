FactoryGirl.define do 
  factory :article do
    title "Article title"
    text "Atricle text"

    # create factory with name article_with_comments for creation article with few comments 
    factory :article_with_comments do
      # after article creation
      after :create do |article, evaluator|
        # create list of 3 comments
        create_list :comment, 3, article: article
      end
    end
  end
end
