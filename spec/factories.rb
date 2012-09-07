FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :user do
    email
    password "test123"
    role "support"
  end

  factory :ticket do 
    subject "Test"
    description "Test description"
    status "Pending"
    ticket_type "Bug"
    user
  end
end