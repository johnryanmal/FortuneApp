class ExampleController < ApplicationController
  def read_fortune
    fortunes = ['Great fortune', 'Good fortune', 'Ominous fortune']
    render json: {
      fortune: fortunes[rand(fortunes.length)]
    }
  end
end
