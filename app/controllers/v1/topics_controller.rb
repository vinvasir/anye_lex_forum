class V1::TopicsController < ApplicationController
	def index
		render json: Topic.all, each_serializer: V1::TopicSerializer
	end

	def create
		@topic = Topic.create(topic_params)
	end

	private

		def topic_params
			params.require(:topic).permit(:title)
		end
end
