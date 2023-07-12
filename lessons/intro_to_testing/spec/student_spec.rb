# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

#Assertions:
# be_an_instance_of / be_a = same thing
# These verify that an instance object can be created.
# eq = verifies the return value of a method call.
describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')

      expect(student).to be_an_instance_of(Student)
    end
  end 

  describe "#name" do
    it "returns the name of the student" do
    # test it has a name
      student1 = Student.new('Penelope')
      student2 = Student.new('Noelle')

      expect(student1.name).to eq("Penelope")
      expect(student2.name).to eq("Noelle")
    end
  end
  
  describe "#cookies" do
    # test it has cookies
    it "should start with an empty cookies array" do
      student = Student.new('Penelope')

      expect(student.cookies).to eq([])
    end
  end

  describe "add_cookie" do
    it "should add a cookie to the cookies array" do
      student = Student.new('Penelope')
      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
    end
  end
    # test it can add cookies
end


#Query Method = Method that returns some value (always expects)
#Command Method = Methods that perform some action on some object