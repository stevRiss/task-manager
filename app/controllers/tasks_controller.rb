class TasksController < ApplicationController

    def index
        tasks = Task.all
        render json: tasks
    end

    def create
        task = Task.create(u_params)
        render json: task, status: :created 
    end


    def destroy
        task = Task.find(params[:id])
        task.delete
        render json: task, status: 200
    end


    private 
    def u_params
        params.permit(:name, :priority)
    end

end