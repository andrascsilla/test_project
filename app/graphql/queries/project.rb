module Queries
  class Project < Queries::BaseQuery
    description 'Find all projects'

    type [Types::ProjectType], null: false

    def resolve
      ::Project.all
    end
  end
end