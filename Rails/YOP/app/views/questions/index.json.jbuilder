json.array!(@questions) do |question|
  json.extract! question, :id, :name, :answer, :faq_id
  json.url question_url(question, format: :json)
end
