class ManageVirtualMachine
  def initialize(virtual_machine_service)
    @virtual_machine_service = virtual_machine_service
  end

  def create_virtual_machine(id, name, status, ip_address)
    vm = VirtualMachine.new(id, name, status, ip_address)
    @virtual_machine_service.add_virtual_machine(vm)
  end

  def view_virtual_machine(id)
    @virtual_machine_service.get_virtual_machine(id)
  end

  def view_all_virtual_machines
    @virtual_machine_service.get_all_virtual_machines
  end

  def remove_virtual_machine(id)
    @virtual_machine_service.delete_virtual_machine(id)
  end
end
