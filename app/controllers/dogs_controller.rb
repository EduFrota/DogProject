class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :authorize_dog, only: [:edit, :update, :destroy]
  # GET /dogs
  # GET /dogs.json

  layout "application"
  def index
    @Search = Dog.where.not(user_id: current_user).ransack(params[:q])
    @dogs = @Search.result(distinct: true)
    #@dogs = Dog.where.not(user_id: current_user)
  end

  def mydogs
    @dogs = Dog.where(user_id: current_user)
  end

  def filtergenderm
    @dogs = Dog.select(gender: macho)
  end
  # GET /dogs/1
  # GET /dogs/1.json
  def show
    @favorite_exists = Favorite.where(dog: @dog, user: current_user)  == [] ? false : true
  end

  # GET /dogs/new
  def new
    @dog = Dog.new
  end


  # GET /dogs/1/edit
  def edit
  end

  # POST /dogs
  # POST /dogs.json
  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    respond_to do |format|
      if @dog.save
        format.html { redirect_to @dog, notice: 'Dog was successfully created.' }
        format.json { render :mydogs, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogs/1
  # PATCH/PUT /dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to @dog, notice: 'Dog was successfully updated.' }
        format.json { render :mydogs, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogs/1
  # DELETE /dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Dog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params
      params.require(:dog).permit(:name, :breed, :user_id, :image, :age, :gender, :vacine, :pedigree,
       :mother_name, :father_name, :register, :temperament, :length, :heigth, :pelage, :pelage_color, :weight, :teste)
    end

    def authorize_dog
      authorize @dog
    end
end
