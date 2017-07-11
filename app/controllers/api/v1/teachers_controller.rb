class Api::V1::TeachersController < ApiController
  def index
    @teachers = Teacher.all

    render :json => {
      :data => @teachers.map{ |teacher|
        {
          :teacher_name => teacher.name,
          :courses => teacher.courses
        }
      }
    }

  end
end
