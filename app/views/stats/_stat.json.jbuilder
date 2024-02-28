json.extract! stat, :id, :userId, :nomsSent, :nomsReceived, :mvpWins, :created_at, :updated_at
json.url stat_url(stat, format: :json)
