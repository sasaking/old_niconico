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

    # 検索条件の項目設定
    filter :id
    filter :event_id

    # 予約一覧画面の表示項目設定(日本語変換はmodel/ja.ymlで設定)
    index do
        column :event_id
        column :created_at
        column :name
        column :kana
        column :child_name
        column :child_kana
        column :child_age
        column :tel
        column :email

        # 初回フラグ
        column :beginner_flg do |reserve|
          # 値から初回かを判定する
          if reserve.beginner_flg == 1
              "初回"
          else
              ""
          end
        end

        actions
    end

end
