require 'rails_helper'

RSpec.describe Comment, type: :model do
 	let(:topic) { Topic.create!(name: "Topic Name", description: "Topic description") }
 	let(:post) { topic.posts.create!(title: "Post Title", body: "post body") }
	let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

	describe "attributes" do
		it "has a body attribute" do
			expect(comment).to have_attributes(body: "Comment Body")
		end
	end
end
