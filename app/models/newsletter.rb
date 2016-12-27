class Newsletter < ActiveRecord::Base

  validates :email, presence: :true
  after_create :subscribe_to_newsletter

  private

  def subscribe_to_newsletter
    SubscribeToNewsletterService.new(self).add_to_mailchimp
  end

end
