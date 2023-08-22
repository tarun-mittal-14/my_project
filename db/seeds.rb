# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'tarun mittal', email: 'tarun@gmail.com', password: 'tarun123', age: '25', experience: '5 years',
            qualification: 'MCA', type: 'Recruiter')
User.create(name: 'shiva agrawal', email: 'shiva@gmail.com', password: "shiva
123", age: '35', experience: '10 years', qualification: 'MCA', type: 'Recruiter')
User.create(name: 'karan verma', email: 'karan@gmail.com', password: "karan
123", age: '21', experience: 'fresher', qualification: 'BCA', type: 'Seeker')
User.create(name: 'rohit sharma', email: 'rohit@gmail.com', password: "rohit
123", age: '22', experience: 'fresher', qualification: 'BCA', type: 'Seeker')
User.create(name: 'hemant sahu', email: 'hemant@gmail.com', password: "hemant
123", age: '21', experience: 'fresher', qualification: 'BCA', type: 'Seeker')

Job.create(title: 'Developer', description: 'Software developer',
           requirement: 'knowledge of full stack ', location: 'indore', user_id: '16')

Job.create(title: 'Product Manager', description: 'Lead the development of innovative products ',
           requirement: 'Strong communication and project management skills ', location: 'indore', user_id: '16')

Job.create(title: 'Data Scientist', description: 'Extract insights from complex datasets',
           requirement: 'Experience with machine learning and data visualization. ', location: 'indore', user_id: '17')

Job.create(title: 'DevOps Engineer', description: 'Build and maintain deployment pipelines',
           requirement: 'Expertise in containerization and CI/CD tools ', location: 'indore', user_id: '17')
