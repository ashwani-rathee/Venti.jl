module ImagersController
# app/resources/books/BooksController.jl
using Genie.Renderer.Html
using Images,TestImages
using Genie.Renderer
struct Book
  title::String
  author::String
end

const BillGatesBooks = Book[
  Book("The Best We Could Do", "Thi Bui"),
  Book("Evicted: Poverty and Profit in the American City", "Matthew Desmond"),
  Book("Believe Me: A Memoir of Love, Death, and Jazz Chickens", "Eddie Izzard"),
  Book("The Sympathizer", "Viet Thanh Nguyen"),
  Book("Energy and Civilization, A History", "Vaclav Smil")
]

# function billgatesbooks()
#   "
#   <h1>Bill Gates' list of recommended books</h1>
#   <ul>
#     $(["<li>$(book.title) by $(book.author)</li>" for book in BillGatesBooks]...)
#   </ul>
#   "
# end

function upload_img()

end

function billgatesbooks()
  html(:imagers, :billgatesbooks, books = BillGatesBooks)
end

function threshold()
  println("threshold")
  # What thresholding algorithm the user has chosen. WORKS
  # algorithm = params(:algorithm)

  # # The image that the user has uploaded. ERROR IS HERE
  # img = params(:image)
  result =1;
  algorithm=1;
  img=testimage("lighthouse")
  save("appe.png",img)
  println("Test Pass 2")
  html(:imagers, :threshold, res = result,image ="appe.png", alg=algorithm)
end
# # BooksController.jl
# function billgatesbooks()
#   html(:books, "billgatesbooks.jl.md", books = BillGatesBooks)
# end

function showimg()
   img= testimage("lighthouse")
end

# function billgatesbooks1()
  
#   [
#     Html.h1() do
#       "Image Restoration"
#     end
#     Html.ul() do
#       @foreach(BillGatesBooks) do book
#         Html.li() do
#           book.title * " by 1 " * book.author
#         end
#       end
#     end
#   ]
# end

end
