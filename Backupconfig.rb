#!/bin/ruby

require 'yaml'

confpath = [File.expand_path(File.dirname(__FILE__)), "#{ENV['HOME']}/.Pixelated-Backup"]

confpath.each do |path|
  if File.exists?(path) && File.directory?(path) && File.exists?("#{path}/Backupconfig.yml")
    CONFIG = YAML.load_file("#{path}/Backupconfig.yml")
    break
  end
end

MYSQLDUMP=CONFIG["mysqldump"]
TAR=CONFIG["tar"]
MKDIR=CONFIG["mkdir"]
DATABASES=CONFIG["databases"]
MYSQL_USER=CONFIG["mysql_user"]
MYSQL_PWD=CONFIG["mysql_pwd"]
GPG=CONFIG["gpg"]
GPG_RECIPIENT=CONFIG["gpg_recipient"]
RM=CONFIG["rm"]
FIND=CONFIG["find"]
CP=CONFIG["cp"]
WEEKLIES_DIR = 'weeklies'
MONTHLIES_DIR = 'monthlies'