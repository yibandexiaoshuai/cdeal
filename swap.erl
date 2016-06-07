-module(swap).
-import(market_c, [current_price/0]).
-export([daemon/0]).

daemon()->
    Decision = make_decision(),
    do_deal(Decision),
    nil.
    %timer:sleep(1000),
    %daemon().

make_decision()->
    {C_ccount_status, H_ccount_status} = get_account_status(),}
    get_prices(),
    log("make decision"),
    nil.

do_deal(Decision)->
    log("do deal"),
    nil.

lget_account_status()->
    log("check status"),
    C_ccount_status = market_c::get_account_status(),
    H_ccount_status = market_h::get_account_status(),
    {C_ccount_status, H_ccount_status}.

get_prices()->
    log("get prices"),
    Price_c = market_c:current_price(),
    Price_h = market_h:current_price(),
    {Price_c, Price_h}.

og(Msg)->
    io:format('~p~n', [Msg]).
