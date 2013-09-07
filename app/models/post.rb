class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_attached_file :watercolor, :styles => {:medium => "300x300>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"


  private

    def post_params
      params.require(:post).permit(:name, :title, :content, :watercolor)
    end

end
