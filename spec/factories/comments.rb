FactoryBot.define do
  factory :comment do
    author { 'Aramis' }
    sequence(:body) { |n| "comments body #{n}"}
  end
end