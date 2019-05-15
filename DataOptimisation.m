%%% Project for Intro into Data for Assignment 3

clear all;

NumTrials = 100;
LearningRate = 0.001;
numLoops = 2000;

 CostTable = xlsread('CostTable.xlsx');
 CostTable = CostTable(2:9,2:13);
 
 CostTrials = zeros(NumTrials,1);
 
 PV = ones(1, 36)*0.5;
 
 Epoch = ones(NumTrials, 36);
 
 CostBin2Dec = @(CostIndexBin) ...        
                CostIndexBin(1)*8 + ...   
                CostIndexBin(2)*4 + ...  
                CostIndexBin(3)*2 + ...
                CostIndexBin(4)*1;
 ConnectorConnections = zeros(8,1);