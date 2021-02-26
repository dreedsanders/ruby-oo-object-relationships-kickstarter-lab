require 'pry'

class Backer

    attr_reader :name 

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        @project = ProjectBacker.new(project, self)
        
    end

    def backed_projects

        projects = ProjectBacker.all.select {|object| object.backer == self}
            projects.map {|project| project.project}
        
    end




end
# bob = Backer.new("Bob")
#  binding.pry
