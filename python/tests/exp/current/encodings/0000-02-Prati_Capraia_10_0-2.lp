route("R1").
streetOnRoute("3[0]", "R1", 0, 0).
streetOnRoute("10", "R1", 45, 45).
link("3[0]", "10").
destination("Prati_Capraia_10_0", "10").
origin("Prati_Capraia_10_0", "3[0]").
vehicle("Prati_Capraia_10_0", 1).
possibleRouteOfVehicle("Prati_Capraia_10_0", "R1").
time(0).
time(5).
time(10).
time(15).
time(20).
time(25).
time(30).
time(35).
time(40).
time(45).
time(50).
time(55).
time(60).
time(65).
capacity("3[0]", 42).
maxTrafficTravelTime("3[0]", 45).
lightTrafficTravelTime("3[0]", 45).
heavyTrafficThreshold("3[0]", 30, 42).
mediumTrafficThreshold("3[0]", 17, 30).
lightTrafficThreshold("3[0]", 0, 17).
capacity("10", 28).
maxTrafficTravelTime("10", 20).
lightTrafficTravelTime("10", 20).
heavyTrafficThreshold("10", 20, 28).
mediumTrafficThreshold("10", 12, 20).
lightTrafficThreshold("10", 0, 12).
