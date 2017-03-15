require 'rails_helper'

RSpec.describe Comment, type: :model do
 	let(:topic) { Topic.create!(name: "topic title", description: "topic description with bogus extra characters") }
 	let(:post) { topic.posts.create!(title: "post title", body: "post body with really long text to appease the gods") }
	let(:comment) { Comment.create!(body: 'Comment Body', post: post) }

	describe "attributes" do
		it "has a body attribute" do
			expect(comment).to have_attributes(body: "Comment Body")
		end
	end
end
