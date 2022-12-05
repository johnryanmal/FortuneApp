class ExampleController < ApplicationController
  def read_fortune
    fortunes = ['Great fortune', 'Good fortune', 'Ominous fortune']
    fortune = fortunes[rand(fortunes.length)]
    render json: {
      msg: fortune
    }
  end

  def read_lottery
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: {
      numbers: numbers
    }
  end

  def get_visits
    $visits += 1
    render json: {
      visits: $visits
    }
  end
end
