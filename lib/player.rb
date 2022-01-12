class Player

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def self.create(name)
    if @instance
      return @instance
    end
    @instance = Player.new(name)
    return @instance
  end

  def self.instance
    return @instance
  end

end