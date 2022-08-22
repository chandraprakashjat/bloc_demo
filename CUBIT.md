1. Cubit:-

 It is State Managment class which extends BlocBase class. 
 It can manage any type of state value. Simple to complex state class.


2. This require initial state value. 

3. Get current state value :- state getter.

4. Update state value :- emit(<Updated State value>)






Function   ------FunctionCall()-------> Cubit --------emit()----------> State
                                                        |
                                                        |
                                        onChange(Change change) <--Keep current and next state value

