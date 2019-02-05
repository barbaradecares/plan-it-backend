class Api::V1::QuotesController < ApplicationController
    before_action :define_current_quote
    
    def create
        quote = Quote.create(quote_params)
        render json: quote
    end

    def show
        render json: current_quote
    end
    
    def index
        render json: Quote.all
    end
    
    def update
        current_quote.update(quote_params)
        render json: current_quote
    end
    
    def destroy
        current_quote.destroy
        render json: quote
    end
    
    def define_current_quote
        if params[:id]
            @current_quote = Quote.find(params[:id])
        end
    end

    def current_quote
        @current_quote
    end

    def my_quotes
        @customer = Customer.find(params[:customer_id])
        render json: @customer.quotes 
    end

    
    def quote_params
        params.require(:quote).permit(:event_date, :customer_id, :vendor_id, :budget, :comments, :guestCount, :response, :status)
    end

end