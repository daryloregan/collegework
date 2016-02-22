require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end
  
   test "should redirect index when not logged in" do
    get :index
    assert_redirected_to login_url
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { dob: @student.dob, email: @student.email, first_name: @student.first_name, last_name: @student.last_name, mature_student: @student.mature_student, password_digest: @student.password_digest, resume_id: @student.resume_id, undergraduate: @student.undergraduate }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { dob: @student.dob, email: @student.email, first_name: @student.first_name, last_name: @student.last_name, mature_student: @student.mature_student, password_digest: @student.password_digest, resume_id: @student.resume_id, undergraduate: @student.undergraduate }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
