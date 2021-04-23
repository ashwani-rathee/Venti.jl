using Genie.Router
using Genie.Renderer
using Genie.Renderer.Html
using VentisController


route("/", VentisController.billgatesbooks, method = POST,named = :index)

# route("/bgbooks", VentisController.billgatesbooks,method = POST,named = :index1)

# route("/bgbooks", BooksController.billgatesbooks)

# route("/") do
#   serve_static_file("welcome.html")
# end

# routes.jl
# route("/hello") do
#   "Welcome to Genie!"
# end

# route("/upload_img", VentisController.upload_img)

# route("/threshold", VentisController.threshold, method = POST, named = :threshold_img)