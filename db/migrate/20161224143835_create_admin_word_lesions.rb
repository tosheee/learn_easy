class CreateAdminWordLesions < ActiveRecord::Migration
  def change
    create_table :admin_word_lesions do |t|
      t.string :en_word
      t.string :en_audio_word
      t.string :bg_word
      t.string :bg_audio_word
      t.string :visible_word, :default => 'true'
      t.string :img_word
      t.integer :lesion_id

      t.timestamps null: false
    end
  end
end
