class Reserve < ApplicationRecord
    # emailの正規表現
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
    # 携帯番号(ハイフンなし11桁)
    VALID_TEL_REGEX = /\d{11}/

    validates :event_id ,  presence: { with: true, message: '講座を選択してください'}
    validates :child_name, presence: { with: true, message: 'お子様の名前を入力してください' }
    validates :child_kana, presence: { with: true, message: 'お子様のふりがなを入力してください' }
    validates :child_age,  presence: { with: true, message: 'お子様の月齢を入力してください' }
    #validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: '正しいメールアドレスを入力してください' }
    #validates :tel, presence: true, format: { with: VALID_TEL_REGEX, message: '携帯番号はハイフン抜きで11桁以内で入力してください' }
    validates :email,          presence: { with: true, uniqueness: true, format: VALID_EMAIL_REGEX, message: '正しいメールアドレスを入力してください' }
    validates :tel,            presence: { with: true, format:  VALID_TEL_REGEX, message: '携帯番号はハイフン抜きで11桁以内で入力してください' }
    validates :reserve_period, presence: { with: true, message: '予約時間を指定してください' }
    validates :question_id,    presence: { with: true, message: 'アンケートの中からいづれかを選択してください' }
end
