module VentisController
# app/resources/books/BooksController.jl
# app/resources/books/BooksController.jl
using Genie.Renderer.Html
# using Genie.@params
# using Genie.serve.io
using Images,TestImages
using Genie.Renderer
using ImageShow,ImageView
using ImageMorphology
using Images
using FileIO

img1=testimage("lighthouse")
save("img.png",img1)
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
  for (name,file) in @params(:FILES)
    write("./public/img/genie/$(file.name)", IOBuffer(file.data))
  end

  println("After writing")
  img_final = img1
  for (name,file) in @params(:FILES)
    img_final = load("./public/img/genie/$(file.name)")
    println("hello")
  end
  
  println(typeof(img_final))
  println("hello")
  # What thresholding algorithm the user has chosen. WORKS
  # algorithm = @params(:algorithm)
  # println(algorithm)
  # # The image that the user has uploaded. ERROR IS HERE
  #img = @params(:image)
  res = img1
  println(typeof(img1))
  img_erode = Gray.(Gray.(img1) .< 0.8); # keeps white objects white
  res = erode(img_erode)
  save("image.png",img1)
  imshow(res)
  for (name,file) in @params(:FILES)
    write("./public/img/genie/$(file.name)", IOBuffer(file.data))
  end
  # img_erosion2 = erode(erode(img_erode))
  # img_erosion3 = erode(erode(erode(img_erode)))
  #mosaicview(img_erode, img_erosion1, img_erosion2, img_erosion3; nrow=1)

  result =1;
  algorithm=1;
  # img=testimage("lighthouse")
  # save("img.png",img)
  # save("appe.png",img)
  println("Test Pass 2")
  # data ="appe.png"
  println(pwd())
  html(:ventis, :billgatesbooks, books = BillGatesBooks,image = img1,layout=:new1)
end

# function threshold()
#   println("threshold")
#   # What thresholding algorithm the user has chosen. WORKS
#   algorithm = @params(:algorithm)

#   # # The image that the user has uploaded. ERROR IS HERE
#   #img = @params(:image)
#   result =1;
#   algorithm=1;
#   img=testimage("lighthouse")
#   # save("appe.png",img)
#   println("Test Pass 2")
#   data ="appe.png"
#   println(pwd())
#   html(:ventis, :billgatesbooks, res = result,image =img, alg=algorithm,layout=:new1)
# end
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

# function billgatesbooks()
#   "
#   <h1>Bill Gates' list of recommended books</h1>
  

#   <ul>
#     $(["<li>$(book.title) by $(book.author)</li>" for book in BillGatesBooks]...)
#   </ul>
#   "
# end

end
