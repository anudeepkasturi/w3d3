class User < ActiveRecord::Base

  belongs_to :enrollments,
    class_name: :Enrollment,
    primary_key: :student_id,
    foreign_key: :id

  has_many :enrolled_courses,
    through: :enrollments,
    source: :courses

end
