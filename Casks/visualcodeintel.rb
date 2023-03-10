cask 'visualcodeintel' do
  version '1'
  sha256 :no_check

  url "https://code.visualstudio.com/sha/download?build=stable&os=darwin"
  name 'visualcodeintel'
  homepage 'https://code.visualstudio.com/docs/?dv=darwinx64'

  auto_updates true
  
  app "Visual Studio Code.app", target: "Visual Studio Code Intel.app"
  
end