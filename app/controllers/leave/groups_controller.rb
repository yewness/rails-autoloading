class Leave::GroupsController < LeaveController
  before_action :find_group, only: [:edit, :update, :destroy]

  def index
    @leave_groups = Leave::Group.all
  end

  def new
    @leave_group = Leave::Group.new
  end

  def create
    @leave_group = Leave::Group.new(group_params)
    if @leave_group.save
      redirect_to :leave_groups, notice: 'Group is added.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @leave_group.save
      redirect_to :leave_groups, notice: 'Group is updated.'
    else
      render :new
    end
  end

  def destroy
    @leave_group.destroy
    redirect_to :leave_groups, notice: 'Group is destroyed.'
  end

  private
  def find_group
    @leave_group = Leave::Group.find params[:id]
  end

  def group_params
    params.require(:leave_group).permit(:name)
  end
end
