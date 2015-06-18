require 'course'

describe Course do
  let(:course) { Course.new("Ruby 101", "CS", 4) }

  describe "#initialize" do
    it "takes a name, department, and # of credits" do
      expect(course.name).to eq("Ruby 101")
      expect(course.department).to eq("CS")
      expect(course.credits).to eq(4)
    end

    it "initializes with an empty array of students" do
      expect(course.students).to eq([])
    end
  end

  describe "#add_student" do
    it "relies on Student#enroll" do
      student = double(:student)

      expect(student).to receive(:enroll).with(course)
      course.add_student(student)
    end
  end
end
