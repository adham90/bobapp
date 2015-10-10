FactoryGirl.define do
  factory :poll do
    product {FactoryGirl.create(:product)}
  end
end
