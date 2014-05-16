json.array!(@questions) do |question|
  json.extract! question, :id, :ques, :opt1, :opt2, :opt3, :ans, :categoty, :points
  json.url question_url(question, format: :json)
end
