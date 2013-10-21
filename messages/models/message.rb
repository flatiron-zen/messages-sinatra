class Message
  include DataMapper::Resource

  property :id, Serial            # Auto-increment integer id
  property :from, String          # A short string of text
  property :content, Text         # A longer text block
  property :created_at, DateTime  # Auto assigns data/time
  property :email, String

  def get_gravatar_url
    hash = Digest::MD5.hexdigest("#{self.email}")
    "http://www.gravatar.com/avatar/#{hash}?d=monsterid&s=100"
  end

end
