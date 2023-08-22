class Devise::Mailer < Devise.parent_mailer.constantize
  include Devise::Mailers::Helpers

  def confirmation_instructions(record, token, opts={})
    # ...
  end

  # More methods like reset_password, unlock_instructions etc
end
