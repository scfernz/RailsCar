class CarController < ApplicationController
  def get_info
    @color = params[:color]
    @my_car = Car.new(params[:year], params[:model], params[:color])
    cookies[:my_car] = @my_car.to_yaml
  end

  def accelerate
    @my_car = YAML.load(cookies[:my_car])
    @my_car.accelerate
    @color = @my_car.color
    cookies[:my_car] = @my_car.to_yaml
    render "get_info.html.erb"
  end

  def brake
    @my_car = YAML.load(cookies[:my_car])
    @my_car.brake
    @color = @my_car.color
    cookies[:my_car] = @my_car.to_yaml
    render "get_info.html.erb"
  end

  def lights_on
    @my_car = YAML.load(cookies[:my_car])
    @my_car.lights_on
    @color = @my_car.color
    cookies[:my_car] = @my_car.to_yaml
    render "get_info.html.erb"
  end

  def parking_brake
    @my_car = YAML.load(cookies[:my_car])
    @my_car.parking_brake
    @color = @my_car.color
    cookies[:my_car] = @my_car.to_yaml
    render "get_info.html.erb"
  end
end
