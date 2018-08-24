class MastermenteController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def reserves
    @reserve_list = Reserve.page(params[:page]).order :kana
  end

  def events
    @event_list = Event.page(params[:page])
  end
end
