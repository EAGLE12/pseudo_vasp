require '../lib/pseudo_vasp/eam'
require 'scanf'
file = './POSCAR_0_3315_46_Al'
model = EAM.new(file)

dx = 0.01
dy = 0.01
dz = 0.01
n = 3
x = 1.0-((n-1)/2+1)*dx
y = 1.0-((n-1)/2+1)*dy
z = 1.0-((n-1)/2+1)*dz
n.times do
  p x += dx
  p y += dy
  p z += dz
  model.set_cell_size(x,y,z)
  model.show_lt
  p model.total_energy
end
