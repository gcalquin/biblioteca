require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  
  setup do
    @book_params = {
      title: "Libro Cualquiera",
      author: "Anonimo",
      status: "estante",
      borrowed_at: DateTime.now,
      returned_at: DateTime.now,
      created_at: DateTime.now,
      updated_at: DateTime.now
    }
  end

  test "Crear libro" do
    post books_url, params: { book: @book_params }
  end

  test "Mostrar libro" do
    get book_url(Book.last)
    assert_response :success
  end




end
