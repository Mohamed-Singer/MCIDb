FactoryBot.define do
  factory :movie do
    title { 'MyString' }
    genre { 'action' }
    rating { 'PG-13' }
    release_date { Date.today }
    featured { false }
  end
end
