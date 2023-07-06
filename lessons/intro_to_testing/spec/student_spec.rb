# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

#assertions:
#be_and_instance_of/be_a/be


describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
      
      expect(student).to be_a(Student)
      # write the code to initialize a new student object
    end
    it "has a cookies array" do 
      student = Student.new('Penelope')

      expect(student.cookies).to be_empty
    end
  end
  describe "#add_cookies method" do 
    it "can add a cookie to the cookies attribute" do 
      student = Student.new('Penelope')
      student.add_cookie("Chocolate Chunk")
      student.add_cookie("Snickerdoodle")
      # require 'pry';binding.pry
      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
    end
  end
end
