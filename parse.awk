BEGIN{
	morning=0;
	afternoon=0;
	evening=0;
}

{
	if( $1 <= 12 ){
		morning++;
	}else if( $1 > 12 && $1 <= 17 ){
		afternoon++;
	}else{
		evening++;
	}
}

END{
	print "Morning: " morning;
	print "Afternoon: " afternoon;
	print "Evening: " evening;
}
