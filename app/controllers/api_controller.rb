class ApiController < ApplicationController
  def random_greeting
    @greeting = Greeting.order('RANDOM()').first
    render json: { message: @greeting.message }
  end
end
