my_packages = yaml(content: inspec.profile.file('requirements.yml')).params

my_packages.each do |s|
describe pip(s['package_name']) do
    it { should be_installed }
    its('version') {should eq s['version']}
  end
end
