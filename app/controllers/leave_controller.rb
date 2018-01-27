class LeaveController < ApplicationController
  # before_action :set_data

  def index
    @hello = 'hello there'
  end

  private
  def set_data
    @hello = 'hello together'
  end
end
