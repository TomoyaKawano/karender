class NotesController < ApplicationController
    def create
      @note = Note.new(note_params)
      if @note.save
        redirect_to calendar_path(@note.month)
      else
        render :new
      end
    end
  
    private
  
    def note_params
      params.require(:note).permit(:content, :day, :month, :line_number)
    end
  end