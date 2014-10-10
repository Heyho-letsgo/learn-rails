class Visitor < ActiveRecord::Base
  has_no_table
  column :email, :string
  validates_presence_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i


  def subscribe_to_mailchimp testing=false
    return true if (Rails.env.test? && !testing)
    list_id = ENV['MAILCHIMP_LIST_ID']

    response = Rails.configuration.mailchimp.lists.subscribe({
                                                                 id: list_id,
                                                                 email: {email: email},
                                                                 double_optin: false,
                                                             })
    response
  end



end



