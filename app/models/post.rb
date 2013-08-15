class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  private

    def post_params
      params.require(:post).permit(:name, :title, :content)
    end

end
