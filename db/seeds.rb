# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
User.destroy_all
Teacher.destroy_all

u = User.new(
    email: "admin@example.com",
    password: "1234",
    password_confirmation: "1234",
    admin: true
)
u.skip_confirmation!
u.save!

teachers = [
  {
    name: "Christian Gonzenbach",
    grade: 4,
    active: true
  },
  {
    name: "Yannis Jaquet",
    grade: 5,
    active: true
  },
  {
    name: "Sébastien Favez",
    grade: 4,
    active: true
  },
  {
    name: "Vincent Menuz",
    grade: 3,
    active: true
  }
]

teachers.each do |teacher|
  Teacher.create! teacher
end
