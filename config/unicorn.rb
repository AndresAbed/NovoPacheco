working_directory "/home/deploy/NovoPacheco"


# Set unicorn options
worker_processes 2
preload_app true
timeout 30

# Set up socket location
listen "/home/deploy/NovoPacheco/tmp/sockets/unicorn.sock", :backlog => 64
listen 3000

# Logging
stderr_path "/home/deploy/NovoPacheco/log/unicorn.stderr.log"
stdout_path "/home/deploy/NovoPacheco/log/unicorn.stdout.log"

# Set master PID location
pid "/home/deploy/NovoPacheco/tmp/pids/unicorn.pid"