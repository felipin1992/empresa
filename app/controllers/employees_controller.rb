class EmployeesController < ApplicationController
  def create
    @company = Company.find(params[:id])
    @employee = @company.employess.build(employees_params)
    byebug
    @employee.save
    redirect_to companies_path
  end

  private

  def employees_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id)
  end
end
