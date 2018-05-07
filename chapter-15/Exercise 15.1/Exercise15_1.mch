MACHINE Exercise15_1
OPERATIONS
ee <-- exponentiation_base_2(bb) =
	PRE bb : NAT
	THEN ee := 2 ** bb
	END;
ee <-- exponentiation_base_n(aa,bb) =
	PRE aa : NAT && bb : NAT 
	THEN ee := aa ** bb
	END
END
