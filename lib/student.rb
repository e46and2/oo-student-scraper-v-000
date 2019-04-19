class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  student_hash = {}

  def initialize(student_hash)

    student_hash.each do |key,value|
      self.send("#{key.to_s}=", value)
    end


    @@all << self
  end

  def self.create_from_collection(students_array)
    self.new 
  end

  def add_student_attributes(attributes_hash)

    self.student
  end

  def self.all
    @@all
  end
end
