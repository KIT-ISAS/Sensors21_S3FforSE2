addpath('FilterEvaluationFramework')
addpath(genpath('libdirectional'))
addpath(genpath('NonlinearEstimationToolbox'))
clear variables

scenario='se2randomDirectedWalk';
% For a thorough evaluation, increase the number of runs or run script multiple times and then use combineMats
noRuns=100;
startTime=tic;
filters=struct('name',{'se2bf','se2iukf','pf','s3f'},...
    'filterParams',{NaN,[1e-3,1e-2,1e-1,1],[3,5,8,11,21,300,700,1500,5000,10000,25000,1e6],...
    [3,7,11,15,30,60]});

startEvaluation(scenario,filters,noRuns,scenarioCustomizationParams=50,...
    saveFolder='.',convertToPointEstimateDuringRuntime=true,tolerateFailure=true);
toc(startTime)