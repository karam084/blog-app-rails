require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do
    @user = User.create(
      name: 'Karam',
      photo: 'https://unsplash.com/photos/F_-0BxGuVvo',
      bio: 'I am programming',
      posts_counter: 0
    )

    @comment = Comment.create(
      text: 'Coding is fun',
      author_id: @user.id,
      post_id: 1
    )
  end

  it '@comments created should not be valid' do
    @user.posts_counter = 0
    expect(@comment).to be_valid
  end
end
