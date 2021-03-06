# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Subject.destroy_all
Branch.destroy_all
Role.destroy_all
Upload.destroy_all
UserPreference.destroy_all
Impression.destroy_all
#UsersRole.destroy_all

Branch.create(name: "First Year")
Branch.create(name: "Computer Science & Engineering")
Branch.create(name: "Information Technology")
Branch.create(name: "Civil Engineering")
Branch.create(name: "Mechanical Engineering")
Branch.create(name: "Electrical Engineering")
Branch.create(name: "Electronics & Telecommunication Engineering")
Branch.create(name: "Electronics & Electrical Engineering")
Branch.create(name: "Electronics & Instrumentation Engineering")


# Admin user
User.create!(email: "admin@letshareit.in", password: "letshareit000$$admin", name: "admin", branch_id: 1)
user = User.first
user.add_role :admin
ability = Ability.new(user)


# First Year
Subject.create(name: "Mathematics-1",              code: "MA-1001", branch_id: 1)
Subject.create(name: "Physics-1",                  code: "PH-1001", branch_id: 1)
Subject.create(name: "Chemistry-1",                code: "CH-1001", branch_id: 1)
Subject.create(name: "Engineering Mechanics",      code: "ME-1001", branch_id: 1)
Subject.create(name: "Electrical Science",         code: "EE-1001", branch_id: 1)
Subject.create(name: "Mathematics-2",              code: "MA-1002", branch_id: 1)
Subject.create(name: "Physics-2",                  code: "PH-1002", branch_id: 1)
Subject.create(name: "Programming In C",           code: "CS-1001", branch_id: 1)
Subject.create(name: "Basic Electronics",          code: "EC-1001", branch_id: 1)
Subject.create(name: "Professional Communication", code: "HS-1001", branch_id: 1)

# Computer Science & Engineering
Subject.create(name: "Discrete Mathematics", 				   code: "MA-2003", branch_id: 2)
Subject.create(name: "Data Structures and Algorithms", 		   code: "CS-2001", branch_id: 2)
Subject.create(name: "Object Oriented Programming", 	       code: "IT-2001", branch_id: 2)
Subject.create(name: "Mathematics-3",						   code: "MA-2001", branch_id: 2)
Subject.create(name: "Digital Electronic Circuits", 		   code: "EC-2009", branch_id: 2)
Subject.create(name: "Environmental Science", 				   code: "CH-2001", branch_id: 2)
Subject.create(name: "Database Management Systems", 		   code: "CS-2004", branch_id: 2)
Subject.create(name: "Operating Systems", 					   code: "CS-2002", branch_id: 2)
Subject.create(name: "Programming Tools and Techniques",       code: "IT-2002", branch_id: 2)
Subject.create(name: "Principle of Digital Communication", 	   code: "EC-2004", branch_id: 2)
Subject.create(name: "Mathematics-4", 						   code: "MA-2002", branch_id: 2)
Subject.create(name: "Design and Analysis of Algorithms", 	   code: "CS-3001", branch_id: 2)
Subject.create(name: "Software Engineering", 			       code: "IT-3003", branch_id: 2)
Subject.create(name: "Computer Networks", 				       code: "IT-3001", branch_id: 2)
Subject.create(name: "Formal Languages and Automata Theory",   code: "CS-3003", branch_id: 2)
Subject.create(name: "Computer Organization and Architecture", code: "CS-3005", branch_id: 2)
Subject.create(name: "Compiler Design", 					   code: "CS-3002", branch_id: 2)
Subject.create(name: "Object Oriented System Design", 	       code: "IT-3004", branch_id: 2)
Subject.create(name: "High Performance Computer Architecture", code: "CS-3006", branch_id: 2)
Subject.create(name: "Computer Graphics", 					   code: "CS-3004", branch_id: 2)
Subject.create(name: "Artificial Intelligence", 			   code: "CS-4001", branch_id: 2)
Subject.create(name: "Data Analytics", 					       code: "IT-3002", branch_id: 2)

