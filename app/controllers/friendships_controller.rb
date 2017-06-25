class FriendshipsController < ApplicationController
  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    redirect_to my_friends_path
    flash[:success] = "Friend was successfully removed"
  end
end