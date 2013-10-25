class FriendshipsController < ApplicationController

  def create
    sleep(2)
    @friendship = Friendship.new({
                          in_friend_id: params[:user_id],
                          out_friend_id: current_user.id
                          })
    @friendship.save!

    redirect_to users_url
  end
end
