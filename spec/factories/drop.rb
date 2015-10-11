FactoryGirl.define do
  factory :drop do
    end_at Date.today + 5.days
    product {FactoryGirl.create(:product)}
  end
end
