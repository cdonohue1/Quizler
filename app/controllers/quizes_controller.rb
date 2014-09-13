class QuizesController < ApplicationController
  def index
  end

  def new
    @quiz = quiz.new
  end

  def create
    @quiz = Quiz.new(quiz_params) 
  end

  def show
  end

  def update
  end

  def destroy
  end
end
