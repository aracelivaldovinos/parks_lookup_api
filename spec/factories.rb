FactoryBot.define do
  factory(:park) do
    area {Faker::Number.number(digits: 10)}
    description {Faker::Movie.quote}
    name {Faker::Mountain.name}
    state {Faker::Address.state}
  end
  factory(:bird) do
    family_name {Faker::Creature::Bird.common_family_name}
    common_name {Faker::Creature::Bird.common_name}
    color {Faker::Creature::Bird.color} 
    geography {Faker::Creature::Bird.geo}
  end
end