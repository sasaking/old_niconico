class MastermenteController < ApplicationController
  def index
  end

  def reserves
    @reserve_list = Reserve.all
  end
end
