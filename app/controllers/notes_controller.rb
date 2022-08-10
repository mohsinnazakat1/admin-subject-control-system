class NotesController < ApplicationController
  def index
    @notes = Note.all 
  end 

  def show 
    @note = Note.find(params[:id])
  end 

  def new 
    @note = Note.new 
  end 

  def create  
    @note = Note.new(notes_params) 

    if @note.save 
      redirect_to notes_path
    else 
      render :new, status: :unprocessable_entity
    end 
  end 

  def edit 
    @note = Note.find(params[:id])
  end 

  def update 
    @note = Note.find(params[:id]) 
    
    if @note.update(notes_params)
      redirect_to notes_path
    else
      render :edit, status: :unprocessable_entity
    end
  end 

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
  end 

  private 
  def notes_params 
    params.require(:note).permit(:title, :body, :chapter_id)
  end 
end
