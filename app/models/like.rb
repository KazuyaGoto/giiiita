class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user
  #一人のuserが一つの投稿について一個いいねをつける（制限）
  #post_idとuser＿idが１組しかできないようにバリエーションをかける
  validates_uniqueness_of :post_id, scope: :user_id
end
