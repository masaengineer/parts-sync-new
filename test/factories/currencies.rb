FactoryBot.define do
  factory :currency do
    currency_code { "MyString" }
    currency_name { "MyString" }
    currency_symbol { "MyString" }
    is_active { false }
  end
end
