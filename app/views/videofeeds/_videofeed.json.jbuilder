json.extract! videofeed, :id, :video, :index, :created_at, :updated_at
json.url videofeed_url(videofeed, format: :json)
