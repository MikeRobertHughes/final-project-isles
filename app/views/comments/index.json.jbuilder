json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :post_id, :blog_id, :user_id
  json.url comment_url(comment, format: :json)
end
