class UserMailer < ApplicationMailer
  default from: 'iguchi@suwako-resort.co.jp'

  def notice_from_user

    @user = User.find(params[:user_id])
    auth_mail = User.find_by(name: '佐々木').email
    @url = params[:url]
    mail(to: auth_mail, subject:'承認要求です。')
    
  end

  def decline_from_user

    @user = User.find(params[:user_id])
    auth_mail = User.find_by(name: '佐々木').email
    @url = params[:url]
    mail(to: auth_mail, subject:'承認要求の取消です。')
    
  end

  #-----------------------------------

  def notice_from_auth

    @auth = User.find(params[:auth_id])
    user_mail = User.find(params[:user_id]).email
    @url = params[:url]
    mail(to: user_mail, subject:'承認されました。')
    
  end

  def decline_from_auth

    @auth = User.find(params[:auth_id])
    user_mail = User.find(params[:user_id]).email
    @url = params[:url]
    mail(to: user_mail, subject:'取消れました。')
    
  end








  #-------------------------------------------------------
  def account_activation(user)
    @user = user
    mail to: user.email # => mail object
      # =>    app/views/user_mailer/account_activation.text.erb
      # =>    app/views/user_mailer/account_activation.html.erb    
      # https://hogehoge.com/account_activations/:id/edit
      # :id <= @user.activation_token
  end

  def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
    # => [text|html].erb
  end
end
