cask 'filezillapro' do
  version '3.63.2.1'
  sha256 :no_check

  url "file://#{Dir.home}/Documents/laptop-config/installers/FileZilla_Pro_#{version}_macosx-x86.app.tar.bz2"
  name 'FileZilla Pro'
  homepage 'https://filezilla-project.org/prodownload.php'

  auto_updates true

  app "FileZilla.app"
end