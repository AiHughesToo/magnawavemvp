json.extract! nomination, :id, :type, :senderId, :senderName, :user_id, :receiverName, :receiverImage, :body, :created_at, :updated_at
json.url nomination_url(nomination, format: :json)
