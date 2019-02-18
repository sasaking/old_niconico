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

    # filterの項目設定
    filter :id
    filter :event_id

    # Reserve一覧画面の表示項目設定
    index do
        column :event_id
        column :name
        column :kana
        column :child_name
        column :child_kana
        column :child_age
        column :tel
        column :email
        column :beginner_flg

        actions
    end

end
