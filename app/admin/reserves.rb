ActiveAdmin.register Reserve do
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    # 初期表示を予約日の降順でソート
    config.sort_order = 'created_at_desc'
    # 1ページの表示件数を20件とする
    config.per_page = 20

    # 検索条件の項目設定
    filter :status
    filter :event_id

    # 予約一覧画面の表示項目設定(日本語変換はmodel/ja.ymlで設定)
    index do
        column "イベント名", :event_id
        column "予約日", :created_at
        column "予約者", :name
        column "予約者(カナ)", :kana
        column "子供", :child_name
        column "子供(カナ)", :child_kana
        column "月齢", :child_age
        column "電話番号", :tel
        column "メール", :email

        # 初回フラグ
        column "ユーザ情報", :beginner_flg do |reserve|
          # 初回ユーザ判定
          if reserve.beginner_flg == 1
              "初回"
          else
              ""
          end
        end

        # 予約ステータス
        column "予約状況", :status do |reserve|
          # 予約したユーザがどのようなステータスかを判定する
          if reserve.status == 0
              "予約済"
          elsif reserve.status = 1
              "キャン待ち"
          elsif reserve.status = 2
              "予約キャンセル"
          else
              "終了"
          end
        end

        actions
    end

end
