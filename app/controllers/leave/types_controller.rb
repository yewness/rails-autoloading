class Leave::TypesController < LeaveController
  def index
    super
    @leave_types = Leave::Type.all
  end
end
