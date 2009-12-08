class DailyValuesController < ApplicationController
  # GET /daily_values
  # GET /daily_values.xml
  def index
    @daily_values = DailyValues.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @daily_values }
    end
  end

  # GET /daily_values/1
  # GET /daily_values/1.xml
  def show
    @daily_values = DailyValues.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @daily_values }
    end
  end

  # GET /daily_values/new
  # GET /daily_values/new.xml
  def new
    @daily_values = DailyValues.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @daily_values }
    end
  end

  # GET /daily_values/1/edit
  def edit
    @daily_values = DailyValues.find(params[:id])
  end

  # POST /daily_values
  # POST /daily_values.xml
  def create
    @daily_values = DailyValues.new(params[:daily_values])

    respond_to do |format|
      if @daily_values.save
        flash[:notice] = 'DailyValues was successfully created.'
        format.html { redirect_to(@daily_values) }
        format.xml  { render :xml => @daily_values, :status => :created, :location => @daily_values }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @daily_values.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /daily_values/1
  # PUT /daily_values/1.xml
  def update
    @daily_values = DailyValues.find(params[:id])

    respond_to do |format|
      if @daily_values.update_attributes(params[:daily_values])
        flash[:notice] = 'DailyValues was successfully updated.'
        format.html { redirect_to(@daily_values) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @daily_values.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_values/1
  # DELETE /daily_values/1.xml
  def destroy
    @daily_values = DailyValues.find(params[:id])
    @daily_values.destroy

    respond_to do |format|
      format.html { redirect_to(daily_values_url) }
      format.xml  { head :ok }
    end
  end
end
