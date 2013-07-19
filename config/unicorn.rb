# Config file for unicorn server.
# #
# # This file is based on the railscasts screencast #293
# # (nginx and unicorn).
# #

working_directory "/home/nmaef/app/isw"
pid "/home/nmaef/app/isw/tmp/pids/unicorn.pid"
stderr_path "/home/nmaef/app/isw/log/unicorn.log"
stdout_path "/home/nmaef/app/isw/log/unicorn.log"

listen "/home/nmaef/app/isw/tmp/sockets/unicorn.sock"
worker_processes 2
timeout 15
