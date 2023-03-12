cask 'resolvestudio' do
  version '18.1.4'
  sha256 :no_check

  url "file://#{Dir.home}/pCloud%20Drive/00%20Marc/40%20Apps/mac/DaVinci_Resolve_Studio_#{version}_Mac.zip"
  name 'resolvestudio'
  homepage 'https://www.blackmagicdesign.com/products/davinciresolve'
  
  #app "Visual Studio Code.app", target: "Visual Studio Code Intel.app"
  pkg "Install Resolve #{version}.pkg"
  
end