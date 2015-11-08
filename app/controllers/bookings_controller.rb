class BookingsController < InheritedResources::Base

	actions :all, except: [:show]
	autocomplete :item, :name, :full => true
	
	layout 'agenda'

	def index
		@booking = Booking.new

		@items = Item.all
	end

	def create
		@booking = Booking.create(params[:booking])

		@agendamento = Agendamento.create(:item_id => @booking.id_item, :booking_id => @booking.id, :agendamento_date => DateTime.now)

		if @booking.save
			respond_to do |format|
				format.html { redirect_to bookings_path, notice: "Sucesso" }
				format.json				
			end
		end
		
	end
			
end
