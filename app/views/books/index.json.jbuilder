json.array!(@books) do |book|
  json.extract! book, :id, :title, :memo, :author, :picture
  json.url book_url(book, format: :json)
end
