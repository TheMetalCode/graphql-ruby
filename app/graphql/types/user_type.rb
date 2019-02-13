module Types
  class UserType < BaseNode
    field :created_at, DateTimeType, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :fake_field, String, null: false, deprecation_reason: "Gonna take this away later, it's a fake field, hence the name"
    field :votes, [VoteType], null: false
    field :links, [LinkType], null: false
  end
end
