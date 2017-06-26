class MainController < ApplicationController
  def index
  end

  def schedule
      @title = "スケジュール"
  end

  def event
      @title = "イベント"
  end

  def creater
      @title = "講師情報"
  end

  def art
      @title = "アート情報"
  end

  def reserve
      @title = "予約"
  end
end
