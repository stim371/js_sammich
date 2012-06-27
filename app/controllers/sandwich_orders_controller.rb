class SandwichOrdersController < ApplicationController
  before_filter :authenticate_user! #, :only => [:index, :show, :success, :edit, :new]
  
  # GET /sandwich_orders
  # GET /sandwich_orders.json
  def index
    @sandwich_orders = SandwichOrder.paginate(:page => params[:page],
                                              :per_page => 10,
                                              :conditions => ['user_id = ?', current_user], 
                                              :order => 'created_at DESC')
    @most_popular = SandwichOrder.select(:sandwich_type).where("user_id = ?", current_user).group(:sandwich_type).count.sort_by {|flavor, count| count }.reverse
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sandwich_orders }
    end
  end
  
  def success
  end

  # GET /sandwich_orders/1
  # GET /sandwich_orders/1.json
  def show
    @sandwich_order = SandwichOrder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sandwich_order }
    end
  end

  # GET /sandwich_orders/new
  # GET /sandwich_orders/new.json
  def new
    @sandwich_order = SandwichOrder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sandwich_order }
    end
  end

  # GET /sandwich_orders/1/edit
  def edit
    @sandwich_order = SandwichOrder.find(params[:id])
  end

  # POST /sandwich_orders
  # POST /sandwich_orders.json
  def create
    @sandwich_order = SandwichOrder.new(params[:sandwich_order].merge!(:user => current_user))

    respond_to do |format|
      if @sandwich_order.save
        SandwichOrderMailer.sandwich_order_email(@sandwich_order).deliver
        #TODO: switch the redirect to a thank-you page
        format.html { redirect_to success_url }
        format.json { render json: @sandwich_order, status: :created, location: @sandwich_order }
      else
        format.html { render action: "new" }
        format.json { render json: @sandwich_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sandwich_orders/1
  # PUT /sandwich_orders/1.json
  def update
    @sandwich_order = SandwichOrder.find(params[:id])

    respond_to do |format|
      if @sandwich_order.update_attributes(params[:sandwich_order])
        format.html { redirect_to @sandwich_order, notice: 'Sandwich order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sandwich_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sandwich_orders/1
  # DELETE /sandwich_orders/1.json
  def destroy
    @sandwich_order = SandwichOrder.find(params[:id])
    @sandwich_order.destroy

    respond_to do |format|
      format.html { redirect_to sandwich_orders_url }
      format.json { head :no_content }
    end
  end
end
