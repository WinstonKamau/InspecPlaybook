control 'cis-docker-1.13-4.1' do
  # impact 0.5
  title 'Create a user for the container'
  desc 'Create a non-root user for the container in the Dockerfile for the container image.'
  docker.containers.names('target').ids.each do |id|
    describe docker.object(id) do
      its(%w(Config User)) { should_not cmp "" }
    end
  end
end
