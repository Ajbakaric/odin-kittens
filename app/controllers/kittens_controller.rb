# app/controllers/kittens_controller.rb
class KittensController < ApplicationController
    before_action :set_kitten, only: [:show, :edit, :update, :destroy]
    
    # GET /kittens
    # GET /kittens.json
    def index
      @kittens = Kitten.all
      respond_to do |format|
        format.html
        format.json { render json: @kittens }
      end
    end
      
    # GET /kittens/1
    def show
      @kitten = Kitten.find(params[:id])
      render json: @kitten
    rescue ActiveRecord::RecordNotFound
      render json: { error: 'Kitten not found' }, status: :not_found
    end
    
    # GET /kittens/new
    def new
      @kitten = Kitten.new
    end
    
    # GET /kittens/1/edit
    def edit
    end
    
    # POST /kittens
    def create
      @kitten = Kitten.new(kitten_params)
  
      if @kitten.save
        flash[:notice] = 'Congratulations! You successfully added a kitten.'
        redirect_to @kitten
      else
        flash[:alert] = 'Oops! There were errors in your form.'
        render :new
      end
    end
    
    # PATCH/PUT /kittens/1
    def update
      if @kitten.update(kitten_params)
        flash[:notice] = 'Congratulations! You successfully updated the kitten.'
        redirect_to @kitten
      else
        flash[:alert] = 'Oops! There were errors in your form.'
        render :edit
      end
    end
    
    # DELETE /kittens/1
    def destroy
      @kitten.destroy
      flash[:notice] = 'Congratulations! You successfully deleted the kitten.'
      redirect_to kittens_url
    end
    
    private
    
    def set_kitten
      @kitten = Kitten.find(params[:id])
    end
    
    def kitten_params
      params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end
  end
  