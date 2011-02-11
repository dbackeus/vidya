class MantraCollectionsController < ApplicationController
  # GET /mantra_collections
  # GET /mantra_collections.xml
  def index
    @mantra_collections = MantraCollection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mantra_collections }
    end
  end

  # GET /mantra_collections/1
  # GET /mantra_collections/1.xml
  def show
    @mantra_collection = MantraCollection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mantra_collection }
    end
  end

  # GET /mantra_collections/new
  # GET /mantra_collections/new.xml
  def new
    @mantra_collection = MantraCollection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mantra_collection }
    end
  end

  # GET /mantra_collections/1/edit
  def edit
    @mantra_collection = MantraCollection.find(params[:id])
  end

  # POST /mantra_collections
  # POST /mantra_collections.xml
  def create
    @mantra_collection = MantraCollection.new(params[:mantra_collection])

    respond_to do |format|
      if @mantra_collection.save
        format.html { redirect_to(@mantra_collection, :notice => 'Mantra collection was successfully created.') }
        format.xml  { render :xml => @mantra_collection, :status => :created, :location => @mantra_collection }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mantra_collection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mantra_collections/1
  # PUT /mantra_collections/1.xml
  def update
    @mantra_collection = MantraCollection.find(params[:id])

    respond_to do |format|
      if @mantra_collection.update_attributes(params[:mantra_collection])
        format.html { redirect_to(edit_mantra_collection_path(@mantra_collection), :notice => 'Mantra collection was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mantra_collection.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mantra_collections/1
  # DELETE /mantra_collections/1.xml
  def destroy
    @mantra_collection = MantraCollection.find(params[:id])
    @mantra_collection.destroy

    respond_to do |format|
      format.html { redirect_to(mantra_collections_url) }
      format.xml  { head :ok }
    end
  end
end