# Information Technology
Subject.create(name: "Discrete Mathematics", 				   code: "MA-2003", branch_id: 3)
Subject.create(name: "Data Structures and Algorithms", 		   code: "CS-2001", branch_id: 3)
Subject.create(name: "Object Oriented Programming", 	       code: "IT-2001", branch_id: 3)
Subject.create(name: "Mathematics-3",						   code: "MA-2001", branch_id: 3)
Subject.create(name: "Digital Electronic Circuits", 		   code: "EC-2009", branch_id: 3)
Subject.create(name: "Environmental Science", 				   code: "CH-2001", branch_id: 3)
Subject.create(name: "Database Management Systems", 		   code: "CS-2004", branch_id: 3)
Subject.create(name: "Operating Systems", 					   code: "CS-2002", branch_id: 3)
Subject.create(name: "Programming Tools and Techniques",       code: "IT-2002", branch_id: 3)
Subject.create(name: "Principle of Digital Communication", 	   code: "EC-2004", branch_id: 3)
Subject.create(name: "Mathematics-4", 						   code: "MA-2002", branch_id: 3)
Subject.create(name: "Design and Analysis of Algorithms", 	   code: "CS-3001", branch_id: 3)
Subject.create(name: "Software Engineering", 			       code: "IT-3003", branch_id: 3)
Subject.create(name: "Computer Networks", 				       code: "IT-3001", branch_id: 3)
Subject.create(name: "Formal Languages and Automata Theory",   code: "CS-3003", branch_id: 3)
Subject.create(name: "Computer Organization and Architecture", code: "CS-3005", branch_id: 3)
Subject.create(name: "Compiler Design", 					   code: "CS-3002", branch_id: 3)
Subject.create(name: "Object Oriented System Design", 	       code: "IT-3004", branch_id: 3)
Subject.create(name: "Data Analytics", 					       code: "IT-3002", branch_id: 3)
Subject.create(name: "Mobile computing", 				       code: "IT-3006", branch_id: 3)
Subject.create(name: "Data Mining", 					       code: "IT-4003", branch_id: 3)
Subject.create(name: "Enterprise Resource Planning", 	       code: "IT-4001", branch_id: 3)



# Civil Engineering
Subject.create(name: "Mathematics-3", 			                        code: "MA-2001", branch_id: 4)
Subject.create(name: "Fluid Mechanics-1", 			                    code: "CE-2001", branch_id: 4)
Subject.create(name: "Solid Mechanics-1", 			                    code: "CE-2003", branch_id: 4)
Subject.create(name: "Surveying", 			                            code: "CE-2005", branch_id: 4)
Subject.create(name: "CIVIL ENGINEERINGEngg. Materials & Construction", code: "CE-2007", branch_id: 4)
Subject.create(name: "Environmental Engineering-1",                     code: "CE-2009", branch_id: 4)
Subject.create(name: "Numerical Methods", 			                    code: "MA-2004", branch_id: 4)
Subject.create(name: "Fluid Mechanics-2", 			                    code: "CE-2002", branch_id: 4)
Subject.create(name: "Structural Analysis-1", 			                code: "CE-2004", branch_id: 4)
Subject.create(name: "Transportation Engineering-1",                    code: "CE-2006", branch_id: 4)
Subject.create(name: "Advanced Surveying", 			                    code: "CE-2008", branch_id: 4)
Subject.create(name: "Design Of Concrete Structure-1",                  code: "CE-2012", branch_id: 4)
Subject.create(name: "Structural Analysis-2", 			                code: "CE-3001", branch_id: 4)
Subject.create(name: "Water Resources Engineering-1",                   code: "CE-3003", branch_id: 4)
Subject.create(name: "Geotechnical Engineering-1", 			            code: "CE-3004", branch_id: 4)
Subject.create(name: "Design Of Steel Structure",                       code: "CE-3007", branch_id: 4)
Subject.create(name: "Engineering Economics",                           code: "HS-2002", branch_id: 4)
Subject.create(name: "Water Resources Engineering-2",                   code: "CE-3002", branch_id: 4)
Subject.create(name: "Geotechnical Engineering-2",                      code: "CE-3005", branch_id: 4)
Subject.create(name: "Design Of Concrete Structure-2",                  code: "CE-3006", branch_id: 4)
Subject.create(name: "Environmental Engineering-2",                     code: "CE-3008", branch_id: 4)
Subject.create(name: "Construction Planning & Management",              code: "CE-3012", branch_id: 4)
Subject.create(name: "Transportation Engineering-2",                    code: "CE-4001", branch_id: 4)

