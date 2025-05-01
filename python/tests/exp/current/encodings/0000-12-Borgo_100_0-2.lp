route("R1").
streetOnRoute("[6|100|7]", "R1", 0, 0).
streetOnRoute("3[1]", "R1", 60, 60).
link("[6|100|7]", "3[1]").
streetOnRoute("3[1]b", "R1", 75, 75).
link("3[1]", "3[1]b").
destination("Borgo_100_0", "3[1]b").
origin("Borgo_100_0", "[6|100|7]").
vehicle("Borgo_100_0", 1).
possibleRouteOfVehicle("Borgo_100_0", "R1").
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
time(70).
time(75).
time(80).
time(85).
time(90).
time(95).
capacity("3[1]", 42).
maxTrafficTravelTime("3[1]", 15).
lightTrafficTravelTime("3[1]", 15).
heavyTrafficThreshold("3[1]", 30, 42).
mediumTrafficThreshold("3[1]", 17, 30).
lightTrafficThreshold("3[1]", 0, 17).
capacity("[6|100|7]", 86).
maxTrafficTravelTime("[6|100|7]", 60).
lightTrafficTravelTime("[6|100|7]", 60).
heavyTrafficThreshold("[6|100|7]", 61, 86).
mediumTrafficThreshold("[6|100|7]", 35, 61).
lightTrafficThreshold("[6|100|7]", 0, 35).
capacity("3[1]b", 58).
maxTrafficTravelTime("3[1]b", 20).
lightTrafficTravelTime("3[1]b", 20).
heavyTrafficThreshold("3[1]b", 41, 58).
mediumTrafficThreshold("3[1]b", 24, 41).
lightTrafficThreshold("3[1]b", 0, 24).
