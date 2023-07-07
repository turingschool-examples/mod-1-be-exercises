# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

# Assertions:
# be_an_instance_of / be_a => Verifies that an instance object can be created
# eq => Verifies the return value of a method call



describe Student do
  # write the code to initialize a new student object
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new("Penelope")

      expect(student).to be_an_instance_of(Student)
    end
  end

  # test it has a name
  describe "#name" do
    it "returns the name of the student" do
      student = Student.new("Penelope")
      student2 = Student.new("Noelle")

      expect(student.name).to eq("Penelope")
      expect(student2.name).to eq("Noelle")
    end
  end
  
  # test it has cookies
  describe "#cookies" do
    it "should start with an empty cookies array" do
      student = Student.new("Penelope")

      expect(student.cookies).to eq([])
    end
  end

  # test it can add cookies
  describe "#add_cookie" do
    it "should add a cookie to the cookies array" do
      student = Student.new("Penelope")
      student_2 = Student.new("Noelle")

      student.add_cookie("Chocolate Chunk")
      student.add_cookie("Snickerdoodle")

      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
      expect(student_2.cookies).to eq([])
      
      student_2.add_cookie("Oatmeal Raisin")
      expect(student_2.cookies).to eq(["Oatmeal Raisin"])
    end
  end
end

# Query Method => Method that returns some value
# Command Method => Methods that perform some action on some object