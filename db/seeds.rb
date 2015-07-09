# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
User.destroy_all
Teacher.destroy_all
Startdate.destroy_all
Post.destroy_all

u = User.new(
    email: "contact@kendo-geneve.ch",
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

Startdate.create start_on: 1.months.since

Post.create(title: "Lorem", content_md: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.

  Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user: User.first)
