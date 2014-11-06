FactoryGirl.define do
  factory :inscription, class: Inscription do |a|
    a.name 'Test Testovich'
    a.description 'Good boy'
    a.positive true
  end
end