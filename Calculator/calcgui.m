%% Title
% Program: caclgui.m
% Description: A simple 4 function calculator.
% Author: Christian Vance 
% Version: V1.1

%% Debugging Tools
dbstop if error;				%Debugging stops the scripts and points to the error. 
% dbstep;					% Use in command line to step through errors found 		
				
%% Instance Variables 
bsize = 40;
FIG_WIDTH = 360;
FIG_HEIGHT = 480;

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
 % Button Panel 
 bpanel = uipanel( 'Parent', main, ...
					'Title', 'Version V1.1', ...
					'BorderType', 'line', ...
					'BorderWidth', 2, ...
					'Visible', 'off', ...
					'Units', 'points', ...
					'Position', [ (main.Position(1)+5),  ...
								(main.Position(2)), ...
								(main.Position(3)-50), ...
								(main.Position(4)-200) ], ...
					'BackgroundColor', [ .55, .55, .55 ], ...
					'ForegroundColor', 'white', ...
					'FontSize', 6 );
% Screen Panel 
 spanel = uipanel( 'Parent', main, ...
					'Visible', 'off', ...
					'Units', 'points', ...
					'Clipping', 'off', ...
					'Position', [ (main.Position(1)+5),  ...
								(bpanel.Position(4)+55), ...
								(main.Position(3)-50), ...
								130 ], ...
					'BackgroundColor', [.55, .55, .55 ] );		
				
% Screen
screen = uicontrol( 'Parent', main, ...
					'style', 'text', ...
					'BackgroundColor', [ .35, .70, 0 ], ...
					'Units', 'points', ...
					'Position', [ spanel.Position(1)+20, spanel.Position(2)+20, 265, 90 ] );
					

% Buttons
% Consider reworking generating a for loop to make a 2D array that makes a 4x4 matrix of buttons
% instead of hardcoding each one.  This "might" improve runtime preformance and definitly will clean
% up the overall length of the code.  
pb1 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '1', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50, bsize, bsize ] );
			
pb2 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '2', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+10, bsize, bsize ] );
			
pb3 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '3', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+20, bsize, bsize ] );
			
pb4 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '4', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+30, bsize, bsize ] );
			
pb5 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '5', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+40, bsize, bsize ] );
			
pb6 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '6', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+50, bsize, bsize ] );
			
pb7 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '7', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+60, bsize, bsize ] );
			
pb8 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '8', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+70, bsize, bsize ] );
			
pb9 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '9', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+80, bsize, bsize ] );
			
pb10 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '10', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+90, bsize, bsize ] );
			
pb11 = uicontrol( 'Parent', bpanel, ...
				'style', 'push', ...
				'String', '11', ...
				'FontSize', 20, ...
				'BackgroundColor', 'white', ...
				'ForegroundColor', 'black', ...
				'Units', 'points', ... 
				'Position', [ 10 , 50+100, bsize, bsize ] );
			

%% Visibility 
% first made last set order for setting visibility
spanel.Visible = 'on' ;
bpanel.Visible = 'on' ;
main.Visible = 'on' ;
