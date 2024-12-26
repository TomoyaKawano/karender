class CalendarController < ApplicationController
    def index
      redirect_to calendar_path(Date.today.month)
    end
  
    def show
      @month = params[:id].to_i
      @date = Date.new(Date.today.year, @month, 1)
      @notes = Note.where(month: @month)
      @note_hash = @notes.group_by(&:day)
    end
  
    def update
      note = Note.find_or_initialize_by(
        day: params[:day],
        month: params[:month],
        line_number: params[:line_number]
      )
      note.content = params[:content]
      note.save
      
      redirect_to calendar_path(params[:month])
    end
end
