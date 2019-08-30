
class Recipient < ApplicationRecord
    has_many :histories
    has_and_belongs_to_many :users

    def self.import(file)
        CSV.foreach(file.path, headers: true, encoding: "utf-8") do |row|

            obj = new
            obj.attributes = row.to_hash.slice(*updatable_attributes)
            
            obj.save!
        end
    end
    def self.updatable_attributes
        ["name","shamei","sec_name1","sec_name2","position","post_code","address1","address2","dolor","honor","note"]
    end
end