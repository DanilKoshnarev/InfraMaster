require_relative '../domain/entities/VirtualMachine'
require_relative '../domain/services/VirtualMachineService'
require_relative '../infrastructure/models/VirtualMachineModel'
require_relative '../infrastructure/controllers/VirtualMachineController'
require_relative '../domain/use_cases/ManageVirtualMachine'

def main
  virtual_machine_repository = VirtualMachineModel.new
  virtual_machine_service = VirtualMachineService.new(virtual_machine_repository)
  manage_virtual_machine = ManageVirtualMachine.new(virtual_machine_service)
  virtual_machine_controller = VirtualMachineController.new(manage_virtual_machine)

  
  virtual_machine_controller.add_virtual_machine("1", "VM1", "Running", "192.168.0.1")
  virtual_machine_controller.add_virtual_machine("2", "VM2", "Stopped", "192.168.0.2")

  
  virtual_machine_controller.get_all_virtual_machines.each do |vm|
    puts "ID: #{vm.id}, Name: #{vm.name}, Status: #{vm.status}, IP Address: #{vm.ip_address}"
  end


  virtual_machine_controller.delete_virtual_machine("1")

  
  virtual_machine_controller.get_all_virtual_machines.each do |vm|
    puts "ID: #{vm.id}, Name: #{vm.name}, Status: #{vm.status}, IP Address: #{vm.ip_address}"
  end
end

main
