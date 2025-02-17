class VirtualMachineController
  def initialize(manage_virtual_machine)
    @manage_virtual_machine = manage_virtual_machine
  end

  def add_virtual_machine(id, name, status, ip_address)
    @manage_virtual_machine.create_virtual_machine(id, name, status, ip_address)
  end

  def get_virtual_machine(id)
    @manage_virtual_machine.view_virtual_machine(id)
  end

  def get_all_virtual_machines
    @manage_virtual_machine.view_all_virtual_machines
  end

  def delete_virtual_machine(id)
    @manage_virtual_machine.remove_virtual_machine(id)
  end
end
