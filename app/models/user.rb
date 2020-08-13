class User < ApplicationRecord
    validates :password, confirmation: true


    def authenticate(password)
        if self.password == password 
            self
        else
            nil
        end
    end
end
