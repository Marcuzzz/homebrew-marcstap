cask "resolve" do
  version "18.1.4"
  major_version = version.split(".").first
  sha256 :no_check

  url "file://#{Dir.home}/pCloud%20Drive/00%20Marc/40%20Apps/mac/DaVinci_Resolve_#{version}_Mac.zip"
  name "resolve"
  homepage "https://www.blackmagicdesign.com/products/davinciresolve"
  
  #app "Visual Studio Code.app", target: "Visual Studio Code Intel.app"
  pkg "Install Resolve #{version}.pkg"
  
  postflight do
  	# create symlink using ln -s
  	system_command "/usr/bin/sudo", args: ['/bin/rm',"-rf","/Applications/DaVinci Resolve #{major_version}"]
  	system_command "/bin/mv", args: ["/Applications/DaVinci Resolve", "/Applications/DaVinci Resolve #{major_version}"]
  end
  
end