class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #reserve画面・管理画面で使用するチェックボックスの値（複数画面で使用するため、共通定数とする）
  CONST_QUESTION = {0 => "日本おひるねアート協会HP", 1 => "Facebook", 2 => "講師ブログ", 3 => "チラシ", 4 => "講師からの直接のご案内", 5 => "他講師のご案内", 6 => "知人・友人からの紹介", 7 => "その他（以下の備考に記述ください）"}
end
