addpath(fullfile(matlabroot, 'toolbox', 'driving', 'drivingdemos'));
helperDrivingProjectSetup('TrafficLightNegotiation.zip', 'workDir', pwd);
open_system("TrafficLightNegotiationTestBench");
open_system("TrafficLightNegotiationTestBench/Sensors and Environment");


%hFigScenario = helperPlotScenarioWithTrafficLights();

open_system('TrafficLightNegotiationTestBench/Sensors and Environment/Traffic Light Sensor', 'force');
open_system("TrafficLightDecisionLogic");
open_system("TrafficLightDecisionLogic/Arbitration Logic");
open_system("TrafficLightDecisionLogic/Lane Center Decision Logic");
%helperSLTrafficLightNegotiationSetup("scenario_03_TLN_left_turn_with_lead_vehicle");
%closefigure()
%mpcverbosity('off');
% Simulate the model.
%sim("TrafficLightNegotiationTestBench");
%hFigResults = helperPlotTrafficLightNegotiationResults(logsout);

helperSLTrafficLightNegotiationSetup("scenario_02_TLN_left_turn_with_cross_over_vehicle");
% Simulate the model.
sim("TrafficLightNegotiationTestBench");
hFigResults = helperPlotTrafficLightNegotiationResults(logsout);