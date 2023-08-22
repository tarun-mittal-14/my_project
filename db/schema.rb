# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_814_061_244) do
  create_table 'job_applications', force: :cascade do |t|
    t.integer 'user_id', null: false
    t.integer 'job_id', null: false
    t.string 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['job_id'], name: 'index_job_applications_on_job_id'
    t.index ['user_id'], name: 'index_job_applications_on_user_id'
  end

  create_table 'jobs', force: :cascade do |t|
    t.string 'title'
    t.text 'description'
    t.string 'requirement'
    t.string 'location'
    t.integer 'user_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_jobs_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'password'
    t.string 'age'
    t.string 'experience'
    t.string 'qualification'
    t.string 'type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'job_applications', 'jobs'
  add_foreign_key 'job_applications', 'users'
  add_foreign_key 'jobs', 'users'
end
