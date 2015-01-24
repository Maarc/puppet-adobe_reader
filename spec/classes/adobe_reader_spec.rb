require 'spec_helper'

describe 'adobe_reader' do

  version = '11.0.10'
  sourceversion = '11010'
  it { should contain_class('adobe_reader') }
  it { should contain_package("AdobeReader-#{version}.pkg").with_provider('pkgdmg') }
  it { should contain_package("AdobeReader-#{version}.pkg").with_source("http://ardownload.adobe.com/pub/adobe/reader/mac/11.x/#{version}/en_US/AdbeRdr${sourceversion}_en_US.dmg") }

end
