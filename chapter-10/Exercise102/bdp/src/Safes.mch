MACHINE Safes
INCLUDES Locks , Keys
PROMOTES opendoor , closedoor , lockdoor
ABSTRACT_VARIABLES masterkey
CONCRETE_CONSTANTS unlocks
PROPERTIES unlocks : KEY >->> DOOR
INVARIANT status ~ [ { unlocked } ] <: unlocks [ keys ] & masterkey <: DOOR & card ( masterkey ) <= 1 & status ~ [ { unlocked } ] <: masterkey
INITIALISATION masterkey := {}
OPERATIONS
insert ( kk , dd ) =
        PRE kk : KEY & dd : DOOR & unlocks ( kk ) = dd
        THEN insertkey ( kk )
        END ;
extract ( kk , dd ) =
        PRE kk : KEY & dd : DOOR & unlocks ( kk ) = dd & status ( dd ) = locked
        THEN removekey ( kk )
        END ;
unlock ( dd ) =
        PRE dd : DOOR & unlocks ~ ( dd ) : keys & dd : masterkey
        THEN unlockdoor ( dd )
        END ;
quicklock ( dd ) =
        PRE dd : DOOR & position ( dd ) = closed
        THEN lockdoor ( dd ) || removekey ( unlocks ~ ( dd ) )
        END ;
insertmaster ( dd ) =
        PRE dd : DOOR & masterkey = {}
        THEN masterkey := { dd }
        END ;
removemaster =
        PRE status [ masterkey ] = { locked }
        THEN masterkey := {}
        END
END
