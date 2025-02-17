class VirtualMachine
  attr_accessor :id, :name, :status, :ip_address

  def initialize(id, name, status, ip_address)
    @id = id
    @name = name
    @status = status
    @ip_address = ip_address
  end
end
