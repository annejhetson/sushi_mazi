class MenuController < ApplicationController
  def index
    @starters = Starter.all
    @salads = Salad.all
    @platters = Platter.all
    @lunches = LunchRoll.all
    @sig_rolls = SignatureRoll.all
    @spe_rolls = SpecialRoll.all
    @sushis = Sushi.all
    @hh_items = HHItem.all
  end
end