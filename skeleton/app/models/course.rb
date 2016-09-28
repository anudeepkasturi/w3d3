class Course < ActiveRecord::Base

  belongs_to :enrollments,
    class_name: :Enrollment,
    primary_key: :course_id,
    foreign_key: :id

  has_many :enrolled_students,
    through: :enrollments,
    source: :users

  def prerequisite
    if self.prereq_id
      Course.find(prereq_id)
    else
      "No prereqs"
    end
  end

  def instructor
    User.find(instructor_id)
  end
end
