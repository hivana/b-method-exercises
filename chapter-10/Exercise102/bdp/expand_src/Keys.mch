﻿MACHINE Keys
SETS KEY
ABSTRACT_VARIABLES keys
INVARIANT keys <: KEY
INITIALISATION keys := {}
OPERATIONS
insertkey ( kk ) =
        PRE kk : KEY
        THEN keys := keys \/ { kk }
        END ;
removekey ( kk ) =
        PRE kk : KEY
        THEN keys := keys - { kk }
        END
END
