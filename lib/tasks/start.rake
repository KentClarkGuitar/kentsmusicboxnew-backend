namespace :start do 
    task :development do 
        exec 'heroku local -f Procfile.dev'
    end
end

desc 'Start development server frontend and backend'
task :start => 'start:development'