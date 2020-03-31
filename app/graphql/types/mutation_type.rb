module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::User::Create
    field :update_user, mutation: Mutations::User::Update
    field :delete_user, mutation: Mutations::User::Delete

    field :create_project, mutation: Mutations::Project::Create
    field :update_project, mutation: Mutations::Project::Update
    field :delete_project, mutation: Mutations::Project::Delete
  end
end
