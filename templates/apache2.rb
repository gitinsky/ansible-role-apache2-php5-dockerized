Eye.application 'apache2' do
  working_dir '/'
  stdall '/var/log/eye/apache2-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :apache2 do
    pid_file '/var/run/apache2/apache2.pid'
    start_command 'apachectl start'

    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
