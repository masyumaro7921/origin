class GoalsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_goal, only: [:show, :edit, :update, :destroy]

  # GET /goals
  def index
    @goals = Goal.all
  end
  
 # GET /goals/1
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  def create
    @goal = @goal = Goal.new(goal_params)
    @goal.user_id = current_user.id
    if @goal.save
    redirect_to @goal, notice: 'Goal was successfully created.'
    else
    render :new
    end
  end

  # PATCH/PUT /goals/1
  def update
    if @goal.update(goal_params)
      redirect_to @goal, notice: 'Goal was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /goals/1
  def destroy
    @goal.destroy
    redirect_to goals_url, notice: 'Goal was successfully destroyed.'
  end

  private
  
  def set_goal
  @goal = Goal.find(params[:id])
  end

    def goal_params
      params.require(:goal).permit(:title, :user_id)
    end
end
