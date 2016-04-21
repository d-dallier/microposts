class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  
  #選択したpostをrepostする
  def do_repost(micropost_id, current_user)
    Micropost.find_or_create_by(RT_post: micropost_id, user_id: current_user.id, content: "RP")
  end
  
  #そのpostがrepostされているかどうか？
  def reposting?(micropost_id, current_user)
    Micropost.find_by_RT_post_and_user_id(micropost_id, current_user.id)
  end
end
