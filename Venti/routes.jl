using Genie.Router
using Genie.Renderer
using Genie.Renderer.Html
using BooksController
using ImagersController

route("/", ImagersController.billgatesbooks1)
# route("/bgbooks", BooksController.billgatesbooks)

# route("/") do
#   serve_static_file("welcome.html")
# end

# routes.jl
route("/hello") do
  "Welcome to Genie!"
end
