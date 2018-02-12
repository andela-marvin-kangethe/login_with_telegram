class ProgrammingSkillsController < ApplicationController
  before_action :set_programming_skill, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]

  # GET /programming_skills
  # GET /programming_skills.json
  def index
    @programming_skills = ProgrammingSkill.all
  end

  # GET /programming_skills/1
  # GET /programming_skills/1.json
  def show
  end

  # GET /programming_skills/new
  def new
    @programming_skill = ProgrammingSkill.new
  end

  # GET /programming_skills/1/edit
  def edit
  end

  # POST /programming_skills
  # POST /programming_skills.json
  def create
    @programming_skill = current_user.programming_skills.new(programming_skill_params)

    respond_to do |format|
      if @programming_skill.save
        format.html { redirect_to @programming_skill, notice: 'Programming skill was successfully created.' }
        format.json { render :show, status: :created, location: @programming_skill }
      else
        format.html { render :new }
        format.json { render json: @programming_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programming_skills/1
  # PATCH/PUT /programming_skills/1.json
  def update
    respond_to do |format|
      if @programming_skill.update(programming_skill_params)
        format.html { redirect_to @programming_skill, notice: 'Programming skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @programming_skill }
      else
        format.html { render :edit }
        format.json { render json: @programming_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programming_skills/1
  # DELETE /programming_skills/1.json
  def destroy
    @programming_skill.destroy
    respond_to do |format|
      format.html { redirect_to programming_skills_url, notice: 'Programming skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programming_skill
      @programming_skill = current_user.current_user.programming_skills.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programming_skill_params
      params.require(:programming_skill).permit(:name, :level_of_experience)
    end
end
