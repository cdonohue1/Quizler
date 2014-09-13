class QuestionsController < ApplicationController
  # def create
  #    @question = Question.new(question_params)
   
  #   if @question.save
  #     redirect_to @question
  #   else
  #     render 'new'
  #   end
  # end

  def create
    @exam = Exam.find(params[:quiz_id])
    @question = @exam.questions.create(question_params)
    #redirect_to post_path(@post)
  end

  def new
    @question = Question.new
  end

  def show
  end

  def edit
    @question = Queston.find(params[:id])
  end

  def update
     @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to @question
    else
      render :edit, notice: "failure"
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end

  private

  def question_params
    params.require(:question).permit(:question)
  end

end
