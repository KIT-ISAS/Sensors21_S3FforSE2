addpath('FilterEvaluationFramework')
addpath(genpath('libdirectional'))
addpath(genpath('NonlinearEstimationToolbox'))
clear variables

scenario='se2randomDirectedWalk';
% For a thorough evaluation, increase the number of runs or run script multiple times and then use combineMats
noRuns=1000;
startTime=tic;
filters=struct('name',{'se2bf','se2iukf','pf','s3f'},...
    'filterParams',{NaN,1,100,15});

startEvaluation(scenario,filters,noRuns,scenarioCustomizationParams=50,...
    saveFolder='.',convertToPointEstimateDuringRuntime=true,tolerateFailure=true,extractAllPointEstimates=true);
toc(startTime)