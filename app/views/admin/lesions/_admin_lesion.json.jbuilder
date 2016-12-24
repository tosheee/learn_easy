json.extract! admin_lesion, :id, :name_lesion, :description, :created_at, :updated_at
json.url admin_lesion_url(admin_lesion, format: :json)