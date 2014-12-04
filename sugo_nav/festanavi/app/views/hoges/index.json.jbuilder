json.array!(@hoges) do |hoge|
  json.extract! hoge, :id, :title, :body
  json.url hoge_url(hoge, format: :json)
end
