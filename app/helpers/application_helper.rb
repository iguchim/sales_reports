module ApplicationHelper
  # ページごとの完全なタイトルを返します。
  def full_title(page_title = '')
    base_title = "諏訪湖リゾート出張申請ー報告"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end

  def is_member(user_id)
  	!(ReferenceUser.find_by(refer_id: current_user.id, referred_id: user_id).nil?)
  end
end
