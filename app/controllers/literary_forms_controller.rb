class LiteraryFormsController < ApplicationController
  before_action :set_literary_form, only: %i[ show edit update destroy ]

  def index
    @literary_forms = LiteraryForm.all
  end

  def show
  end

  def new
    @literary_form = LiteraryForm.new
  end

  def create
    @literary_form = LiteraryForm.new(literary_form_params)
    if @literary_form.save
      redirect_to @literary_form
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @literary_form.update(literary_form_params)
      redirect_to @literary_form
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @literary_form.destroy
    redirect_to literary_forms_path
  end

  def set_literary_form
    @literary_form = LiteraryForm.find(params[:id])
  end

  def literary_form_params
    params.expect(literary_form: [ :name ])
  end

  private :literary_form_params, :set_literary_form

end
