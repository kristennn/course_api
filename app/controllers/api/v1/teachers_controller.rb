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

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy
    @teacher.courses.destroy

    render :json => { :message => "已删除老师和课程的全部信息"}

  end

end
