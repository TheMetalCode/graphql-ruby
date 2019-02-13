# This file is used by Rack-based servers to start the application.
require "json"
require_relative 'config/environment'

main_port = ENV.fetch("PORT") { 4000 }
proxy_port = main_port.to_i + 1

apollo_tracing_config = {
  apiKey: ENV.fetch("ENGINE_API_KEY"),
  logging: { level: "INFO" },
  origins: [
    {
      http: {
        url: "http://localhost:#{main_port}"
      }
    }
  ],
  frontends: [
    {
      host: "localhost",
      port: proxy_port,
      endpoints: ["/graphql"]
    }
  ]
}
ApolloTracing.start_proxy(apollo_tracing_config.to_json)

run Rails.application
