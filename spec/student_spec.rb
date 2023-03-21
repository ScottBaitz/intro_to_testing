# ensures the rspec testing framework is available for use in this file
require 'rspec'
# allows the spec file to read the contents of the student file
require './lib/student'

describe Student do
  it 'is an instance of student' do
    student = Student.new('Penelope')
    expect(student).to be_a Student
  end

  it 'has a name' do
    student = Student.new('Penelope')
    expect(student.name).to eq 'Penelope'
  end

  it 'has a dynamic age property' do
    student = Student.new('Penelope', 24)
    expect(student.age).to eq 24
  end

end