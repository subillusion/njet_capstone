class DescriptionController < ApplicationController
     before_action :set_title
def create
 @description = @description.title.create(description_params)
 redirect_to @title
end
private
def set_title
 @title = title.find(params[:title_id])
ent
def todo_item_params
 params[:description].permit(:content)
end
end
end
