MACHINE Safes
INCLUDES Locks , Keys
PROMOTES opendoor , closedoor , lockdoor
ABSTRACT_VARIABLES unlocks
INVARIANT unlocks : KEY >+> DOOR & status ~ [ { unlocked } ] <: unlocks [ keys ] & keys <: dom ( unlocks )
INITIALISATION unlocks := {}
OPERATIONS
allocate ( kk , dd ) =
    PRE kk : KEY & kk /: dom ( unlocks ) & dd : DOOR & dd /: ran ( unlocks )
    THEN unlocks ( kk ) := dd
    END ;
deallocate ( kk , dd ) =
    PRE kk : KEY & dd : DOOR & kk |-> dd : unlocks & kk /: keys & status ( dd ) = locked
    THEN unlocks := { kk } <| unlocks
    END ;
insert ( kk , dd ) =
        PRE kk : KEY & dd : DOOR & unlocks ( kk ) = dd
        THEN insertkey ( kk )
        END ;
extract ( kk , dd ) =
        PRE kk : KEY & dd : DOOR & unlocks ( kk ) = dd & status ( dd ) = locked
        THEN removekey ( kk )
        END ;
unlock ( dd ) =
        PRE dd : DOOR & unlocks ~ ( dd ) : keys
        THEN unlockdoor ( dd )
        END ;
quicklock ( dd ) =
        PRE dd : DOOR & position ( dd ) = closed & dd : ran ( unlocks )
        THEN lockdoor ( dd ) || removekey ( unlocks ~ ( dd ) )
        END
END
