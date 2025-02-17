class VirtualMachineService
  def initialize(virtual_machine_repository)
    @virtual_machine_repository = virtual_machine_repository
  end

  def add_virtual_machine(virtual_machine)
    @virtual_machine_repository.save(virtual_machine)
  end

  def get_virtual_machine(id)
    @virtual_machine_repository.find_by_id(id)
  end

  def get_all_virtual_machines
    @virtual_machine_repository.find_all
  end

  def delete_virtual_machine(id)
    @virtual_machine_repository.delete(id)
  end
end
