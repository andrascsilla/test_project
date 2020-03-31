module Types
  class QueryType < Types::BaseObject
    field :user, resolver: Queries::User
    field :users, resolver: Queries::Users

    field :project, resolver: Queries::Project
    field :projects, resolver: Queries::Projects
  end
end
