class ReserveController < ApplicationController

  # GET /reserves
  # GET /reserves.json
  def confirm
    # POSTされたパラメータを取得
    @reserve = Reserve.new(reserve_params)



    #@reserve.inspect 
    # バリデーションチェックNGなら戻す
    #render :reserve if @reserve.invalid?
    #render :template => "main/reserve" if @reserve.invalid?
  
    if @reserve.invalid?
        #検証NG（予約画面へ戻る）
        render :template => "main/reserve"
    end
  end

  private
    #セキュリティのため、premitメソッドで許可したパラメータ名しか取得できない
    def reserve_params
        params.require(:reserve).permit(:name, :kana, :child_name, :child_kana, :child_age, :email, :tel, :reserve_period, :beginner, :question_id, :remarks)
    end

end
