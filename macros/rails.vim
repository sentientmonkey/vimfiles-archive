:Rnavcommand observer app/observers -glob=**/* -suffix=_observer.rb
:Rnavcommand presenter app/presenters -glob=**/*
:Rnavcommand proxy app/models -glob=**/* -suffix=_proxy.rb
:Rnavcommand validation app/validations -glob=**/* -suffix=_validation.rb
:Rnavcommand sweeper app/sweepers -glob=**/* -suffix=_sweeper.rb
:Rnavcommand sproc db/sprocs -glob=**/* -suffix=.sql
:Rnavcommand mailer app/models -glob=**/* -suffix=_mailer.rb
:Rnavcommand config config -glob=* -suffix=.yml
:Rnavcommand routes config -glob=* -suffix=.rb -default=routes
:Rnavcommand environment config/environments -glob=**/* -default=../environment
:Rnavcommand initializer config/initializers -glob=*
:Rnavcommand spec spec -glob=**/* -suffix=_spec.rb
:Rnavcommand fixtures spec/fixtures -glob=* -suffix=.yml
:Rnavcommand sass app/stylesheets -glob=**/* -suffix=.scss
