class RecipientsUsersController < ApplicationController
  before_action :set_recipients_user, only: [:show, :edit, :update, :destroy]

  # GET /recipients_users
  # GET /recipients_users.json
  def index
    @recipients_users = RecipientsUser.all
  end

  # GET /recipients_users/1
  # GET /recipients_users/1.json
  def show
  end

  # GET /recipients_users/new
  def new
    @recipients_user = RecipientsUser.new
  end

  # GET /recipients_users/1/edit
  def edit
  end

  # POST /recipients_users
  # POST /recipients_users.json
  def create
    @recipients_user = RecipientsUser.new(recipients_user_params)

    respond_to do |format|
      if @recipients_user.save
        format.html { redirect_to @recipients_user, notice: 'Recipients user was successfully created.' }
        format.json { render :show, status: :created, location: @recipients_user }
      else
        format.html { render :new }
        format.json { render json: @recipients_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipients_users/1
  # PATCH/PUT /recipients_users/1.json
  def update
    respond_to do |format|
      if @recipients_user.update(recipients_user_params)
        format.html { redirect_to @recipients_user, notice: 'Recipients user was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipients_user }
      else
        format.html { render :edit }
        format.json { render json: @recipients_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipients_users/1
  # DELETE /recipients_users/1.json
  def destroy
    @recipients_user.destroy
    respond_to do |format|
      format.html { redirect_to recipients_users_url, notice: 'Recipients user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipients_user
      @recipients_user = RecipientsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipients_user_params
      params.require(:recipients_user).permit(:recipient_id, :user_id)
    end
end
