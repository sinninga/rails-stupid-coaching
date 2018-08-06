class QuestionsController < ApplicationController

 ANSWERS = {
    1 => { coach_answer: "Great!"},
    2 => { coach_answer: "Silly question, get dressed and go to work!"},
    3 => { coach_answer: "I don't care, get dressed and go to work!"}
  }

  def ask
  end

  def answer
    @question = params[:user_question]
    if @question == "I am going to work"
      @answers = ANSWERS[1][:coach_answer]
    elsif @question.ends_with?("?")
      @answers = ANSWERS[2][:coach_answer]
    else
      @answers = ANSWERS[3][:coach_answer]
    end
  end
end
