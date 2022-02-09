class User < ApplicationRecord

    validates_uniqueness_of :username

    def self.generate
        fname = ['Unknown','Anonymous','Strange']
        lname = ['user','joiner','guy']
        number = rand.to_s[2..4]
        username = "#{fname.sample}-#{lname.sample}-#{number}"

        create(username: username)
    end

end
