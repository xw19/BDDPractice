FactoryGirl.define do
  factory :article do
    title { generate(:title) }
    body { generate(:body) }
  end


  sequence :title do |n|
    "Article #{n} #{Time.now}"
  end

  sequence :body do |n|
    "Lorem ipsum sit amet #{n} #{Time.now}"
  end
end
