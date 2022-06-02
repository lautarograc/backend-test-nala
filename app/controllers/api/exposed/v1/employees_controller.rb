class Api::Exposed::V1::EmployeesController < Api::Exposed::V1::BaseController
  def index
    respond_with Employee.all
  end

  def show
    respond_with employee
  end

  def create
    respond_with Employee.create!(employee_params)
  end

  def update
    employee.update!(employee_params)
    respond_with employee
  end

  def destroy
    respond_with employee.destroy!
  end

  private

  def employee
    @employee ||= Employee.find_by!(id: params[:id])
  end

  def employee_params
    params.require(:employee).permit(
      :full_name,
      :personal_id,
      :email,
      :position,
      :salary,
      :city,
      :country,
      :active,
      :starting_date
    )
  end
end
