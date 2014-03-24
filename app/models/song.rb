class Song < ActiveRecord::Base
   belongs_to :singer
   
  
   has_attached_file :link
   validates_attachment_presence :link
  validates_attachment_content_type :link, :content_type => [ 'application/mp3', 'application/x-mp3', 'audio/mpeg', 'audio/mp3' ],
                                    :message => 'file must be of filetype .mp3'

   
end
