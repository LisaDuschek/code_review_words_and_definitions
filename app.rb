require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/words")
require("./lib/definitions")


get("/") do
  @words = Words.all()
  erb(:index)
end

get('/words/new') do
  erb(:index)
end

post("/") do
  word = params.fetch("word")
  Words.new(word).save()
  @words = Words.all()
  erb(:index)
end

get("/words/:id") do
  @word = Words.find(params.fetch("id").to_i())
  erb(:success)
end

post("/word") do
  definition = params.fetch("definition")
  @definition = Definitions.new(definition)
  @definition.save()
  @word = Words.find(params.fetch("word_id").to_i())
  @word.add_definition(@definition)
  erb(:success)
end
