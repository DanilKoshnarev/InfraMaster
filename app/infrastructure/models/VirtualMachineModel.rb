require_relative '../../domain/repositories/VirtualMachineRepository'
require_relative '../../domain/entities/VirtualMachine'

class VirtualMachineModel < VirtualMachineRepository
  def initialize
    @virtual_machines = []
  end

  def save(virtual_machine)
    @virtual_machines << virtual_machine
  end

  def find_by_id(id)
    @virtual_machines.find { |vm| vm.id == id }
  end

  def find_all
    @virtual_machines
  end

  def delete(id)
    @virtual_machines.reject! { |vm| vm.id == id }
  end
end
