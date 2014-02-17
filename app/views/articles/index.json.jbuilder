json.array!(@articles) do |article|
  json.extract! article, :id, :heading, :story, :publish_date, :author, :image
  json.url article_url(article, format: :json)
end
