class MainController < ApplicationController
  def index
    @title = "トップページ"
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
    @reserve = Reserve.new
    #共通部分からの呼出し
    @Questions = Constants::QUESTIONS
  end

end
