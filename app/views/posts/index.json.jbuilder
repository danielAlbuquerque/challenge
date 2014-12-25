json.array!(@posts) do |post|
  json.extract! post, :id, :title, :slug, :post_text, :user_id
  json.url post_url(post, format: :json)
end
