#=================================================================
# nine
class Language
    def initialize(name, creator)
        @name = name
        @creator = creator
    end
    def description
        puts "I'm #{@name} and I was created by #{@creator}!"
    end
    attr_reader :creator
    attr_reader :name
    attr_writer :creator
    attr_writer :name
end

ruby = Language.new("x","y")
ruby.name = "Ruby"
ruby.creator = "Yukihiro Matsumoto";
ruby.description

php = Language.new("PHP","Rasmus Lerdorf")
puts php.name
puts php.creator
puts "********************"

#=================================================================
# ten
class Circle
    @PI = 0
    @radius = 0
    def initialize(r)
        @radius = r
        @PI = 3.14159
    end

    def getArea
        return @PI.to_f * @radius.to_f * @radius.to_f
    end

    def getCircumference
        return 2 * @PI.to_f * @radius.to_f
    end

    attr_reader :radius
    attr_writer :radius
end

circle = Circle.new(10)
puts "Area is #{circle.getArea}"
puts "Diameter is #{circle.radius}"
puts "Circumference is #{circle.getCircumference}"
