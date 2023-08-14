class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = coach_answer(@ask)
  end
end

private

def coach_answer(your_message)
  if your_message.downcase == "i am going to work"
    return "Great!"
  elsif your_message.include?('?')
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end
