ActiveAdmin.register ReservePeriod do
# See permitted parameters documentation:
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

    # 初期表示を登録日の降順でソート
    config.sort_order = 'created_at_desc'
    # 1ぺージの表示件数を20件とする
    config.per_page = 20

    # 会場毎の予約時間一覧画面の表示項目設定(表示タイトル, 表示カラム)
    index do
        column "イベント会場名", :event_place_id

        # 予約設定時間の表示形式変更
        column "予約設定時間", :all_day_flg do |reserve_period|
          if reserve_period.all_day_flg == 0
              "終日"
          else
              ""
          end
        end

        column "予約開始時間", :reserve_start_time
        column "予約終了時間", :reserve_end_time
        column "予約制限数", :reserve_limited_number

        actions
    end
end
