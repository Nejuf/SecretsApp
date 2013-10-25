class FriendshipsController < ApplicationController

  def create
    @friendship = Friendship.new({
                          in_friend_id: params[:user_id],
                          out_friend_id: current_user.id
                          })
    @friendship.save!

    # redirect_to users_url
    head :ok
  end

  def destroy
    @friendship = Friendship.where("out_friend_id = ? AND in_friend_id = ?",
                                    current_user.id, params[:user_id]
                                  ).first

    @friendship.destroy
    head :ok
  end
end
