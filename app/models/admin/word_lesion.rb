class Admin::WordLesion < ActiveRecord::Base
  mount_uploader :en_audio_word, EnAudioWordUploader
  mount_uploader :img_word, ImgWordUploader
  validates :en_word, :bg_word, :lesion_id, :parts_of_speech, presence: true # Make sure the owner's name is present.

  def self.index(params)
    search = params[:search]
    parts_of_speech = params[:parts_of_speech]
    if search.present?
      admin_word_lesions = Admin::WordLesion.where(["en_word LIKE ?", "%#{search}%"])
    elsif parts_of_speech.present?
      admin_word_lesions = Admin::WordLesion.where(["parts_of_speech LIKE ?", "%#{parts_of_speech}%"])
    end
    admin_word_lesions
  end

end
