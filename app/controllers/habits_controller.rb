class HabitsController < ApplicationController

  def index
    @habits = Habit.all
  end

  def new
    @habit = Habit.new
  end

  def show
    @habit = Habit.find(params[:id])
    @occurrences = @habit.occurrences
    @occurrence_data = @habit.occurrences.group_by_day(:created_at).count
  end

  def create
    @habit = Habit.new(habit_params.merge(user: current_user))
    if @habit.save
      flash[:notice] = "Habit was successfully created"
      redirect_to habit_path(@habit)
    else
      flash[:alert] = "Fill in all fields"
      render :new
    end
  end

  def edit
    @habit = Habit.find(params[:id])
    if @habit.user != current_user
      flash[:alert] = "Only the author of the post can edit"
      redirect_to habit_path(@habit)
    end
  end

  def update
    @habit = Habit.find(params[:id])
    if @habit.update_attributes(habit_params)
      flash[:notice] = "Habit was successfully updated"
      redirect_to habit_path(@habit)
    else
      flash[:alert] = "Fill in all fields"
      render :edit
    end
  end

  def destroy
    @habit = Habit.find(params[:id])
    if @habit.user == current_user
      @habit.destroy
    else
      flash[:alert] = "Only the author of the habit can delete"
    end
    redirect_to habits_path
  end

  private
  def habit_params
    params.require(:habit).permit(:name, :goal)
  end

end
