module Mutations
  class Project::Update < BaseMutation
    graphql_name 'UpdateProject'

    field :project, Types::ProjectType, null: true
    field :result, Boolean, null: true

    argument :id, ID, required: true
    argument :name, String, required: false
    argument :hours, Int, required: false
    argument :start_date, GraphQL::Types::ISO8601DateTime, required: false
    argument :end_date, GraphQL::Types::ISO8601DateTime, required: false

    def resolve(**args)
      project = ::Project.find(args[:id])
      project.update(name: args[:name], hours: args[:hours], start_date: args[:start_date],end_date: args[:end_date])
      {
        project: project,
        result: project.errors.blank?
      }
    end
  end
end
