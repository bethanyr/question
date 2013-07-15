class QuestionDataController < ApplicationController
  # GET /question_data
  # GET /question_data.json
  def index
    @question_data = QuestionDatum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @question_data }
    end
  end

  # GET /question_data/1
  # GET /question_data/1.json
  def show
    @question_datum = QuestionDatum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @question_datum }
    end
  end

  # GET /question_data/new
  # GET /question_data/new.json
  def new
    @question_datum = QuestionDatum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @question_datum }
    end
  end

  # GET /question_data/1/edit
  def edit
    @question_datum = QuestionDatum.find(params[:id])
  end

  # POST /question_data
  # POST /question_data.json
  def create
    @question_datum = QuestionDatum.new(params[:question_datum])

    respond_to do |format|
      if @question_datum.save
        format.html { redirect_to @question_datum, notice: 'Question datum was successfully created.' }
        format.json { render json: @question_datum, status: :created, location: @question_datum }
      else
        format.html { render action: "new" }
        format.json { render json: @question_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /question_data/1
  # PUT /question_data/1.json
  def update
    @question_datum = QuestionDatum.find(params[:id])

    respond_to do |format|
      if @question_datum.update_attributes(params[:question_datum])
        format.html { redirect_to @question_datum, notice: 'Question datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @question_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_data/1
  # DELETE /question_data/1.json
  def destroy
    @question_datum = QuestionDatum.find(params[:id])
    @question_datum.destroy

    respond_to do |format|
      format.html { redirect_to question_data_url }
      format.json { head :no_content }
    end
  end
end
