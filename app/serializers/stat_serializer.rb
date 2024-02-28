class StatSerializer < ActiveModel::Serializer
  attributes :id, :userId, :nomsSent, :nomsReceived, :mvpWins
end
