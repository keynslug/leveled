%% Macros designed to be used primarilty in guards.
%% Must be kept in line with leveled_codec.erl

%% Tag of a key of LedgerKV.
-define(ledger_key_tag(K),
    (element(1, K))
).

%% Is this LedgerKV key an index?
-define(ledger_key_is_idx(K),
    (?ledger_key_tag(K) == ?IDX_TAG)
).

%% Status of a value of LedgerKV.
-define(ledger_val_status(V),
    (element(2, V))
).

%% Is this LedgerKV value a tomb?
-define(ledger_val_is_tomb(V),
    (?ledger_val_status(V) == tomb)
).

%% Is this LedgerKV value active?
-define(ledger_val_is_active(V),
    (element(1, ?ledger_val_status(V)) == active)
).
