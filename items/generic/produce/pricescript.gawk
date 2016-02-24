{ print $0 }
/"[cC]ommon"/ { print "  \"price\" : 5," }
/"[uU]ncommon"/ { print "  \"price\" : 10," }
/"[rR]are"/ { print "  \"price\" : 20," }
/"[lL]egendary"/ { print "  \"price\" : 50," }
