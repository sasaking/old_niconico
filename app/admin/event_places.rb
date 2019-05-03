ActiveAdmin.register EventPlace do
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

    #初期表示のソート指定なし

    # 1ページの表示件数を20件とする
    config.per_page = 20

    # イベント会場一覧画面の表示項目設定(表示タイトル,表示カラム)
    index do 
        column "会場名" , :event_place_name
        column "会場住所" , :event_place_address
        column "会場URL" , :event_place_url
        column "登録日" , :created_at

        actions
    end

end
