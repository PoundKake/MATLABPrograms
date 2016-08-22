%% Title
% Program: caclgui.m
% Description: A simple 4 function calculator.
% Author: Christian Vance 
% Last Update: 08-12-2016
% Version: V1.1

%% Tools
dbstop if error;				%Debugging stops the scripts and points to the error. 
% dbstep;					% Use in command line to step through errors found 		
clear all;						%Clears the workspace before running.  
			
%% Instance Variables 
bsize = 60;
FIG_WIDTH = 350;
FIG_HEIGHT = 480;
% dar = zeros(4);
% cells = zeros(4);
pdng = [ 10, 80, 150, 220 ];

%% Main Figure
main = figure( 'MenuBar', 'none', ...
	 'ToolBar', 'none', ...
	 'Color', [ .480 .480 .480 ], ...
	 'Name', 'Calculator', ...
	 'NumberTitle', 'off', ...
	 'Resize', 'off', ...
	 'Units', 'points', ...
	 'Position', [ 20, 30 , FIG_WIDTH, FIG_HEIGHT ], ...
	 'Visible', 'off' );
 
 %% Button Panel 
 bpanel = uipanel( 'Parent', main, ...
					'Title', 'Version V1.1', ...
					'BorderType', 'line', ...
					'BorderWidth', 2, ...
					'Visible', 'off', ...
					'Units', 'points', ...
					'Position', [ (main.Position(1)+5),  ...
								(main.Position(2)), ...
								(main.Position(3)-55), ...
								(main.Position(4)-185) ], ...
					'BackgroundColor', [ .55, .55, .55 ], ...
					'ForegroundColor', 'white', ...
					'FontSize', 6 );
%% Screen Panel 
 spanel = uipanel( 'Parent', main, ...
					'Visible', 'off', ...
					'BorderType', 'line', ...
					'BorderWidth', 2, ...
					'Units', 'points', ...
					'Clipping', 'off', ...
					'Position', [ (main.Position(1)+5),  ...
								(bpanel.Position(4)+45), ...
								(main.Position(3)-55), ...
								130 ], ...
					'BackgroundColor', [.55, .55, .55 ] );		
				
%% Screen
screen = uicontrol( 'Parent', main, ...
					'style', 'text', ...
					'BackgroundColor', [ .85, .85, .85 ], ...
					'Units', 'points', ...
					'Position', [ spanel.Position(1)+20, spanel.Position(2)+20, 255, 90 ] );
% 					'BackgroundColor', [ .35, .67, 0 ], ...
					
%% Buttons
% Implementing a for loop to create a 4x4 2D array of buttons for the calculator
% pb= zeros(4);
for r = 1:4
	for c = 1:4
		pb(r,c) = uicontrol( 'Parent', bpanel, ...
						'style', 'push', ...
						'String', '#', ...
						'FontSize', 20, ...
						'BackgroundColor',  [ .7, .7, .7 ] , ...
						'ForegroundColor', 'black', ...
						'Units', 'points', ... 
						'Position', [ pdng(r), pdng(c), bsize, bsize ], ...
						'ForegroundColor', 'white' );
	end
end

%% Individualizing buttons and their functionality.
% "." button
pb(1,1).String = '.' ;
pb(1,1).FontSize = 50;

% "7" button
pb(1,2).String = '7' ;

% "4" button
pb(1,3).String = '4' ;

% "1" button
pb(1,4).String = '1' ;

% "0" button
pb(2,1).String = '0' ;						

% "8" button
pb(2,2).String = '8' ;

% "5" button
pb(2,3).String = '5' ;

% "2" button
pb(2,4).String = '2' ;

% "/" button
pb(3,1).String = '/' ;					

% "9" button
pb(3,2).String = '9' ;						

% "6" button
pb(3,3).String = '6' ;

% "3" button
pb(3,4).String = '3' ;

% "*" button
pb(4,1).String = '*' ;
pb(4,1).FontSize = 30;				

% "-" button
pb(4,2).String = '-' ;	
pb(4,2).FontSize = 30;

% "+" button
pb(4,3).String = '+' ;						

% "C" button
pb(4,4).String = 'C' ;

%% Visibility 
% first made last set order for setting visibility
spanel.Visible = 'on' ;
bpanel.Visible = 'on' ;
main.Visible = 'on' ;

























