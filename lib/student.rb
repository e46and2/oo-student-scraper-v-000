class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  student_hash = {}

  def initialize(student_hash)
    @name = name
    @location = location
    @twitter = twitter
    @linkedin = linkedin
    @github = github
    @blog = blog
    @profile_quote = profile_quote
    @bio = bio
    @profile_url = profile_url
    student_hash.each do |key,value|
      self.send("#{key}=", value)
    end


    @@all << self
  end

  def self.create_from_collection(students_array)

  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end
end
