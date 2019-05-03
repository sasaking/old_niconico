ActiveAdmin.register Event do
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
    # 初期表示をイベント日の降順でソート
    confi_teorder = 'event_date_desc'

    # 1ページの表示件数を20件とする
    config.per_page = 20

    # 検索項目指定

    # イベント一覧画面の表示項目設定(表示タイトル, 表示カラム)
    index do 
        column "イベント名", :event_title
        column "日程", :event_date
        column "開始時間", :event_start_time
        column "終了時間", :event_end_time
        column "料金", :event_fee
        column "内容", :event_content
        column "掲載開始日", :effective_start
        column "掲載終了日", :effective_end

        actions
    end
end
