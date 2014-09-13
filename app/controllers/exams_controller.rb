class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  def index
    @exam = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params) 

      respond_to do |format|
        @exam.save
        redirect_to @exam, notice: 'Post was successfully created.' 
      end
  end

  def show
  end

  def update
      @exam = Exam.find(params[:id])

        @exam.update_attributes(exam_params)
        redirect_to exams_path
  end
    def destroy
    @exam.destroy
  end

  private 
   def exam_params
      params.require(:exam).permit(:title, :description)
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params[:exam]
    end
end
