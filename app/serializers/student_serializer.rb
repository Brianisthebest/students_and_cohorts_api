class StudentSerializer
  def self.format_students(students)
    hash = Hash.new
    students.map do |student|
      {
        id: student.id,
        first_name: student.first_name,
        last_name: student.last_name,
        preferred_name: student.preferred_name,
        pronouns: student.pronouns,
        email: student.email,
        github_username: student.github_username,
        slack_username: student.slack_username,
        cohort_id: student.cohort_id
      }
      hash["data"] = students
    end
    hash
  end
end