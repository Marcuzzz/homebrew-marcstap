cask "resolvestudio" do
  version "18.1.4"
  major_version = version.split(".").first
  sha256 :no_check

  #url "file://#{Dir.home}/pCloud%20Drive/00%20Marc/40%20Apps/mac/DaVinci_Resolve_Studio_#{version}_Mac.zip"
  url "https://www.blackmagicdesign.com/ca/support/download/69a3995a376441d0ae23711c44370662/Mac%20OS%20X"
  name "resolvestudio"
  homepage "https://www.blackmagicdesign.com/products/davinciresolve"
  
  #app "Visual Studio Code.app", target: "Visual Studio Code Intel.app"
  pkg "Install Resolve #{version}.pkg"
  
  postflight do
  	# create symlink using ln -s
  	system_command "/usr/bin/sudo", args: ['/bin/rm','-rf',"/Applications/DaVinci Resolve #{major_version} Studio"]
  	system_command "/bin/mv", args: ["/Applications/DaVinci Resolve", "/Applications/DaVinci Resolve #{major_version} Studio"]
  end
  
end