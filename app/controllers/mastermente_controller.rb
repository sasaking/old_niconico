class MastermenteController < ApplicationController

  def index
  end

  def reserves
    @reserve_list = Reserve.page(params[:page]).order :kana
  end
end