# Mechanical Engineering
Subject.create(name: "Engineering Thermodynamics",                                code: "ME-2001", branch_id: 5)
Subject.create(name: "Fluid Mechanics",                                           code: "ME-2003", branch_id: 5)
Subject.create(name: "Mechanics of Solids",                                       code: "ME-2005", branch_id: 5)
Subject.create(name: "Material Science And Engineering",                          code: "ME-2007", branch_id: 5)
Subject.create(name: "Kinematics & Kinetics Of Mechanics",                        code: "ME-2009", branch_id: 5)
Subject.create(name: "Mathematics-3",                                             code: "MA-2001", branch_id: 5)
Subject.create(name: "Machine Dynamics",                                          code: "ME-2002", branch_id: 5)
Subject.create(name: "Heat Transfer",                                             code: "ME-2004", branch_id: 5)
Subject.create(name: "Basic Manufacturing Process",                               code: "ME-2006", branch_id: 5)
Subject.create(name: "Introduction To Electrical Machines And Power Electronics", code: "EE-2006", branch_id: 5)
Subject.create(name: "Numerical Methods",                                         code: "MA-2004", branch_id: 5)
Subject.create(name: "Environmental Science",                                     code: "CH-2001", branch_id: 5)
Subject.create(name: "Fluid Dynamics & Hydraulic Machines",                       code: "ME-3001", branch_id: 5)
Subject.create(name: "Internal Combustion Engines & Gas Turbines",                code: "ME-3003", branch_id: 5)
Subject.create(name: "MECHANICAL Measurements And Control ",                      code: "ME-3005", branch_id: 5)
Subject.create(name: "Manufacturing Process & Design",                            code: "ME-3007", branch_id: 5)
Subject.create(name: "Fundamentals Of Machine Design",                            code: "ME-3009", branch_id: 5)
Subject.create(name: "Refrigetion And Air Conditioning",                          code: "ME-3002", branch_id: 5)
Subject.create(name: "Metal Cutting And Cutting Tool Design",                     code: "ME-3004", branch_id: 5)
Subject.create(name: "Metrology, Quality Control And Reliability",                code: "ME-3006", branch_id: 5)
Subject.create(name: "Industrial Engineering And Management",                     code: "ME-3008", branch_id: 5)
Subject.create(name: "Design Of Machine Elements",                                code: "ME-3012", branch_id: 5)
Subject.create(name: "Advanced Manufacturing Process",                            code: "ME-4001", branch_id: 5)
Subject.create(name: "Power Plant Engineering",                                   code: "ME-4003", branch_id: 5)
Subject.create(name: "Industrial Automation",                                     code: "ME-4002", branch_id: 5)


