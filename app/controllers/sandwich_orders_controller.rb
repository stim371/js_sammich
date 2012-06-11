class SandwichOrdersController < ApplicationController
  # GET /sandwich_orders
  # GET /sandwich_orders.json
  def index
    @sandwich_orders = SandwichOrder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sandwich_orders }
    end
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
    @sandwich_order = SandwichOrder.new(params[:sandwich_order])

    respond_to do |format|
      if @sandwich_order.save
        SandwichOrderMailer.order_email(@sandwich_order).deliver
        format.html { redirect_to root_url, notice: 'Sandwich order was successfully created.' }
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
