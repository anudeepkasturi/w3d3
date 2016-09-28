class Enrollment < ActiveRecord::Base

  has_many :users,
    class_name: :User,
    foreign_key: :id,
    primary_key: :student_id

  has_many :courses,
    class_name: :Course,
    foreign_key: :id,
    primary_key: :course_id

end
