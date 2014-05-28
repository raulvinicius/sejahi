json.array!(@chats) do |chat|
  json.extract! chat, :id, :name, :date
  json.url chat_url(chat, format: :json)
end
