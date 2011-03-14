class DealattendeesController < ApplicationController
  # GET /dealattendees
  # GET /dealattendees.xml
  def index
    @dealattendees = Dealattendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dealattendees }
    end
  end

  # GET /dealattendees/1
  # GET /dealattendees/1.xml
  def show
    @dealattendee = Dealattendee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dealattendee }
    end
  end

  # GET /dealattendees/new
  # GET /dealattendees/new.xml
  def new
    @dealattendee = Dealattendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dealattendee }
    end
  end

  # GET /dealattendees/1/edit
  def edit
    @dealattendee = Dealattendee.find(params[:id])
  end

  # POST /dealattendees
  # POST /dealattendees.xml
  def create
    @dealattendee = Dealattendee.new(params[:dealattendee])

    respond_to do |format|
      if @dealattendee.save
        format.html { redirect_to(@dealattendee, :notice => 'Dealattendee was successfully created.') }
        format.xml  { render :xml => @dealattendee, :status => :created, :location => @dealattendee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dealattendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dealattendees/1
  # PUT /dealattendees/1.xml
  def update
    @dealattendee = Dealattendee.find(params[:id])

    respond_to do |format|
      if @dealattendee.update_attributes(params[:dealattendee])
        format.html { redirect_to(@dealattendee, :notice => 'Dealattendee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dealattendee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dealattendees/1
  # DELETE /dealattendees/1.xml
  def destroy
    @dealattendee = Dealattendee.find(params[:id])
    @dealattendee.destroy

    respond_to do |format|
      format.html { redirect_to(dealattendees_url) }
      format.xml  { head :ok }
    end
  end
end
