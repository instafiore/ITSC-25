1 {solutionRoute(V, R): possibleRouteOfVehicle(V, R)} 1 :- vehicle(V, 1).
solutionRoute(V, R) :- possibleRouteOfVehicle(V, R), vehicle(V, 0).
solutionStreet(V, S) :- solutionRoute(V,R), streetOnRoute(S, R,_,_).

% added
congestion(S,T,"HEAVY") :- enter(_,S,T), nVehicleOnStreet(S,T,N), heavyTrafficThreshold(S,A,_), N >= A.
congestion(S,T,"MEDIUM") :- enter(_,S,T), nVehicleOnStreet(S,T,N), mediumTrafficThreshold(S,A,B), N >= A, N < B.
congestion(S,T,"LIGHT") :- enter(_,S,T), nVehicleOnStreet(S,T,N), lightTrafficThreshold(S,_,B), N < B.
% ---

1 {enter(V,S,T) : time(T), T >= MIN, T <= MAX} 1 :- vehicle(V, 1), solutionStreet(V, S), solutionRoute(V, R), streetOnRoute(S, R, MIN, MAX), not origin(V,S).
enter(V,S,0) :- origin(V,S).
1 {exit(V,S,T) : time(T), T > IN, T <= IN + MAX} 1 :- vehicle(V, 1), enter(V,S,IN), maxTrafficTravelTime(S,MAX).
nVehicleOnStreet(S,T,N) :- enter(_,S,T), N = #sum{1,V: enter(V,S,IN), IN <= T; -1,V: exit(V,S,OUT), OUT <= T}.
travelTime(S,T,X) :- enter(_,S,T), nVehicleOnStreet(S,T,N), heavyTrafficThreshold(S,A,_), N >= A, heavyTrafficTravelTime(S,X).
travelTime(S,T,X) :- enter(_,S,T), nVehicleOnStreet(S,T,N), mediumTrafficThreshold(S,A,B), N >= A, N < B, mediumTrafficTravelTime(S,X).
travelTime(S,T,X) :- enter(_,S,T), nVehicleOnStreet(S,T,N), lightTrafficThreshold(S,_,B), N < B, lightTrafficTravelTime(S,X).
:- vehicle(V,1), exit(V,S,OUT), enter(V,S,IN), travelTime(S,IN,X), OUT < IN + X.
:- vehicle(V,1), exit(V,S1,OUT1), enter(V,S2,IN2), link(S1,S2), IN2 != OUT1.
#show enter/3.
#show exit/3.
#show solutionRoute/2.
#show nVehicleOnStreet/3.
#show congestion/3.

% added
:- enter(V,S,T), vehicle(V,1), capacity(S,MAX), nVehicleOnStreet(S,T,N), N > MAX.

:~ vehicle(V, 1), solutionRoute(V,R), emissionClass(V, Class), indexStreetOnRoute(S1, R, I), indexStreetOnRoute(S2, R, I+1), enter(V,S1,T), congestion(S1,T,Cong), emissionMap(S1, S2, Class, Cong, W). [W@2, V, R, S1, S2, Cong, Class, T]%.
:~ vehicle(V, 1), solutionRoute(V,R), emissionClass(V, Class), indexStreetOnRoute(S1, R, I), not indexStreetOnRoute(_, R, I+1),  enter(V,S1,T), congestion(S1,T,Cong), emissionMap(S1, "None", Class, Cong, W). [W@2, V, R, S1, "None", Cong, Class, T]%.
% ---


