class GradesController < ApplicationController
  def index
    @grades = Grade.all
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def new
    @grade = Grade.new
  end

  def create
    @grade = Grade.new(grade_params)

    if @grade.save
      redirect_to @grade
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])

    if @grade.update(grade_params)
      redirect_to @grade
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @grade = Grade.find(params[:id])
    @grade.destroy

    redirect_to grades_path, status: :see_other
  end

  private
    def grade_params
      params.require(:grade).permit(:title)
    end

end
