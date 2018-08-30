class Contacts
  @@contact_list = []

  def self.all
    @@contact_list
  end

  def self.find_by_id(id)
    @@contact_list.find do |contact|
      contact.id == id
    end
  end

  attr_accessor :id, :name, :phoneNumber, :email

  def initialize(contact)
    @name = contact["name"]
    @phoneNumber = contact["phoneNumber"]
    @email = contact["email"]
    @id = rand(1..10000000)
    @@contact_list.push(self)
  end
end
