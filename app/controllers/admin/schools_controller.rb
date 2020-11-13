class SchoolsController < AppliationController
  def create
    @school = School.new(school_params)
  end

  private

  def school_params

  end

  def find_school
    @school = School.find(params[:id])
  end
end