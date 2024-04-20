require './lib/student'

RSpec.describe Student do
    it 'exists' do
        student = Student.new("Sophocles", 1)

        expect(student).to be_instance_of(Student)
    end

    it 'has a name' do
        student = Student.new("Sophocles", 1)

        expect(student.name).to eq("Sophocles")
    end

    it 'has a mod' do
        student = Student.new("Sophocles", 1)

        expect(student.mod).to eq(1)
    end

    it 'skills' do
        student = Student.new("Sophocles", 1)

        expect(student.skills).to eq([])
    end

    it 'says what mod they are in' do
        student = Student.new("Sophocles", 1)
        
        student.say_mod

        expect(student.say_mod).to eq("I'm in Mod 1")
    end

    it 'says what its learning' do
        student = Student.new("Sophocles", 1)
        
        student.learn("testing")

        expect(student.skills).to eq(["testing"])
    end

    it 'says multiple skills' do
        student = Student.new("Sophocles", 1)
        
        student.learn("testing")
        student.learn("mocks")

        expect(student.skills).to eq(["testing", "mocks"])
    end

    it 'will be promoted to next mod' do
        student = Student.new("Sophocles", 1)
        
        student.promote

        expect(student.say_mod).to eq("I'm in Mod 2")
    end

    
end