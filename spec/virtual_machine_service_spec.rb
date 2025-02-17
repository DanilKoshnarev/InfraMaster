require 'rspec'
require_relative '../app/domain/entities/VirtualMachine'
require_relative '../app/infrastructure/models/VirtualMachineModel'
require_relative '../app/domain/services/VirtualMachineService'
require_relative '../app/domain/use_cases/ManageVirtualMachine'

RSpec.describe 'Virtual Machine Management' do
  before(:each) do
    @virtual_machine_repository = VirtualMachineModel.new
    @virtual_machine_service = VirtualMachineService.new(@virtual_machine_repository)
    @manage_virtual_machine = ManageVirtualMachine.new(@virtual_machine_service)
  end

  it 'creates a virtual machine' do
    @manage_virtual_machine.create_virtual_machine("1", "VM1", "Running", "192.168.0.1")
    vm = @manage_virtual_machine.view_virtual_machine("1")
    expect(vm).not_to be_nil
    expect(vm.name).to eq("VM1")
    expect(vm.status).to eq("Running")
  end

  it 'deletes a virtual machine' do
    @manage_virtual_machine.create_virtual_machine("1", "VM1", "Running", "192.168.0.1")
    @manage_virtual_machine.remove_virtual_machine("1")
    vm = @manage_virtual_machine.view_virtual_machine("1")
    expect(vm).to be_nil
  end

  it 'views all virtual machines' do
    @manage_virtual_machine.create_virtual_machine("1", "VM1", "Running", "192.168.0.1")
    @manage_virtual_machine.create_virtual_machine("2", "VM2", "Stopped", "192.168.0.2")
    vms = @manage_virtual_machine.view_all_virtual_machines
    expect(vms.length).to eq(2)
  end
end
