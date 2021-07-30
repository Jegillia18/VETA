function [Onset,Point2,AllPoints] = PatternFinder(inputArg1,inputArg2,inputArg3)
%Create function that finds a pattern within a waveform

% Function needs to be able to find conzecutive numbers that go above a
% threshold and to report back the index in which this happens, for example
% if there are 5 points that go above a certain threshold - report back the
% index of [the onset, the point after onset, and every point that meets
% criteria]


% Take a look at the find MEP file for Evan's study -- this was where it
% was multiple lines (s +1)....(s+5) - maybe copy over this waveform here
% or see how you can adjust it with that code

Onset = inputArg1;
Point2 = inputArg2;
AllPoints = inputArg3;
end
