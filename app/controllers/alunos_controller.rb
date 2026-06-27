require "csv"

class AlunosController < ApplicationController
  before_action :set_aluno, only: %i[ show edit update destroy ]

  # GET /alunos or /alunos.json
  def index
    @alunos = Aluno.all.page(params[:page]).per(10)
  end

  # GET /alunos/1 or /alunos/1.json
  def show
  end

  # GET /alunos/new
  def new
    @aluno = Aluno.new
  end

  # GET /alunos/1/edit
  def edit
  end

  # POST /alunos or /alunos.json
  def create
    @aluno = Aluno.new(aluno_params)

    respond_to do |format|
      if @aluno.save
        format.html { redirect_to @aluno, notice: "Aluno was successfully created." }
        format.json { render :show, status: :created, location: @aluno }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @aluno.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /alunos/1 or /alunos/1.json
  def update
    respond_to do |format|
      if @aluno.update(aluno_params)
        format.html { redirect_to @aluno, notice: "Aluno was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @aluno }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @aluno.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /alunos/1 or /alunos/1.json
  def destroy
    @aluno.destroy!

    respond_to do |format|
      format.html { redirect_to alunos_path, notice: "Aluno was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  def export_pdf
    @alunos = Aluno.all
    respond_to do |format|
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text "Relatório de Alunos", size: 20, style: :bold
        pdf.text "Gerado em: #{Date.today.strftime('%d/%m/%Y')}", size: 10
        pdf.move_down 20

        table_data = [ [ "Nome", "CPF", "Data de Nascimento" ] ]
        @alunos.each do |aluno|
          table_data << [
            aluno.nome,
            aluno.cpf,
            aluno.data_nascimento&.strftime("%d/%m/%Y")
          ]
        end

        pdf.table(table_data, header: true, width: pdf.bounds.width) do
          row(0).font_style = :bold
          row(0).background_color = "343a40"
          row(0).text_color = "ffffff"
          self.cell_style = { size: 10 }
        end

        send_data pdf.render,
          filename: "alunos.pdf",
          type: "application/pdf",
          disposition: "inline"
      end
    end
  end

  def export_csv
    @alunos = Aluno.all
    respond_to do |format|
      format.csv do
        csv_data = CSV.generate(headers: true) do |csv|
          csv << ["id", "nome", "data_nascimento"]
          @alunos.each do |aluno|
            csv << [
              aluno.id,
              aluno.nome,
              aluno.data_nascimento&.strftime("%d/%m/%Y")
            ]
          end
        end
        send_data csv_data,
          filename: "alunos.csv",
          type: "text/csv",
          disposition: "attachment"
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aluno
      @aluno = Aluno.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def aluno_params
      params.expect(aluno: [ :nome, :cpf, :data_nascimento ])
    end
end
