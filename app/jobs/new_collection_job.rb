class NewCollectionJob < ActiveJob::Base
  queue_as :default

  # IMPORTANT: Arguments will be serialized to json, so pass id, string, not full objects.
  def perform(collection_id)
    NewsletterMailerPreview.new.new_collection
  end
end
