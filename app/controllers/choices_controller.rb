class ChoicesController < ApplicationController
  def create
    @choice = Choice.new(choice_params)
  end

  def new
    @choice = Choice.new
  end

  def show
  end

  def update
    @choice = Choice.find(params[:id])
    if @choice.update(choice_params)
      redirect_to @choice
    else
      render :edit, notice: "failure"
    end
  end

  def destroy
    
  end
end
