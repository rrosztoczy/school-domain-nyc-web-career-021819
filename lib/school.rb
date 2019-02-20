# code here!
# School
#   ::new
#     has an empty roster when initialized (FAILED - 1)
#   #add_student
#     is able to add a student (FAILED - 2)
#     is able to add multiple students to a class (grade) (FAILED - 3)
#     is able to add students to different grades (FAILED - 4)
#   #grade
#     is able to retreive students from a grade (FAILED - 5)
#   #sort
#     is able to sort the students (FAILED - 6) 

class School
    attr_accessor :roster

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        
        if @roster != {}
         if @roster.keys.include?(grade) == true
            @roster[grade] << name
         else
            @roster[grade] = []
            @roster[grade] << name
         end
        else
        @roster[grade] = []
        puts @roster.inspect
        puts @roster[grade].inspect
        @roster[grade] << name
        puts @roster[grade].inspect
        puts @roster.inspect
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        roster.each do |grade, name|
        roster[grade] = name.sort
        end
    end
end