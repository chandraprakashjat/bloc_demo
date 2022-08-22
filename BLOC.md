
Bloc :- This package help of build Bloc design pattern.


How we serate Presentation Layer and Business Logic. 

It Improve Testability and Readability of Code.
Easy to manage Code.
Create Single place for data availability.




Event ---(1)---(2)--> Bloc ---->emit()------->State

(1) ->  onEvent method call once any event trigger 
(2) -> A specific EventTransfer implemented to bind specific Event Handler
(3) -> Event Handler method call to handle specific type of event. EventTransfer bind Event with Event Handler.

(4) -> onTransition() - This method call before change in state value(It keep BaseBloc, Transition instance):- Event,CurrentState,NextState.



