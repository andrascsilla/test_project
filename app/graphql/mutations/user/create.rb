module Mutations
  class User::Create < BaseMutation
    graphql_name 'CreateUser'

    field :user, Types::UserType, null: true
    field :result, Boolean, null: true

    argument :name, String, required: false
    argument :email, String, required: false
    argument :worked_hours, Int, required: false

    def resolve(**args)
      user = ::User.create(name: args[:name], email: args[:email], worked_hours: args[:worked_hours])
      {
        user: user,
        result: user.errors.blank?
      }
    end
  end
end
