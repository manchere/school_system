class Question < ApplicationRecord

    include Gravtastic

    gravtastic
    
    def gravatar
        image_src = "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
    end
end
    