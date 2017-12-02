# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
EmpType.create(id: 1, desc: 'Admin Employee', code: 'ADM')
EmpType.create(id: 2, desc: 'Security Guard', code: 'GRD')
EmpStatus.create(id: 1, desc: 'Probationary', code: 'PRB')
EmpStatus.create(id: 2, desc: 'Permanent', code: 'REG')
EmpStatus.create(id: 3, desc: 'Part Time', code: 'PRB')
EmpStatus.create(id: 4, desc: 'Applicant', code: 'APP')
EmpStatus.create(id: 5, desc: 'Float/No Duty', code: 'FLT')
EmpStatus.create(id: 6, desc: 'Retired', code: 'RET')
MarStatus.create(id: 1, desc: 'Single', code: 'SGL')
MarStatus.create(id: 2, desc: 'Married', code: 'MAR')
MarStatus.create(id: 3, desc: 'Widowed', code: 'WID')
MarStatus.create(id: 4, desc: 'Separated', code: 'SEP')
MarStatus.create(id: 5, desc: 'Annulled', code: 'ANL')
MarStatus.create(id: 6, desc: 'Divorced', code: 'DIV')
user=User.create!(:id => 1, :email=>'root@sigasig.com',:password=>'sigasigroot', :admin=>'true', :name=>'Root')
user=User.create!(:id => 2, :email=>'guest@sigasig.com',:password=>'sigasig', :admin=>'false', :name=>'Sigasig Guest')