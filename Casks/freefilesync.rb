cask 'freefilesync' do
  version '12.1'
  sha256 :no_check

  url "https://freefilesync.org/download/FreeFileSync_#{version}_macOS.zip"
  name 'freefilesync'
  homepage 'https://freefilesync.org/download.php'

  auto_updates true

  pkg "FreeFileSync_#{version}.pkg"

end