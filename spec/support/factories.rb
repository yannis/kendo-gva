FactoryGirl.define do

  sequence(:integer) { |n| n }

  factory :teacher do
    name { Faker::Name.name}
    grade {1}
  end

  factory :startdate do
    start_on {1.month.since}
  end

  factory :user do
    first_name { Faker::Name.first_name}
    last_name { Faker::Name.last_name}
    email {Faker::Internet.email}
    password { Faker::Internet.password(8) }
    password_confirmation {|a| a.password}
    confirmed_at {Time.current}
  end
end
