# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "example.com", "localhost:8100", "localhost:8080", "631cae075fa5955b61ff8e5f--bucolic-axolotl-88b2d5.netlify.app", 
    "bucolic-axolotl-88b2d5.netlify.app", "main--bucolic-axolotl-88b2d5.netlify.app", "https://guarded-badlands-99137.herokuapp.com/users' from origin 'https://main--bucolic-axolotl-88b2d5.netlify.app"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
