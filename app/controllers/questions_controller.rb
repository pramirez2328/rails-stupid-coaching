class QuestionsController < ApplicationController
  def ask
  end

  def answer
  @your_message = params[:question]

    if @your_message == "I am going to work right now!"
      @your_message = "Great!"
    elsif @your_message.end_with?("?")
      @your_message = "Silly question, get dressed and go to work!"
    else
      @your_message =  "I don't care, get dressed and go to work!"
    end
  end
end