# Electrical Engineering
Subject.create(name: "Mathematics-3",                                code: "MA-2001", branch_id: 6)
Subject.create(name: "Electrical Machines-1",                        code: "EE-2001", branch_id: 6)
Subject.create(name: "Network Analysis",                             code: "EE-2003", branch_id: 6)
Subject.create(name: "Analog Electronics",                           code: "EE-2007", branch_id: 6)
Subject.create(name: "Data Structure And Java Programming",          code: "CS-2003", branch_id: 6)
Subject.create(name: "Environmental Science",                        code: "CH-2001", branch_id: 6)
Subject.create(name: "Mathematics-4",                                code: "MA-2002", branch_id: 6)
Subject.create(name: "ELECTRICAL Machines-2",                        code: "EE-2002", branch_id: 6)
Subject.create(name: "Digital Electronics Circuits",                 code: "EC-2009", branch_id: 6)
Subject.create(name: "ELECTRICAL Measurements And Instrumentation",  code: "EE-2004", branch_id: 6)
Subject.create(name: "Thermal Engineering Applications",             code: "ME-2016", branch_id: 6)
Subject.create(name: "Electric Power Transmission And Distribution", code: "EE-3001", branch_id: 6)
Subject.create(name: "Linear Control Theory",                        code: "EE-3003", branch_id: 6)
Subject.create(name: "Power Electronics",                            code: "EE-3005", branch_id: 6)
Subject.create(name: "Microprocessors And Microcontrollers",         code: "EC-3003", branch_id: 6)
Subject.create(name: "Power Systems Operation And Control",          code: "EE-3002", branch_id: 6)
Subject.create(name: "Electromagnetic Field",                        code: "EE-3004", branch_id: 6)
Subject.create(name: "Communication Engineering",                    code: "EC-3009", branch_id: 6)
Subject.create(name: "Introduction To Digital Signal Processing",    code: "EC-3008", branch_id: 6)
Subject.create(name: "Electric Drives",                              code: "EE-4001", branch_id: 6)
Subject.create(name: "Switch Gear And Protection",                   code: "EE-4003", branch_id: 6)
Subject.create(name: "Renewable Energy Systems",                     code: "EE-4005", branch_id: 6)
Subject.create(name: "Industrial Automation And Control",            code: "EL-4001", branch_id: 6)


# Electronics & Telecommunication Engineering
Subject.create(name: "Mathematics-3",                               code: "MA-2001", branch_id: 7)
Subject.create(name: "Analog Electronic Circuits-1",                code: "EC-2001", branch_id: 7)
Subject.create(name: "Signals & Systems",                           code: "EC-2003", branch_id: 7)
Subject.create(name: "Network Analysis",                            code: "EE-2003", branch_id: 7)
Subject.create(name: "Semiconductor Devices",                       code: "EC-2005", branch_id: 7)
Subject.create(name: "Data Structure And Java Programming",         code: "CS-2003", branch_id: 7)
Subject.create(name: "Mathematics-4",                               code: "MA-2002", branch_id: 7)
Subject.create(name: "Analog Electronic Circuits-2",                code: "EC-2002", branch_id: 7)
Subject.create(name: "Analog Communication Techniques",             code: "EC-2006", branch_id: 7)
Subject.create(name: "Measurements & Instrumentation",              code: "EC-2008", branch_id: 7)
Subject.create(name: "Digital Electronic Circuits",                 code: "EC-2009", branch_id: 7)
Subject.create(name: "Environmental Science",                       code: "CH-2001", branch_id: 7)
Subject.create(name: "Electromagnetic Theory",                      code: "EC-3001", branch_id: 7)
Subject.create(name: "Microprocessors And Microcontrollers",        code: "EC-3003", branch_id: 7)
Subject.create(name: "Control Systems",                             code: "EL-3001", branch_id: 7)
Subject.create(name: "Digital Communication Techniques",            code: "EC-3005", branch_id: 7)
Subject.create(name: "Antenna And Wave Propagation",                code: "EC-3002", branch_id: 7)
Subject.create(name: "VLSI Design",                                 code: "EC-3004", branch_id: 7)
Subject.create(name: "Digital Signal Processing",                   code: "EC-3007", branch_id: 7)
Subject.create(name: "Data Communication & Networking",             code: "EC-3006", branch_id: 7)
Subject.create(name: "RF & Microwave Engineering",                  code: "EC-4001", branch_id: 7)
Subject.create(name: "Wireless & Mobile Communication Engineering", code: "EC-4003", branch_id: 7)
Subject.create(name: "Computer Organization And Operating Systems", code: "CS-4003", branch_id: 7)


