# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create users 
ActiveRecord::Base.transaction do
  User.destroy_all

  users = []
  liz = User.create!(username: "queen_joob")
  users << liz
  carly = User.create!(username: 'schmarly')
  users << carly
  andy = User.create!(username: 'wynk_wynk')
  users << andy
  cynthia = User.create!(username: 'oh_ma_stars')
  users << cynthia
  jennifer = User.create!(username: "jenken")
  users << jennifer
  rhonil = User.create!(username: "rho_yourboat")
  users << rhonil
  stephen = User.create!(username: "scuba_steve")
  users << stephen
  elliot = User.create!(username: "smelliot")
  users << elliot
  jesse = User.create!(username: "ma_man")
  users << jesse


# Create polls 
  Poll.destroy_all
  polls = []
  10.times do 
    temp = Poll.create!(user_id: users.sample.id, title: Faker::MichaelScott.quote)
    polls << temp
  end 
# Create questions 
  Question.destroy_all
  
  questions = []
  10.times do |i|
    temp = Question.create!(poll_id: polls[i].id, text: Faker::ChuckNorris.fact)
    questions << temp 
  end 
  5.times do 
    temp = Question.create!(poll_id: polls.sample.id, text: Faker::ChuckNorris.fact)
    questions << temp 
  end 
  
# Create answer choices 

AnswerChoice.destroy_all

answer_options = ["true","false"]
answer_choice = []
questions.each do |q|
  answer_choice << AnswerChoice.create!(question_id: q.id, text: answer_options[0])
  answer_choice << AnswerChoice.create!(question_id: q.id, text: answer_options[1])
end 


# Create responses

end 