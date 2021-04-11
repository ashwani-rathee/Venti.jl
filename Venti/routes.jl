using Genie.Router

route("/") do
  serve_static_file("welcome.html")
end

# routes.jl
route("/hello") do
  "Welcome to Genie!"
end