# Electronics & Electrical Engineering
Subject.create(name: "Mathematics-3",                              code: "MA-2001", branch_id: 8)
Subject.create(name: "Analog Electronic",                          code: "EC-2007", branch_id: 8)
Subject.create(name: "Network Analysis",                           code: "EE-2003", branch_id: 8)
Subject.create(name: "Signals And Systems",                        code: "EC-2003", branch_id: 8)
Subject.create(name: "Electrical Machines-1",                      code: "EE-2001", branch_id: 8)
Subject.create(name: "Data Structure And Java Programming",        code: "CS-2003", branch_id: 8)
Subject.create(name: "Mathematics-4",                              code: "MA-2002", branch_id: 8)
Subject.create(name: "Electrical Machines-2",                      code: "EE-2002", branch_id: 8)
Subject.create(name: "Measurements & Instrumentation",             code: "EC-2008", branch_id: 8)
Subject.create(name: "Digital Electronic Circuits",                code: "EC-2009", branch_id: 8)
Subject.create(name: "Environmental Science",                      code: "CH-2001", branch_id: 8)
Subject.create(name: "Electromagnetic Theory",                     code: "EC-3001", branch_id: 8)
Subject.create(name: "Electric Power Transmission & Distribution", code: "EE-3001", branch_id: 8)
Subject.create(name: "Microprocessors And Microcontrollers",       code: "EC-3003", branch_id: 8)
Subject.create(name: "Control Systems",                            code: "EL-3001", branch_id: 8)
Subject.create(name: "Digital Signal Processing",                  code: "EC-3007", branch_id: 8)
Subject.create(name: "Communication Engineering",                  code: "EC-3009", branch_id: 8)
Subject.create(name: "Power Electronics",                          code: "EE-3005", branch_id: 8)
Subject.create(name: "Power System Operation And Control",         code: "EE-3002", branch_id: 8)
Subject.create(name: "Electric Drives",                            code: "EE-4001", branch_id: 8)
Subject.create(name: "Switch Gear And Protection",                 code: "EE-4003", branch_id: 8)
Subject.create(name: "Industrial Automation And Control",          code: "EL-4001", branch_id: 8)
Subject.create(name: "Data Communication And Networking",          code: "EC-3006", branch_id: 8)



# Electronics & Instrumentation Engineering
Subject.create(name: "Mathematics-3",                        code: "MA-2001", branch_id: 9)
Subject.create(name: "Signals And Systems",                  code: "EC-2003", branch_id: 9)
Subject.create(name: "Analog Electronics",                   code: "EC-2007", branch_id: 9)
Subject.create(name: "Network Analysis",                     code: "EE-2003", branch_id: 9)
Subject.create(name: "Semiconductor Devices",                code: "EC-2005", branch_id: 9)
Subject.create(name: "Data Structure And Java Programming",  code: "CS-2003", branch_id: 9)
Subject.create(name: "Mathematics-4",                        code: "MA-2002", branch_id: 9)
Subject.create(name: "Material Science",                     code: "EI-2002", branch_id: 9)
Subject.create(name: "Digital Electronics Circuits",         code: "EC-2009", branch_id: 9)
Subject.create(name: "Electrical And Electric Measurements", code: "EI-2004", branch_id: 9)
Subject.create(name: "Electrical Machines",                  code: "EE-2008", branch_id: 9)
Subject.create(name: "Environmental Science",                code: "CH-2001", branch_id: 9)
Subject.create(name: "Microprocessors And Microcontrollers", code: "EC-3003", branch_id: 9)
Subject.create(name: "Instrumentation-1",                    code: "EI-3001", branch_id: 9)
Subject.create(name: "Communication Engineering",            code: "EC-3009", branch_id: 9)
Subject.create(name: "Control Systems",                      code: "EL-3001", branch_id: 9)
Subject.create(name: "Thermodynamics And Fluid Mechanics",   code: "ME-3013", branch_id: 9)
Subject.create(name: "Digital Signal Processing",            code: "EC-3007", branch_id: 9)
Subject.create(name: "Process Control-1",                    code: "EI-3004", branch_id: 9)
Subject.create(name: "Instrumentation-2",                    code: "EI-3002", branch_id: 9)
Subject.create(name: "Power Electronics",                    code: "EE-3005", branch_id: 9)
Subject.create(name: "VLSI Design",                          code: "EC-3004", branch_id: 9)
Subject.create(name: "Analytical Instrumentation",           code: "EI-4001", branch_id: 9)
Subject.create(name: "Process Control-2",                    code: "EI-4003", branch_id: 9)





puts "Seeding Complete"
