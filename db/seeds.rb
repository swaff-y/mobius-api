# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.destroy_all

patients_array = []
50.times do
  doctor = Faker::Name.prefix + " " + Faker::Name.first_name + " " + Faker::Name.last_name

  num = rand(1..10)
  if num % 2 == 0
    program_stat = "Active"
  else
    program_stat = "Complete"
  end
  if num % 2 == 0
    response_stat = "No Response"
  else
    response_stat = "Follow up required"
  end

  numArray = []
  10.times do |i|
    numArray.push(rand(0..9))
  end


  mobile = numArray.join('')


  create = Patient.create!(
    consent: Faker::Boolean.boolean,
    first_name: Faker::Name.first_name,
    referring_clinician: doctor,
    last_name: Faker::Name.last_name,
    mobile_number: mobile,
    procedure_start_date: Faker::Date.backward(days: rand(1..30)),
    program_status: program_stat,
    response_status: response_stat,
    return_patient: Faker::Boolean.boolean,
    status: "Active"
  )

  patients_array.push create
end
