class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def alphabetized
    @alphabetized = Customer.order(:full_name)
  end

  def missing_email
    @missing_email = Customer.where(email_address: "")
  end
end
