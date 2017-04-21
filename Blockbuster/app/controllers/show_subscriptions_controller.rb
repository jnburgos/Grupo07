class ShowSubscriptionsController < ApplicationController
  before_action :set_show_subscription, only: [:show, :edit, :update, :destroy]

  # GET /show_subscriptions
  # GET /show_subscriptions.json
  def index
    @show_subscriptions = ShowSubscription.all
  end

  # GET /show_subscriptions/1
  # GET /show_subscriptions/1.json
  def show
  end

  # GET /show_subscriptions/new
  def new
    @show_subscription = ShowSubscription.new
  end

  # GET /show_subscriptions/1/edit
  def edit
  end

  # POST /show_subscriptions
  # POST /show_subscriptions.json
  def create
    @show_subscription = ShowSubscription.new(show_subscription_params)

    respond_to do |format|
      if @show_subscription.save
        format.html { redirect_to @show_subscription, notice: 'Show subscription was successfully created.' }
        format.json { render :show, status: :created, location: @show_subscription }
      else
        format.html { render :new }
        format.json { render json: @show_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /show_subscriptions/1
  # PATCH/PUT /show_subscriptions/1.json
  def update
    respond_to do |format|
      if @show_subscription.update(show_subscription_params)
        format.html { redirect_to @show_subscription, notice: 'Show subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @show_subscription }
      else
        format.html { render :edit }
        format.json { render json: @show_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /show_subscriptions/1
  # DELETE /show_subscriptions/1.json
  def destroy
    @show_subscription.destroy
    respond_to do |format|
      format.html { redirect_to show_subscriptions_url, notice: 'Show subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_show_subscription
      @show_subscription = ShowSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def show_subscription_params
      params.require(:show_subscription).permit(:show, :user)
    end
end
