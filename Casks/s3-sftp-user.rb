cask 's3-sftp-user' do
  version '1'
  sha256 :no_check

  url "https://monk-software.s3.eu-central-1.amazonaws.com/mediamonks/s3-sftp-user.zip"
  name 's3-sftp-user'
  homepage ''

  auto_updates true
  
#   postflight do
#   	artifact 'ZXPSignCmd-64bit', target: '/tmp/ZXPSignCmd-64bit'
#   end
  
#  binary 'ZXPSignCmd-64bit', target: '/usr/local/bin/ZXPSignCmd'
  
  postflight do
  	system_command '/bin/mkdir', args: ["#{Dir.home}/MediaMonks"] unless Dir.exist?("#{Dir.home}/MediaMonks")
  	system_command '/bin/rm', args: ['-rf',"#{Dir.home}/MediaMonks/s3-sftp-user"] unless !Dir.exist?("#{Dir.home}/MediaMonks/s3-sftp-user")
  	system_command '/bin/mv', args: ['/opt/homebrew/Caskroom/s3-sftp-user/1/s3-sftp-user', "#{Dir.home}/MediaMonks/s3-sftp-user"]
  end

end