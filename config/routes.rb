Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  post "/graphql", to: "graphql#execute"

  get "/export_csv", to: "export_csv#index"
  
  root :to => "home#index"
end
