class TrainingUnitsController < ApplicationController
  # GET /training_units
  # GET /training_units.xml
  def index
    @training_units = TrainingUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @training_units }
    end
    
  end

  # GET /training_units/1
  # GET /training_units/1.xml
  def show
    @training_unit = TrainingUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @training_unit }
    end
  end

  # GET /training_units/new
  # GET /training_units/new.xml
  def new
    @training_unit = TrainingUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @training_unit }
    end
  end

  # GET /training_units/1/edit
  def edit
    @training_unit = TrainingUnit.find(params[:id])
  end

  # POST /training_units
  # POST /training_units.xml
  def create
    @training_unit = TrainingUnit.new(params[:training_unit])

    respond_to do |format|
      if @training_unit.save
        flash[:notice] = 'TrainingUnit was successfully created.'
        format.html { redirect_to(@training_unit) }
        format.xml  { render :xml => @training_unit, :status => :created, :location => @training_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @training_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /training_units/1
  # PUT /training_units/1.xml
  def update
    @training_unit = TrainingUnit.find(params[:id])

    respond_to do |format|
      if @training_unit.update_attributes(params[:training_unit])
        flash[:notice] = 'TrainingUnit was successfully updated.'
        format.html { redirect_to(@training_unit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @training_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /training_units/1
  # DELETE /training_units/1.xml
  def destroy
    @training_unit = TrainingUnit.find(params[:id])
    @training_unit.destroy

    respond_to do |format|
      format.html { redirect_to(training_units_url) }
      format.xml  { head :ok }
    end
  end
end
