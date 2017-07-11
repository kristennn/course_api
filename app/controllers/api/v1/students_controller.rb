class Api::V1::StudentsController < ApiController

  def show
    @student = Student.find(params[:id])

    render :json => {
      :courses => @student.participated_courses,
      :teachers => @student.participated_teachers
    }

  end
end
