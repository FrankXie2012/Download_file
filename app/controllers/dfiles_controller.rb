class DfilesController < ApplicationController
  def new
    @dfile = Dfile.new
  end

  def create
    @major = Major.find(params[:major_id])
    @dfile = @major.dfiles.build(params[:dfile])
    respond_to do |format|
      if @dfile.save
        format.html { redirect_to majors_path, notice: 'File was successfully saved.' }
        format.json { render json: @dfile }
      else
        format.html { render action: "new" }
        format.json { render json: @dfile.errors }
      end
    end
  end

  def down_file
    @dfile = Dfile.find(params[:id])
    send_file "public/#{@dfile.store}"
  end
end