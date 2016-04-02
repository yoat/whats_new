json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :project_id, :image, :music
  json.url post_url(post, format: :json)
end
