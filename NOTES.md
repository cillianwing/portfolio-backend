# Portfolio Web App - General Notes

## Goals of Portfolio

### Interactive display containing projects, resume, contact info for employers/recruiters to view. Ambitious Goal: Job application tracking capabilities that keeps track of jobs applied to, the listing for that particular job, date applied (for follow up if needed), stage of application, date of interview, etc.

## Setup Notes

### Models (w/ attributes)

1. User (or Admin since only I should be editing anything here?)
  - first_name*, last_name*, email*, password_digest*, phone_number*, street, city*, state*, zip_code, linkedin_url, github_url
2. Project
  - title, description, environment, project_info ([]), github_url, demo_url
3. WorkExperience
  - title, company, start_date, end_date, location, job_description ([])
4. Education
  - school, program, start_date, end_date
5. Skills
  - type (soft/technical), name

### Relationships

1. User
  - has_many :projects
  - has_many :work_experiences
  - has_many :educations
2. Project, WorkExperience, Education
  - belongs_to :user