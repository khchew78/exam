json.extract! photo_gallery, :id, :activity, :description, :created_at, :updated_at
json.url photo_gallery_url(photo_gallery, format: :json)
