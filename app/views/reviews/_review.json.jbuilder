json.extract! review, :id, :song_id, :reviewer, :rating, :review, :created_at, :updated_at
json.url review_url(review, format: :json)
