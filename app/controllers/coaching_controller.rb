class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    coach_answer(@query)

  end
end

def coach_answer(your_message)
  if your_message.include? "?"
    @answer = "Silly question, get dressed and go to work!"
  elsif your_message == "I am going to work right now!"
    @answer = ""
  else
    @answer = "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    @answer = ""
  elsif your_message == your_message.upcase
    @answer = coach_answer(your_message).prepend("I can feel your motivation! ")
  else
    @answer = coach_answer(your_message)
  end
end
