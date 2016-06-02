class Car
  def initialize(year, model, color)
    @speed = 0
    @year = year
    @model = model
    @color = color
    @lights = false
    @parking_brake = false
  end

  def accelerate
    @speed += 10
  end

  def brake
    @speed -= 7
  end

  def lights_on
    if @lights == false
      @lights = true
    else
      @lights = false
    end
  end

  def lights
    @lights
  end

  def get_speed
    @speed
  end

  def year
    @year
  end

  def model
    @model
  end

  def color
    @color
  end

  def parking_brake
    @parking_brake
  end
end
