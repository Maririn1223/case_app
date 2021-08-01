class CasesController < ApplicationController
  def index
    @cases = Case.includes(:user)
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.create(case_params)
    if @case.save
      redirect_to cases_path
    else
      render :create
    end
  end

  private
  def case_params
    params.require(:case).permit(:title, :charactristic, :task, :everyday, :support, :result).merge(user_id: current_user.id)
  end

end
