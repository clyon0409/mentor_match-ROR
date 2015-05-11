class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
	end

	def create
		#render :text=>'got into events create'
		@event = Event.new(name: params[:event]['name'], description: params[:event]['description'], date: params[:event]['date'], start: params[:event]['start'], end: params[:event]['end'], location: params[:event]['location'] )
			if @event.save.nil?
				flash[:errors] = @event.errors.full_messages
			end
		redirect_to :controller => 'events', :action => 'index'
	end

end
