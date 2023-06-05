cask 'freefilesync' do
  version '12.3'
  sha256 :no_check

  url "https://github.com/hkneptune/FreeFileSync/releases/download/v12.3/FreeFileSync_#{version}_macOS.zip"
  name 'freefilesync'
  homepage 'https://github.com/hkneptune/FreeFileSync/releases'

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

end
