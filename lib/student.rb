class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url 

  @@all = []

  def initialize(student_hash)
    
  end

  def self.create_from_collection(students_array)
    @new_array=[]
    students_array.each do |student|
      if !@new_array.include?(student[:name])
      @new_array << student[:name]
      end 
    end 
    @new_array
    
    
  end

  def add_student_attributes(attributes_hash)
    
  end

  def self.all
    
  end
end

