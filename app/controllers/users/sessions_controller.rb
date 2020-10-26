class Users::SessionsController < Devise::SessionsController
  def new_guest
    user = User.find_or_create_by(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "ゲストユーザー"
      user.job_years = "4"
      user.profile = "神奈川県の地場ゼネコンで土木の施工管理をしています。
                      最近は仕事にも慣れてきてできる仕事の幅も広がったの
                      ですが、その分わからないことも増えてきたので質問、
                      また共有させていただきたいと思いこのサイトに登録しました。"
      user.occupation = "施工管理（土木)"
    end
    sign_in user
    redirect_to user_path(user), notice: 'ゲストユーザーとしてログインしました。'
  end
end
