%Definitions for isElementInList(El, List)

%Q1
%This is the base-case for the recursive rule. If the
%element being searched for is the head of the list the goal succeeds.
isElementInList(El, [El|_]).

%This is the recursive step of the rule. If the element being searched
%for isn't the head of the list, then the element is checked against
%the head of the tail of the list.
isElementInList(El, [_|T]):- isElementInList(El,T).

%Definitions for reverseList(List, ReversedList)

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)
%Q4
% This is the trivial branch or base-case of the recursive rule. It is
% true when one of the lists to be merged is the empty list.
mergeLists([],List,List).

% This is the recursive branch. Elements from the list given as the
% first argument to the rule are added to list given as the second
% argument to the rule one-by-one until they are all added. The program
% then outputs the merged list.
mergeLists([Head|Tail], List, [Head|X]):- mergeLists(Tail, List, X).
