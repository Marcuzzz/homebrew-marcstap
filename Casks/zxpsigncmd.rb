cask 'zxpsigncmd' do
  version '1'
  sha256 :no_check

  url "file://#{Dir.home}/Documents/laptop-config/installers/ZXPSignCmd.zip"
  name 'zxpsigncmd'
  homepage 'https://canon.com'

  auto_updates true
  
#   postflight do
#   	artifact 'ZXPSignCmd-64bit', target: '/tmp/ZXPSignCmd-64bit'
#   end
  
#  binary 'ZXPSignCmd-64bit', target: '/usr/local/bin/ZXPSignCmd'
  
  postflight do
  	# create symlink using ln -s
  	system_command '/bin/ln', args: ['-s', '/opt/homebrew/Caskroom/zxpsigncmd/1/ZXPSignCmd/ZXPSignCmd-64bit', '/usr/local/bin/ZXPSignCmd'] unless !Dir.exist?("/opt/homebrew/Caskroom/zxpsigncmd/1/ZXPSignCmd/ZXPSignCmd-64bit")
    system_command '/bin/ln', args: ['-s', '/usr/local/Caskroom/zxpsigncmd/1/ZXPSignCmd/ZXPSignCmd-64bit', '/usr/local/bin/ZXPSignCmd'] unless !Dir.exist?("/usr/local/Caskroom/zxpsigncmd/1/ZXPSignCmd/ZXPSignCmd-64bit")
  end

end
