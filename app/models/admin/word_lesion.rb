class Admin::WordLesion < ActiveRecord::Base
  #mount_uploader :en_audio_word, WordUploader # Tells rails to use this uploader for this model.
  mount_uploader :en_audio_word, EnAudioWordUploader
  #mount_uploader :bg_audio_word, WordUploader
  mount_uploader :img_word, ImgWordUploader

  validates :en_word, :bg_word, :lesion_id, presence: true # Make sure the owner's name is present.
end
