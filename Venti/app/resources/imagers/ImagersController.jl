module ImagersController
# app/resources/books/BooksController.jl
using Genie.Renderer.Html
using Images,TestImages
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

# function billgatesbooks()
#   html(:books, :billgatesbooks, books = BillGatesBooks)
# end

# # BooksController.jl
# function billgatesbooks()
#   html(:books, "billgatesbooks.jl.md", books = BillGatesBooks)
# end

function showimg()
   img= testimage("lighthouse")
end

function billgatesbooks1()
  
  [
    Html.h1() do
      "Image Restoration"
    end
    Html.ul() do
      @foreach(BillGatesBooks) do book
        Html.li() do
          book.title * " by 1 " * book.author
        end
      end
    end
  ]
end

end
