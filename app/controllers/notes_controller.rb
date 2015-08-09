class NotesController < ApplicationController
	before_action :load_project

	def create
		@note = @project.notes.new(note_params)
		if @note.save
			redirect_to @project, notice: 'Note Created.'
		else
			redirect_to @project, alert: 'Unable to create Note'
		end
	end

	def destroy
		@note = @project.notes.find(params[:id])
		@note.destroy
		redirect_to @project, notice: 'Note Deleted'
	end

	private
	def load_project
		@project = Project.find(params[:project_id])
	end

	def project_params
		params.require(:subject).permit(:body)
	end


end
