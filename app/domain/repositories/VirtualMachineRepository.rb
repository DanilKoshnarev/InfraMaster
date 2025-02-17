class VirtualMachineRepository
  def save(virtual_machine)
    raise NotImplementedError
  end

  def find_by_id(id)
    raise NotImplementedError
  end

  def find_all
    raise NotImplementedError
  end

  def delete(id)
    raise NotImplementedError
  end
end
