-module(mydb_client_handler).

-behavior(e2_task).

-export([start_link/1]).

-export([handle_task/1, terminate/2]).

start_link(Socket) ->
    e2_task:start_link(?MODULE, Socket).

handle_task(Socket) ->
    handle_command_line(read_line(Socket), Socket),
    {repeat, Socket}.

read_line(Socket) ->
    inet:setopts(Socket, [{active, false}, {packet, line}]),
    gen_tcp:recv(Socket, 0).

handle_command_line({ok, Data}, Socket) ->
    gen_tcp:send(Socket, ["You said: ", Data]).

terminate(_Reason, Socket) ->
    gen_tcp:close(Socket).
