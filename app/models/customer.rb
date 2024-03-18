class Customer < ApplicationRecord
    validates :full_name, presence:true
    validates :phone_number, presence:true

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "updated_at"]
      end
end
