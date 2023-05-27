class IndexController < ApplicationController
  class IndexController < ApplicationController
    def index
      @cars = Car.all
      @users = User.all
      @bookings = Booking.all
    end
  end
end
