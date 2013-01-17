namespace :nodejs do
  desc "Install the latest relase of Node.js"
  task :install, :roles => :app do
     if ['12.10','12.04'].include?(lsb_release)
        run "#{sudo} add-apt-repository -y ppa:chris-lea/node.js"
     else
        run "#{sudo} add-apt-repository  ppa:chris-lea/node.js"
     end
    run "#{sudo} apt-get -y update"
    run "#{sudo} apt-get -y install nodejs"
  end
  after "deploy:install", "nodejs:install"
end
