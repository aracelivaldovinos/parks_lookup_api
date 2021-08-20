FactoryBot.define do
  factory(:park) do
    area {Faker::Number.number(digits: 10)}
    description {Faker::Movie.quote}
    name {Faker::Mountain.name}
    state {Faker::Address.state}
  end
end