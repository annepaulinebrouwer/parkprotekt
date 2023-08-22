class Devise::Mailer < ApplicationMailer
  include Devise::Mailers::Helpers

  def confirmation_instructions(record, token, opts={})
    # ...
  end

  # More methods like reset_password, unlock_instructions etc
end
