class SchoolsController < ApplicationController
  skip_before_action :authorized, only: [:show, :edit, :update, :destroy, :new]


  # GET /schools
  # GET /schools.json
  def index
    @schools = School.all
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
    @school  = School.find(params[:id])
  end



  def search 
    if params[:search].blank?
      redirect_to(root_path, alert: 'Empty field!',) and return
    else
      @parameter = params[:search].downcase
      @results = Student.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
  def set_school
    @school = School.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def school_params
    params.require(:school).permit(:school_name, :school_digital_address)
  end
end
