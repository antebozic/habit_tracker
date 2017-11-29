class OccurrencesController < ApplicationController

  def index
      @occurrences = Occurrence.all
      @habit = Habit.find(params[:habit_id])
    end

    def show
      @habit = Habit.find(params[:habit_id])
      @occurrence = @habit.occurrences.find(params[:id])
    end

    def new
      @habit = Habit.find(params[:habit_id])
      @occurrence = @habit.occurrences.new
    end

    def create
      @habit = Habit.find(params[:habit_id])
      @occurrence = @habit.occurrences.new(occurrence_params)
      if @occurrence.save
        flash[:notice] = "Occurrence was successfully created"
      redirect_to habit_path(@habit)
    else
      flash[:alert] = "Fill in all fields"
      render :new
    end
   end

    def edit
      @habit = Habit.find(params[:habit_id])
      @occurrence = @habit.occurrences.find(params[:id])
    end

    def update
      @occurrence = Occurrence.find(params[:id])
      if @occurrence.update_attributes(occurrence_params)
        flash[:notice] = "Occurrence was successfully updated"
      redirect_to habit_occurrence_path(@occurrence.habit, @occurrence)
    else
      flash[:alert] = "Fill in all fields"
      render :edit
    end
    end

    def destroy
      @occurrence = Occurrence.find(params[:id])
      @occurrence.destroy

      redirect_to habit_path(@occurrence.Habits)
    end

    private
    def occurrence_params
      params.require(:occurrence).permit(:note)
    end

end
