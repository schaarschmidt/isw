# Config file for unicorn server.
# #
# # This file is based on the railscasts screencast #293
# # (nginx and unicorn).
# #

working_directory "/home/nmaef/app/internationales-saaleschwimmen"
pid "/home/nmaef/app/internationales-saaleschwimmen/tmp/pids/unicorn.pid"
stderr_path "/home/nmaef/app/internationales-saaleschwimmen/log/unicorn.log"
stdout_path "/home/nmaef/app/internationales-saaleschwimmen/log/unicorn.log"

listen "/home/nmaef/app/internationales-saaleschwimmen/tmp/sockets/unicorn.sock"
worker_processes 2
timeout 15
