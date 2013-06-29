eventStatusFinal = { message ->
	if (message ==~ /.*Cobertura Code Coverage Complete.*/) {
	  def report = new XmlSlurper().parse(new File("target/test-reports/cobertura/coverage.xml"))
	  Float lineRate = Float.parseFloat(report.'@line-rate'.text()) 
	  if (lineRate < 0.90) {
		event("StatusError", ["Code coverage is too low. Expected line rate: 0.90 - Actual: ${lineRate.round(2)}"])
		event("StatusFinal", ["Cannot proceed without meeting coverage requirements"])
		exit(1)
	  }
	}
  }
