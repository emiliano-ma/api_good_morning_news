FactoryBot.define do
  factory :article do
    title { "MyString" }
    teaser { "MyText" }
    content { "MyContent" }
    category { "sports" }
    association :journalist, factory: :user
    trait :with_image do
      image { fixture_file_upload(Rails.root.join("spec", "support", "assets", "test.jpg"), "image/jpg") }
    end
  end
end
