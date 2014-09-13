class ExamsController < ApplicationController

  def index
    @exam = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def create
      @exam = Exam.new(params[:exam])

        @exam.save
        redirect_to @exam, notice: 'Post was successfully created.' 
  end

  def show
     @exam = Exam.find(params[:id])
  end
  def edit
       @exam = Exam.find(params[:id])
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
   # def exam_params
   #    params.require(:exam).permit(:title, :description)
   #  end
    # Never trust parameters from the scary internet, only allow the white list through.
    # def set_exam
    #   params[:exam]
    # end
end
