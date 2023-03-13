cask 'mg3000' do
  version '243000'
  sha256 :no_check

  url "file://#{Dir.home}/Documents/laptop-config/installers/PrinterDriver_MG3000_series_#{version}.pkg"
  name 'mg3000'
  homepage 'https://canon.com'

  auto_updates true

  pkg "PrinterDriver_MG3000_series_#{version}.pkg"
end