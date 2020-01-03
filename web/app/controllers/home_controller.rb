class HomeController < ApplicationController
  before_action :logged_in, {only: [:top]}

  def top
  end

  def about
  end
end
