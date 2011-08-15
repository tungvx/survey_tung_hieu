class SurveyTungsController < ApplicationController
  # GET /survey_tungs
  # GET /survey_tungs.xml
  def index
    @survey_tungs = SurveyTung.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @survey_tungs }
    end
  end

  # GET /survey_tungs/1
  # GET /survey_tungs/1.xml
  def show
    @survey_tung = SurveyTung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @survey_tung }
    end
  end

  # GET /survey_tungs/new
  # GET /survey_tungs/new.xml
  def new
    @survey_tung = SurveyTung.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @survey_tung }
    end
  end

  # GET /survey_tungs/1/edit
  def edit
    @survey_tung = SurveyTung.find(params[:id])
  end

  # POST /survey_tungs
  # POST /survey_tungs.xml
  def create
    @survey_tung = SurveyTung.new(params[:survey_tung])

    respond_to do |format|
      if @survey_tung.save
        format.html { redirect_to(@survey_tung, :notice => 'Survey tung was successfully created.') }
        format.xml  { render :xml => @survey_tung, :status => :created, :location => @survey_tung }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @survey_tung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /survey_tungs/1
  # PUT /survey_tungs/1.xml
  def update
    @survey_tung = SurveyTung.find(params[:id])

    respond_to do |format|
      if @survey_tung.update_attributes(params[:survey_tung])
        format.html { redirect_to(@survey_tung, :notice => 'Survey tung was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @survey_tung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /survey_tungs/1
  # DELETE /survey_tungs/1.xml
  def destroy
    @survey_tung = SurveyTung.find(params[:id])
    @survey_tung.destroy

    respond_to do |format|
      format.html { redirect_to(survey_tungs_url) }
      format.xml  { head :ok }
    end
  end
end
