class PortfoliosController < ApplicationController
  # Index action to list out all portfolio items
  def index
    # Here:
    # Portfolio.all calls from the model inside this Contoller
    # Then the Contoller makes @portfolio_items available to the View
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  # This part will be different from the blogs one, as we will tell it what we can use for security
  # The `.permit` is a whitelisted set of parameters
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html {redirect_to portfolios_path, notice: 'Your portfolio item is now live'}
      else
        format.html {render :new}
      end
    end
  end

end
