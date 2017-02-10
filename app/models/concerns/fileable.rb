module Fileable
  extend ActiveSupport::Concern

  class_methods do
    attr_accessor :files
  end

  included do

    after_create :save_files!

    @files ||= %w(imagen)

    for atributo in @files
      dragonfly_accessor atributo do
        # after_assign do |file|
        #   file.encode!('jpg', '-quality 80') if file.image? && file.ext.in?(['JPG', 'jpg'])
        # end
        storage_options do |f|
          { path: File.join(folder, f.name) }
        end
      end
    end

  end

  def folder
    File.join self.class.name.tableize, id.to_s
  end

  private

  def save_files!
    reload # evita el problema de duplicar el _count
    update! self.class.files.map { |attribute| { attribute.to_sym => send(attribute) } }.reduce({}, :merge)
  end

end
