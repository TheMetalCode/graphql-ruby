# This file is used by Rack-based servers to start the application.
require "json"
require_relative 'config/environment'

main_port = ENV.fetch("PORT") { 4000 }
proxy_port = main_port.to_i + 1

protocol = Rails.env.production? ? "https" : "http"
host = Rails.env.production? ? "sample-graphql-ruby.herokuapp.com" : "localhost"

apollo_tracing_config = {
  apiKey: ENV.fetch("ENGINE_API_KEY"),
  logging: { level: "INFO" },
  origins: [
    {
      http: {
        url: "#{protocol}://#{host}:#{main_port}"
      }
    }
  ],
  frontends: [
    {
      host: host,
      port: proxy_port,
      endpoints: ["/graphql"]
    }
  ]
}
ApolloTracing.start_proxy(apollo_tracing_config.to_json)

run Rails.application
