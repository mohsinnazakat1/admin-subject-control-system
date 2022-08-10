class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all 
  end

  def show
    @quiz = Quiz.find(params[:id])
  end 

  def new 
    @quiz = Quiz.new 
  end 
  
  def create 
    @quiz = Quiz.new(quiz_params)
    if @quiz.save
      redirect_to quizzes_path
    else
      render :new, status: :unprocessable_entity
    end
  end 

  def edit 
    @quiz = Quiz.find(params[:id])
  end 

  def update
    @quiz = Quiz.find(params[:id])

    if @quiz.update(quiz_params)
      redirect_to quizzes_path
    else
      render :edit, status: :unprocessable_entity
    end 
  end 

  def destroy
    @quiz = Quiz.find(params[:id])
    @quiz.destroy
    redirect_to quizzes_path
  end

  private
  def quiz_params
    params.require(:quiz).permit(:title, :chapter_id)
  end 
end
