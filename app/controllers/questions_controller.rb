class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question]
    if @message == "I am going to work"
      @messag = "Great!"
    elsif @message.include?("?")
      @message = "Silly question, get dressed and go to work!"
    else
      @message = "I don't care, get dressed and go to work!"
    end
  end
end
