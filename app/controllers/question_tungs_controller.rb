class QuestionTungsController < ApplicationController
  # GET /question_tungs
  # GET /question_tungs.xml
  def index
    @question_tungs = QuestionTung.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @question_tungs }
    end
  end

  # GET /question_tungs/1
  # GET /question_tungs/1.xml
  def show
    @question_tung = QuestionTung.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question_tung }
    end
  end

  # GET /question_tungs/new
  # GET /question_tungs/new.xml
  def new
    @question_tung = QuestionTung.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question_tung }
    end
  end

  # GET /question_tungs/1/edit
  def edit
    @question_tung = QuestionTung.find(params[:id])
  end

  # POST /question_tungs
  # POST /question_tungs.xml
  def create
    @question_tung = QuestionTung.new(params[:question_tung])

    respond_to do |format|
      if @question_tung.save
        format.html { redirect_to(@question_tung, :notice => 'Question tung was successfully created.') }
        format.xml  { render :xml => @question_tung, :status => :created, :location => @question_tung }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question_tung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /question_tungs/1
  # PUT /question_tungs/1.xml
  def update
    @question_tung = QuestionTung.find(params[:id])

    respond_to do |format|
      if @question_tung.update_attributes(params[:question_tung])
        format.html { redirect_to(@question_tung, :notice => 'Question tung was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question_tung.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /question_tungs/1
  # DELETE /question_tungs/1.xml
  def destroy
    @question_tung = QuestionTung.find(params[:id])
    @question_tung.destroy

    respond_to do |format|
      format.html { redirect_to(question_tungs_url) }
      format.xml  { head :ok }
    end
  end
end
