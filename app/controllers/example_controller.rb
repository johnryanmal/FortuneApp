class ExampleController < ApplicationController
  def read_fortune
    fortunes = ['Great fortune', 'Good fortune', 'Ominous fortune']
    render json: {
      fortune: fortunes[rand(fortunes.length)]
    }
  end

  def read_lottery
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: numbers
  end
end
