-module(swap).
-export([daemon/0]).

daemon()->
    check_status(),
    get_prices(),
    make_decision(),
    do_deal(),
    nil.
    %timer:sleep(1000),
    %daemon().

check_status()->
    log("check status"),
    nil.

get_prices()->
    log("get prices"),
    nil.

make_decision()->
    log("make decision"),
    nil.

do_deal()->
    log("do deal"),
    nil.

log(Msg)->
    io:format('~p~n', [Msg]).
