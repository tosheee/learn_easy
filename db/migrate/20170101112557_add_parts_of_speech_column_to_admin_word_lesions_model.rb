class AddPartsOfSpeechColumnToAdminWordLesionsModel < ActiveRecord::Migration
  def change
    add_column :admin_word_lesions, :parts_of_speech, :string
  end
end
