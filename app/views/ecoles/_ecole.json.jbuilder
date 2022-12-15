json.extract! ecole, :id, :nom, :adresse, :type, :telephone, :ouvert, :created_at, :updated_at
json.url ecole_url(ecole, format: :json)
