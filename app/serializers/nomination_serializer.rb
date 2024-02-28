class NominationSerializer < ActiveModel::Serializer
  attributes :id, :type, :senderId, :senderName, :receiverId, :receiverName, :receiverImage, :body
end
