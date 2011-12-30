

class DocumentsController < ApplicationController

    # GET /documents
  # GET /documents.json
  def index
    if params[:id] == nil
      @documents = Document.all
    else
      @documents = Document.where(:category_id => params[:id])
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documents }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @document = Document.new
    @categories = Category.all
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document }
    end
  end

  # GET /products/1/edit
  def edit
    @document = Document.find(params[:id])
    @categories = Category.all
  end

  # POST /products
  # POST /products.json
  def create
    @document = Document.new(params[:document])

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Product was successfully updated.' }
        format.json { render json: @document, status: :created, location: @document }
      else
        format.html { render action: "new" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:document])
        format.html { redirect_to @document, notice: 'Product was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to documents_url }
      format.json { head :ok }
    end
  end
end
