class PortfoliosController < ApplicationController
  # Index action to list out all portfolio items
  def index
    # Here:
    # Portfolio.all calls from the model inside this Contoller
    # Then the Contoller makes @portfolio_items available to the View
    @portfolio_items = Portfolio.all
  end
end
