route("R1").
streetOnRoute("13[0]", "R1", 0, 0).
streetOnRoute("13[1]", "R1", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R1", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("28", "R1", 30, 30).
link("4[0]", "28").
streetOnRoute("28a", "R1", 50, 50).
link("28", "28a").
streetOnRoute("30", "R1", 65, 65).
link("28a", "30").
streetOnRoute("31", "R1", 75, 75).
link("30", "31").
streetOnRoute("11[1][1]", "R1", 120, 120).
link("31", "11[1][1]").
streetOnRoute("101", "R1", 155, 155).
link("11[1][1]", "101").
streetOnRoute("35[0]", "R1", 195, 195).
link("101", "35[0]").
streetOnRoute("35[1][0]", "R1", 245, 245).
link("35[0]", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R1", 295, 295).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R2").
streetOnRoute("13[0]", "R2", 0, 0).
streetOnRoute("14", "R2", 10, 10).
link("13[0]", "14").
streetOnRoute("27", "R2", 70, 70).
link("14", "27").
streetOnRoute("36", "R2", 95, 95).
link("27", "36").
streetOnRoute("38[1][0]", "R2", 140, 140).
link("36", "38[1][0]").
streetOnRoute("96", "R2", 160, 160).
link("38[1][0]", "96").
streetOnRoute("49[1]", "R2", 180, 180).
link("96", "49[1]").
streetOnRoute("55", "R2", 190, 190).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R2", 230, 230).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R3").
streetOnRoute("13[0]", "R3", 0, 0).
streetOnRoute("14", "R3", 10, 10).
link("13[0]", "14").
streetOnRoute("18", "R3", 70, 70).
link("14", "18").
streetOnRoute("20+19a", "R3", 85, 85).
link("18", "20+19a").
streetOnRoute("a1[1]", "R3", 120, 120).
link("20+19a", "a1[1]").
streetOnRoute("1[1]", "R3", 125, 125).
link("a1[1]", "1[1]").
streetOnRoute("38[0]", "R3", 195, 195).
link("1[1]", "38[0]").
streetOnRoute("38[0]a", "R3", 200, 200).
link("38[0]", "38[0]a").
streetOnRoute("46", "R3", 240, 240).
link("38[0]a", "46").
streetOnRoute("49[0]", "R3", 260, 260).
link("46", "49[0]").
streetOnRoute("49[1]", "R3", 275, 275).
link("49[0]", "49[1]").
streetOnRoute("55", "R3", 285, 285).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R3", 325, 325).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R4").
streetOnRoute("13[0]", "R4", 0, 0).
streetOnRoute("14", "R4", 10, 10).
link("13[0]", "14").
streetOnRoute("17[0]", "R4", 70, 70).
link("14", "17[0]").
streetOnRoute("29[0]", "R4", 90, 90).
link("17[0]", "29[0]").
streetOnRoute("29[1]", "R4", 105, 105).
link("29[0]", "29[1]").
streetOnRoute("4[1][1][0]", "R4", 125, 125).
link("29[1]", "4[1][1][0]").
streetOnRoute("9", "R4", 170, 170).
link("4[1][1][0]", "9").
streetOnRoute("11[0]", "R4", 230, 230).
link("9", "11[0]").
streetOnRoute("11[1][1]", "R4", 270, 270).
link("11[0]", "11[1][1]").
streetOnRoute("101", "R4", 305, 305).
link("11[1][1]", "101").
streetOnRoute("35[0]", "R4", 345, 345).
link("101", "35[0]").
streetOnRoute("35[1][0]", "R4", 395, 395).
link("35[0]", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R4", 445, 445).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R5").
streetOnRoute("13[0]", "R5", 0, 0).
streetOnRoute("13[1]", "R5", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R5", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("4[1][1][0]", "R5", 30, 30).
link("4[0]", "4[1][1][0]").
streetOnRoute("9", "R5", 75, 75).
link("4[1][1][0]", "9").
streetOnRoute("11[0]", "R5", 135, 135).
link("9", "11[0]").
streetOnRoute("11[1][1]", "R5", 175, 175).
link("11[0]", "11[1][1]").
streetOnRoute("101", "R5", 210, 210).
link("11[1][1]", "101").
streetOnRoute("34[0]", "R5", 250, 250).
link("101", "34[0]").
streetOnRoute("34[1][0]", "R5", 265, 265).
link("34[0]", "34[1][0]").
streetOnRoute("36", "R5", 285, 285).
link("34[1][0]", "36").
streetOnRoute("46", "R5", 330, 330).
link("36", "46").
streetOnRoute("49[0]", "R5", 350, 350).
link("46", "49[0]").
streetOnRoute("49[1]", "R5", 365, 365).
link("49[0]", "49[1]").
streetOnRoute("55", "R5", 375, 375).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R5", 415, 415).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R6").
streetOnRoute("13[0]", "R6", 0, 0).
streetOnRoute("14", "R6", 10, 10).
link("13[0]", "14").
streetOnRoute("17[0]", "R6", 70, 70).
link("14", "17[0]").
streetOnRoute("30", "R6", 90, 90).
link("17[0]", "30").
streetOnRoute("31", "R6", 100, 100).
link("30", "31").
streetOnRoute("11[1][1]", "R6", 145, 145).
link("31", "11[1][1]").
streetOnRoute("101", "R6", 180, 180).
link("11[1][1]", "101").
streetOnRoute("35[0]", "R6", 220, 220).
link("101", "35[0]").
streetOnRoute("39[0]", "R6", 270, 270).
link("35[0]", "39[0]").
streetOnRoute("39[1][0]", "R6", 280, 280).
link("39[0]", "39[1][0]").
streetOnRoute("39[1][1][0]", "R6", 290, 290).
link("39[1][0]", "39[1][1][0]").
streetOnRoute("46", "R6", 340, 340).
link("39[1][1][0]", "46").
streetOnRoute("49[0]", "R6", 360, 360).
link("46", "49[0]").
streetOnRoute("49[1]", "R6", 375, 375).
link("49[0]", "49[1]").
streetOnRoute("55", "R6", 385, 385).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R6", 425, 425).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R7").
streetOnRoute("13[0]", "R7", 0, 0).
streetOnRoute("13[1]", "R7", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R7", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("28", "R7", 30, 30).
link("4[0]", "28").
streetOnRoute("28a", "R7", 50, 50).
link("28", "28a").
streetOnRoute("17[1]", "R7", 65, 65).
link("28a", "17[1]").
streetOnRoute("11[0]", "R7", 110, 110).
link("17[1]", "11[0]").
streetOnRoute("11[1][1]", "R7", 150, 150).
link("11[0]", "11[1][1]").
streetOnRoute("101", "R7", 185, 185).
link("11[1][1]", "101").
streetOnRoute("35[0]", "R7", 225, 225).
link("101", "35[0]").
streetOnRoute("35[1][0]", "R7", 275, 275).
link("35[0]", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R7", 325, 325).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R8").
streetOnRoute("13[0]", "R8", 0, 0).
streetOnRoute("14", "R8", 10, 10).
link("13[0]", "14").
streetOnRoute("27", "R8", 70, 70).
link("14", "27").
streetOnRoute("36", "R8", 95, 95).
link("27", "36").
streetOnRoute("46", "R8", 140, 140).
link("36", "46").
streetOnRoute("49[0]", "R8", 160, 160).
link("46", "49[0]").
streetOnRoute("49[1]", "R8", 175, 175).
link("49[0]", "49[1]").
streetOnRoute("55", "R8", 185, 185).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R8", 225, 225).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R9").
streetOnRoute("13[0]", "R9", 0, 0).
streetOnRoute("14", "R9", 10, 10).
link("13[0]", "14").
streetOnRoute("18", "R9", 70, 70).
link("14", "18").
streetOnRoute("20+19a", "R9", 85, 85).
link("18", "20+19a").
streetOnRoute("a1[1]", "R9", 120, 120).
link("20+19a", "a1[1]").
streetOnRoute("1[1]", "R9", 125, 125).
link("a1[1]", "1[1]").
streetOnRoute("38[0]", "R9", 195, 195).
link("1[1]", "38[0]").
streetOnRoute("38[0]a", "R9", 200, 200).
link("38[0]", "38[0]a").
streetOnRoute("38[1][0]", "R9", 240, 240).
link("38[0]a", "38[1][0]").
streetOnRoute("38[1][1]", "R9", 260, 260).
link("38[1][0]", "38[1][1]").
streetOnRoute("38[1][1]a", "R9", 270, 270).
link("38[1][1]", "38[1][1]a").
streetOnRoute("35[1][0]", "R9", 310, 310).
link("38[1][1]a", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R9", 360, 360).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R10").
streetOnRoute("13[0]", "R10", 0, 0).
streetOnRoute("13[1]", "R10", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R10", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("4[1][1][0]", "R10", 30, 30).
link("4[0]", "4[1][1][0]").
streetOnRoute("9", "R10", 75, 75).
link("4[1][1][0]", "9").
streetOnRoute("11[0]", "R10", 135, 135).
link("9", "11[0]").
streetOnRoute("11[1][1]", "R10", 175, 175).
link("11[0]", "11[1][1]").
streetOnRoute("101", "R10", 210, 210).
link("11[1][1]", "101").
streetOnRoute("35[0]", "R10", 250, 250).
link("101", "35[0]").
streetOnRoute("39[0]", "R10", 300, 300).
link("35[0]", "39[0]").
streetOnRoute("39[1][0]", "R10", 310, 310).
link("39[0]", "39[1][0]").
streetOnRoute("39[1][1][0]", "R10", 320, 320).
link("39[1][0]", "39[1][1][0]").
streetOnRoute("46", "R10", 370, 370).
link("39[1][1][0]", "46").
streetOnRoute("49[0]", "R10", 390, 390).
link("46", "49[0]").
streetOnRoute("49[1]", "R10", 405, 405).
link("49[0]", "49[1]").
streetOnRoute("55", "R10", 415, 415).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R10", 455, 455).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R11").
streetOnRoute("13[0]", "R11", 0, 0).
streetOnRoute("14", "R11", 10, 10).
link("13[0]", "14").
streetOnRoute("17[0]", "R11", 70, 70).
link("14", "17[0]").
streetOnRoute("30", "R11", 90, 90).
link("17[0]", "30").
streetOnRoute("31", "R11", 100, 100).
link("30", "31").
streetOnRoute("11[1][1]", "R11", 145, 145).
link("31", "11[1][1]").
streetOnRoute("101", "R11", 180, 180).
link("11[1][1]", "101").
streetOnRoute("34[0]", "R11", 220, 220).
link("101", "34[0]").
streetOnRoute("34[1][0]", "R11", 235, 235).
link("34[0]", "34[1][0]").
streetOnRoute("36", "R11", 255, 255).
link("34[1][0]", "36").
streetOnRoute("46", "R11", 300, 300).
link("36", "46").
streetOnRoute("49[0]", "R11", 320, 320).
link("46", "49[0]").
streetOnRoute("49[1]", "R11", 335, 335).
link("49[0]", "49[1]").
streetOnRoute("55", "R11", 345, 345).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R11", 385, 385).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R12").
streetOnRoute("13[0]", "R12", 0, 0).
streetOnRoute("13[1]", "R12", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R12", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("4[1][1][0]", "R12", 30, 30).
link("4[0]", "4[1][1][0]").
streetOnRoute("9", "R12", 75, 75).
link("4[1][1][0]", "9").
streetOnRoute("11[0]", "R12", 135, 135).
link("9", "11[0]").
streetOnRoute("11[1][1]", "R12", 175, 175).
link("11[0]", "11[1][1]").
streetOnRoute("101", "R12", 210, 210).
link("11[1][1]", "101").
streetOnRoute("35[0]", "R12", 250, 250).
link("101", "35[0]").
streetOnRoute("35[1][0]", "R12", 300, 300).
link("35[0]", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R12", 350, 350).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R13").
streetOnRoute("13[0]", "R13", 0, 0).
streetOnRoute("14", "R13", 10, 10).
link("13[0]", "14").
streetOnRoute("27", "R13", 70, 70).
link("14", "27").
streetOnRoute("36", "R13", 95, 95).
link("27", "36").
streetOnRoute("38[1][0]", "R13", 140, 140).
link("36", "38[1][0]").
streetOnRoute("38[1][1]", "R13", 160, 160).
link("38[1][0]", "38[1][1]").
streetOnRoute("38[1][1]a", "R13", 170, 170).
link("38[1][1]", "38[1][1]a").
streetOnRoute("35[1][0]", "R13", 210, 210).
link("38[1][1]a", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R13", 260, 260).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R14").
streetOnRoute("13[0]", "R14", 0, 0).
streetOnRoute("13[1]", "R14", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R14", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("28", "R14", 30, 30).
link("4[0]", "28").
streetOnRoute("28a", "R14", 50, 50).
link("28", "28a").
streetOnRoute("16[1]", "R14", 65, 65).
link("28a", "16[1]").
streetOnRoute("18", "R14", 115, 115).
link("16[1]", "18").
streetOnRoute("20+19a", "R14", 130, 130).
link("18", "20+19a").
streetOnRoute("a1[1]", "R14", 165, 165).
link("20+19a", "a1[1]").
streetOnRoute("1[1]", "R14", 170, 170).
link("a1[1]", "1[1]").
streetOnRoute("38[0]", "R14", 240, 240).
link("1[1]", "38[0]").
streetOnRoute("38[0]a", "R14", 245, 245).
link("38[0]", "38[0]a").
streetOnRoute("38[1][0]", "R14", 285, 285).
link("38[0]a", "38[1][0]").
streetOnRoute("96", "R14", 305, 305).
link("38[1][0]", "96").
streetOnRoute("49[1]", "R14", 325, 325).
link("96", "49[1]").
streetOnRoute("55", "R14", 335, 335).
link("49[1]", "55").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R14", 375, 375).
link("55", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
route("R15").
streetOnRoute("13[0]", "R15", 0, 0).
streetOnRoute("13[1]", "R15", 10, 10).
link("13[0]", "13[1]").
streetOnRoute("4[0]", "R15", 15, 15).
link("13[1]", "4[0]").
streetOnRoute("4[1][1][0]", "R15", 30, 30).
link("4[0]", "4[1][1][0]").
streetOnRoute("9", "R15", 75, 75).
link("4[1][1][0]", "9").
streetOnRoute("11[0]", "R15", 135, 135).
link("9", "11[0]").
streetOnRoute("11[1][1]", "R15", 175, 175).
link("11[0]", "11[1][1]").
streetOnRoute("101", "R15", 210, 210).
link("11[1][1]", "101").
streetOnRoute("34[0]", "R15", 250, 250).
link("101", "34[0]").
streetOnRoute("34[1][0]", "R15", 265, 265).
link("34[0]", "34[1][0]").
streetOnRoute("36", "R15", 285, 285).
link("34[1][0]", "36").
streetOnRoute("38[1][0]", "R15", 330, 330).
link("36", "38[1][0]").
streetOnRoute("38[1][1]", "R15", 350, 350).
link("38[1][0]", "38[1][1]").
streetOnRoute("38[1][1]a", "R15", 360, 360).
link("38[1][1]", "38[1][1]a").
streetOnRoute("35[1][0]", "R15", 400, 400).
link("38[1][1]a", "35[1][0]").
streetOnRoute("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", "R15", 450, 450).
link("35[1][0]", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
destination("3_0", "[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]").
origin("3_0", "13[0]").
vehicle("3_0", 1).
possibleRouteOfVehicle("3_0", "R1").
possibleRouteOfVehicle("3_0", "R2").
possibleRouteOfVehicle("3_0", "R3").
possibleRouteOfVehicle("3_0", "R4").
possibleRouteOfVehicle("3_0", "R5").
possibleRouteOfVehicle("3_0", "R6").
possibleRouteOfVehicle("3_0", "R7").
possibleRouteOfVehicle("3_0", "R8").
possibleRouteOfVehicle("3_0", "R9").
possibleRouteOfVehicle("3_0", "R10").
possibleRouteOfVehicle("3_0", "R11").
possibleRouteOfVehicle("3_0", "R12").
possibleRouteOfVehicle("3_0", "R13").
possibleRouteOfVehicle("3_0", "R14").
possibleRouteOfVehicle("3_0", "R15").
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
time(100).
time(105).
time(110).
time(115).
time(120).
time(125).
time(130).
time(135).
time(140).
time(145).
time(150).
time(155).
time(160).
time(165).
time(170).
time(175).
time(180).
time(185).
time(190).
time(195).
time(200).
time(205).
time(210).
time(215).
time(220).
time(225).
time(230).
time(235).
time(240).
time(245).
time(250).
time(255).
time(260).
time(265).
time(270).
time(275).
time(280).
time(285).
time(290).
time(295).
time(300).
time(305).
time(310).
time(315).
time(320).
time(325).
time(330).
time(335).
time(340).
time(345).
time(350).
time(355).
time(360).
time(365).
time(370).
time(375).
time(380).
time(385).
time(390).
time(395).
time(400).
time(405).
time(410).
time(415).
time(420).
time(425).
time(430).
time(435).
time(440).
time(445).
time(450).
time(455).
time(460).
time(465).
time(470).
time(475).
time(480).
capacity("28", 23).
maxTrafficTravelTime("28", 20).
lightTrafficTravelTime("28", 20).
heavyTrafficThreshold("28", 17, 23).
mediumTrafficThreshold("28", 10, 17).
lightTrafficThreshold("28", 0, 10).
capacity("38[1][1]a", 11).
maxTrafficTravelTime("38[1][1]a", 40).
lightTrafficTravelTime("38[1][1]a", 40).
heavyTrafficThreshold("38[1][1]a", 8, 11).
mediumTrafficThreshold("38[1][1]a", 5, 8).
lightTrafficThreshold("38[1][1]a", 0, 5).
capacity("a1[1]", 3).
maxTrafficTravelTime("a1[1]", 5).
lightTrafficTravelTime("a1[1]", 5).
heavyTrafficThreshold("a1[1]", 3, 3).
mediumTrafficThreshold("a1[1]", 2, 3).
lightTrafficThreshold("a1[1]", 0, 2).
capacity("13[0]", 22).
maxTrafficTravelTime("13[0]", 10).
lightTrafficTravelTime("13[0]", 10).
heavyTrafficThreshold("13[0]", 16, 22).
mediumTrafficThreshold("13[0]", 9, 16).
lightTrafficThreshold("13[0]", 0, 9).
capacity("96", 24).
maxTrafficTravelTime("96", 20).
lightTrafficTravelTime("96", 20).
heavyTrafficThreshold("96", 17, 24).
mediumTrafficThreshold("96", 10, 17).
lightTrafficThreshold("96", 0, 10).
capacity("39[1][0]", 9).
maxTrafficTravelTime("39[1][0]", 10).
lightTrafficTravelTime("39[1][0]", 10).
heavyTrafficThreshold("39[1][0]", 7, 9).
mediumTrafficThreshold("39[1][0]", 4, 7).
lightTrafficThreshold("39[1][0]", 0, 4).
capacity("30", 12).
maxTrafficTravelTime("30", 10).
lightTrafficTravelTime("30", 10).
heavyTrafficThreshold("30", 9, 12).
mediumTrafficThreshold("30", 5, 9).
lightTrafficThreshold("30", 0, 5).
capacity("55", 22).
maxTrafficTravelTime("55", 40).
lightTrafficTravelTime("55", 40).
heavyTrafficThreshold("55", 16, 22).
mediumTrafficThreshold("55", 9, 16).
lightTrafficThreshold("55", 0, 9).
capacity("18", 18).
maxTrafficTravelTime("18", 15).
lightTrafficTravelTime("18", 15).
heavyTrafficThreshold("18", 13, 18).
mediumTrafficThreshold("18", 8, 13).
lightTrafficThreshold("18", 0, 8).
capacity("4[0]", 32).
maxTrafficTravelTime("4[0]", 15).
lightTrafficTravelTime("4[0]", 15).
heavyTrafficThreshold("4[0]", 23, 32).
mediumTrafficThreshold("4[0]", 13, 23).
lightTrafficThreshold("4[0]", 0, 13).
capacity("31", 22).
maxTrafficTravelTime("31", 45).
lightTrafficTravelTime("31", 45).
heavyTrafficThreshold("31", 16, 22).
mediumTrafficThreshold("31", 9, 16).
lightTrafficThreshold("31", 0, 9).
capacity("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", 37).
maxTrafficTravelTime("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", 25).
lightTrafficTravelTime("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", 25).
heavyTrafficThreshold("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", 26, 37).
mediumTrafficThreshold("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", 15, 26).
lightTrafficThreshold("[35[1][1][0]|20000+35[1][1][1][0]|35[1][1][1][1]]", 0, 15).
capacity("49[0]", 23).
maxTrafficTravelTime("49[0]", 15).
lightTrafficTravelTime("49[0]", 15).
heavyTrafficThreshold("49[0]", 17, 23).
mediumTrafficThreshold("49[0]", 10, 17).
lightTrafficThreshold("49[0]", 0, 10).
capacity("38[0]a", 8).
maxTrafficTravelTime("38[0]a", 40).
lightTrafficTravelTime("38[0]a", 40).
heavyTrafficThreshold("38[0]a", 6, 8).
mediumTrafficThreshold("38[0]a", 4, 6).
lightTrafficThreshold("38[0]a", 0, 4).
capacity("1[1]", 180).
maxTrafficTravelTime("1[1]", 70).
lightTrafficTravelTime("1[1]", 70).
heavyTrafficThreshold("1[1]", 126, 180).
mediumTrafficThreshold("1[1]", 72, 126).
lightTrafficThreshold("1[1]", 0, 72).
capacity("14", 39).
maxTrafficTravelTime("14", 60).
lightTrafficTravelTime("14", 60).
heavyTrafficThreshold("14", 28, 39).
mediumTrafficThreshold("14", 16, 28).
lightTrafficThreshold("14", 0, 16).
capacity("34[0]", 23).
maxTrafficTravelTime("34[0]", 15).
lightTrafficTravelTime("34[0]", 15).
heavyTrafficThreshold("34[0]", 17, 23).
mediumTrafficThreshold("34[0]", 10, 17).
lightTrafficThreshold("34[0]", 0, 10).
capacity("9", 42).
maxTrafficTravelTime("9", 60).
lightTrafficTravelTime("9", 60).
heavyTrafficThreshold("9", 30, 42).
mediumTrafficThreshold("9", 17, 30).
lightTrafficThreshold("9", 0, 17).
capacity("4[1][1][0]", 42).
maxTrafficTravelTime("4[1][1][0]", 45).
lightTrafficTravelTime("4[1][1][0]", 45).
heavyTrafficThreshold("4[1][1][0]", 30, 42).
mediumTrafficThreshold("4[1][1][0]", 17, 30).
lightTrafficThreshold("4[1][1][0]", 0, 17).
capacity("27", 36).
maxTrafficTravelTime("27", 25).
lightTrafficTravelTime("27", 25).
heavyTrafficThreshold("27", 26, 36).
mediumTrafficThreshold("27", 15, 26).
lightTrafficThreshold("27", 0, 15).
capacity("38[1][0]", 24).
maxTrafficTravelTime("38[1][0]", 20).
lightTrafficTravelTime("38[1][0]", 20).
heavyTrafficThreshold("38[1][0]", 17, 24).
mediumTrafficThreshold("38[1][0]", 10, 17).
lightTrafficThreshold("38[1][0]", 0, 10).
capacity("17[0]", 27).
maxTrafficTravelTime("17[0]", 20).
lightTrafficTravelTime("17[0]", 20).
heavyTrafficThreshold("17[0]", 19, 27).
mediumTrafficThreshold("17[0]", 11, 19).
lightTrafficThreshold("17[0]", 0, 11).
capacity("17[1]", 23).
maxTrafficTravelTime("17[1]", 45).
lightTrafficTravelTime("17[1]", 45).
heavyTrafficThreshold("17[1]", 17, 23).
mediumTrafficThreshold("17[1]", 10, 17).
lightTrafficThreshold("17[1]", 0, 10).
capacity("13[1]", 10).
maxTrafficTravelTime("13[1]", 5).
lightTrafficTravelTime("13[1]", 5).
heavyTrafficThreshold("13[1]", 7, 10).
mediumTrafficThreshold("13[1]", 4, 7).
lightTrafficThreshold("13[1]", 0, 4).
capacity("46", 26).
maxTrafficTravelTime("46", 20).
lightTrafficTravelTime("46", 20).
heavyTrafficThreshold("46", 19, 26).
mediumTrafficThreshold("46", 11, 19).
lightTrafficThreshold("46", 0, 11).
capacity("39[0]", 11).
maxTrafficTravelTime("39[0]", 10).
lightTrafficTravelTime("39[0]", 10).
heavyTrafficThreshold("39[0]", 8, 11).
mediumTrafficThreshold("39[0]", 5, 8).
lightTrafficThreshold("39[0]", 0, 5).
capacity("28a", 16).
maxTrafficTravelTime("28a", 15).
lightTrafficTravelTime("28a", 15).
heavyTrafficThreshold("28a", 12, 16).
mediumTrafficThreshold("28a", 7, 12).
lightTrafficThreshold("28a", 0, 7).
capacity("39[1][1][0]", 24).
maxTrafficTravelTime("39[1][1][0]", 50).
lightTrafficTravelTime("39[1][1][0]", 50).
heavyTrafficThreshold("39[1][1][0]", 17, 24).
mediumTrafficThreshold("39[1][1][0]", 10, 17).
lightTrafficThreshold("39[1][1][0]", 0, 10).
capacity("16[1]", 27).
maxTrafficTravelTime("16[1]", 50).
lightTrafficTravelTime("16[1]", 50).
heavyTrafficThreshold("16[1]", 19, 27).
mediumTrafficThreshold("16[1]", 11, 19).
lightTrafficThreshold("16[1]", 0, 11).
capacity("11[1][1]", 10).
maxTrafficTravelTime("11[1][1]", 35).
lightTrafficTravelTime("11[1][1]", 35).
heavyTrafficThreshold("11[1][1]", 7, 10).
mediumTrafficThreshold("11[1][1]", 4, 7).
lightTrafficThreshold("11[1][1]", 0, 4).
capacity("11[0]", 22).
maxTrafficTravelTime("11[0]", 40).
lightTrafficTravelTime("11[0]", 40).
heavyTrafficThreshold("11[0]", 16, 22).
mediumTrafficThreshold("11[0]", 9, 16).
lightTrafficThreshold("11[0]", 0, 9).
capacity("101", 22).
maxTrafficTravelTime("101", 40).
lightTrafficTravelTime("101", 40).
heavyTrafficThreshold("101", 16, 22).
mediumTrafficThreshold("101", 9, 16).
lightTrafficThreshold("101", 0, 9).
capacity("38[1][1]", 9).
maxTrafficTravelTime("38[1][1]", 10).
lightTrafficTravelTime("38[1][1]", 10).
heavyTrafficThreshold("38[1][1]", 7, 9).
mediumTrafficThreshold("38[1][1]", 4, 7).
lightTrafficThreshold("38[1][1]", 0, 4).
capacity("49[1]", 10).
maxTrafficTravelTime("49[1]", 10).
lightTrafficTravelTime("49[1]", 10).
heavyTrafficThreshold("49[1]", 7, 10).
mediumTrafficThreshold("49[1]", 4, 7).
lightTrafficThreshold("49[1]", 0, 4).
capacity("29[1]", 23).
maxTrafficTravelTime("29[1]", 20).
lightTrafficTravelTime("29[1]", 20).
heavyTrafficThreshold("29[1]", 17, 23).
mediumTrafficThreshold("29[1]", 10, 17).
lightTrafficThreshold("29[1]", 0, 10).
capacity("20+19a", 6).
maxTrafficTravelTime("20+19a", 35).
lightTrafficTravelTime("20+19a", 35).
heavyTrafficThreshold("20+19a", 5, 6).
mediumTrafficThreshold("20+19a", 3, 5).
lightTrafficThreshold("20+19a", 0, 3).
capacity("35[0]", 24).
maxTrafficTravelTime("35[0]", 50).
lightTrafficTravelTime("35[0]", 50).
heavyTrafficThreshold("35[0]", 17, 24).
mediumTrafficThreshold("35[0]", 10, 17).
lightTrafficThreshold("35[0]", 0, 10).
capacity("35[1][0]", 26).
maxTrafficTravelTime("35[1][0]", 50).
lightTrafficTravelTime("35[1][0]", 50).
heavyTrafficThreshold("35[1][0]", 19, 26).
mediumTrafficThreshold("35[1][0]", 11, 19).
lightTrafficThreshold("35[1][0]", 0, 11).
capacity("38[0]", 7).
maxTrafficTravelTime("38[0]", 5).
lightTrafficTravelTime("38[0]", 5).
heavyTrafficThreshold("38[0]", 5, 7).
mediumTrafficThreshold("38[0]", 3, 5).
lightTrafficThreshold("38[0]", 0, 3).
capacity("36", 23).
maxTrafficTravelTime("36", 45).
lightTrafficTravelTime("36", 45).
heavyTrafficThreshold("36", 17, 23).
mediumTrafficThreshold("36", 10, 17).
lightTrafficThreshold("36", 0, 10).
capacity("34[1][0]", 25).
maxTrafficTravelTime("34[1][0]", 20).
lightTrafficTravelTime("34[1][0]", 20).
heavyTrafficThreshold("34[1][0]", 18, 25).
mediumTrafficThreshold("34[1][0]", 10, 18).
lightTrafficThreshold("34[1][0]", 0, 10).
capacity("29[0]", 16).
maxTrafficTravelTime("29[0]", 15).
lightTrafficTravelTime("29[0]", 15).
heavyTrafficThreshold("29[0]", 12, 16).
mediumTrafficThreshold("29[0]", 7, 12).
lightTrafficThreshold("29[0]", 0, 7).
