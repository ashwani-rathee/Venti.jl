using Genie.Router
using Genie.Renderer
using Genie.Renderer.Html
using ImagersController

route("/", ImagersController.billgatesbooks)
# route("/bgbooks", BooksController.billgatesbooks)

# route("/") do
#   serve_static_file("welcome.html")
# end

# routes.jl
route("/hello") do
  "Welcome to Genie!"
end

route("/upload_img", ImagersController.upload_img)

route("/threshold", ImagersController.threshold, method = POST, named = :threshold_img)