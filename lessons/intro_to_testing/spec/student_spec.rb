# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

# Assertions that we use most often: 
# be_an_instance_of / be_a -> verifies that an instance object can be created 
# eq -> verifying the return value of a method call

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Penelope')

      expect(student).to be_a(Student)
    end
  end
    # test it has a name
    
    describe "#name" do
      it "has a name" do
        student = Student.new('Penelope')

        expect(student.name).to eq('Penelope')
      end
    end

    # test it has cookies
    describe "#cookies" do
      it "should start with an empty cookies array" do 
        student = Student.new('Penelope')

        expect(student.cookies).to eq([]) 

      end
    end
      # test it can add cookies
    describe '#add_cookies' do 
      it "should add a new cookie to the cookies array" do
        student = Student.new('Penelope')

        student.add_cookie('Chocolate Chunk')
        student.add_cookie('Snickerdoodle')

        expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])

      end
    end
end
