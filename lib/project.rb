require 'pry'


class Project

    attr_reader :title 

    @@all =[]

    def initialize (title)
        @title = title
        @@all << self 
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        @backer = ProjectBacker.new(self, backer)
    end 

    def backers 
        backers = ProjectBacker.all.select {|object| object.project == self}
            backers.map {|backer| backer.backer}
    end

        


end

#  awesome_project = Project.new("This is an Awesome Project")

# binding.pry 

