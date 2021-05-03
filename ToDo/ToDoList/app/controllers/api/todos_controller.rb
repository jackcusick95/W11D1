class API::ToDosController < ApplicationController

    def show
        render json: Todo.find(params[:id])
    end 

    def index 
        @todos = ToDo.all
        render json: @todos
    end 

    def create
        @todo = ToDo.new(todo_params)

        if @todo.save 
            render json: @todo
        else 
            render json: @todo.errors.full_messages, status: 422
        end 
    end 

    def update 
        @todo = ToDo.find(params[:id])

        if @todo.update(todo_params) 
            render json: @todo
        else 
            render json: @todo.errors.full_messages, status: 422
        end 
    end 

    def destroy 
        @todo = ToDo.find(params[:id])
        @todo.destroy
        render json: @todos  
    end 

    private

    def todo_params 
        params.require(:todo).permit(:title, :body, :done)
    end 

end 