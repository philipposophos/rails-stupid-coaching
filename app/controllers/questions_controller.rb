class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_question = params[:question]
    answer_happy = 'Great!'
    answer_annoyed = 'Silly question, get dressed and go to work!'
    answer_indifferent = "I don't care, get dressed and go to work!"

    @coach_answer = if @user_question == 'I am going to work'
                      answer_happy
                    elsif @user_question.end_with?('?')
                      answer_annoyed
                    else
                      answer_indifferent
                    end
  end
end
