# require "pry"
# namespace :graphql do
#   task export: [:environment] do
#     schema = GraphqlTutorialSchema.execute(GraphQL::Introspection::INTROSPECTION_QUERY, variables: {}, context: {})
#     binding.pry
#     File.write(Rails.root.join('graphql.json'), JSON.pretty_generate(schema))
#   end
# end
