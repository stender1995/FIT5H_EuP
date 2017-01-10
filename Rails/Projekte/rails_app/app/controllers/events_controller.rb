class EventsController < ApplicationController
<<<<<<< HEAD
	before_action :set_event, only: [:show, :edit, :update]
=======
	before_action :set_event, only: [:show, :edit, :update, :destroy]
>>>>>>> ab48a35154bf86a13ffa76948197016cf19b36e4
	def index
		@events = Event.all
	end

	def show
<<<<<<< HEAD
		
=======
>>>>>>> ab48a35154bf86a13ffa76948197016cf19b36e4
	end

	def new
		@event = Event.new
	end

	def create
<<<<<<< HEAD
		@event = Event.create(event_params)
		if @event_save 
			redirect_to events_path
		else 
			render :new
		end 
		
		redirect_to events_path
	end

	def edit

	end

	def update

=======
		@event = Event.new(event_params)
		if @event.save
			redirect_to events_path
		else
			render :new
		end
	end

	def edit
	end

	def update
>>>>>>> ab48a35154bf86a13ffa76948197016cf19b36e4
		@event.update(event_params)
		redirect_to events_path
	end

<<<<<<< HEAD
=======
	def destroy
		@event.destroy
		redirect_to events_path
	end

>>>>>>> ab48a35154bf86a13ffa76948197016cf19b36e4
	private
		def set_event
			@event = Event.find(params[:id])
		end

		def event_params
			params.require(:event).permit(:name, :description, :location, :price, :start_date)
		end
<<<<<<< HEAD
end
=======
end
>>>>>>> ab48a35154bf86a13ffa76948197016cf19b36e4
