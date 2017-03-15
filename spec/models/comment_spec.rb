require 'rails_helper'

RSpec.describe Comment, type: :model do
 	let(:topic) { Topic.create!(name: "topic name", description: "topic description") }
 	let(:post) { topic.posts.create!(title: 'post title', body: 'extra long post body') }
	let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

	describe "attributes" do
		it "has a body attribute" do
			expect(comment).to have_attributes(body: "Comment Body")
		end
	end
end
