# Add the 2 requires you will need here
require './lib/student'
require 'rspec'

# 1. ben_an_instance_of - when we want to test that an object can be created
# 2. eq - when we want to test a value of a method


# In Every Test:
# 1. Test that the object can exist (ben_an_instance_of)
# 2. Test any methods/attributes that exist in that class (eq)

# Student object
# Instance of student Class

describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new('Frank')

      expect(student).to be_an_instance_of(Student)
    end
    # test it has a name
    it 'has a name' do
      student = Student.new('Frank')

      expect(student.name).to eq('Frank')
    end
    # test it has cookies
    it 'has a cookies array' do
      student = Student.new('Frank')

      expect(student.cookies).to eq([])
    end
    
    # test it can add cookies
    it 'can add cookies' do
      student = Student.new('Frank')

      student.add_cookies('Chocolate')
      student.add_cookies('Sugar')

      # expect(student.cookies.count).to eq(2)
      expect(student.cookies).to eq(['Chocolate', 'Sugar'])
    end
  end
end
