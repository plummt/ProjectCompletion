function [ path,status ] = initPaths(project, experiment)
%INITPATHS Gathers the paths for the diffrent folders needed for a Project
%   

root = fullfile([filesep,filesep],'root','projects');
Paths = struct(...
    'project'           ,fullfile([root,project]),...
    'Logistics'         ,fullfile([root,project,'Logistics']),...
    'Data'              ,fullfile([root,project,'Data']),...
    'Publications'      ,fullfile([root,project,'Publications']),...
    'originalPplData'   ,'',...
    'editedPplData'     ,'',...
    'originalEnvData'   ,'',...
    'editedEnveData'    ,'',...
    'results'           ,'',...
    'plots'             ,'',...
    'logs'              ,'');

 % Retain only alphabetic characters from input and convert to lowercase
location = lower(regexprep(project,'\W',''));
experiment  = lower(regexprep(experiment,'\W',''));

% Set GSA parent directory
Paths.project = fullfile([filesep,filesep],'root','projects',project);
% Check that it exists









% Specify location directory
switch location
    case {'grandjunction','colorado','co'}
        Paths.location = fullfile(Paths.gsa,...
            'GrandJunction_Colorado_site_data','Daysimeter_People_Data');
    case {'portland','oregon','or'}
        Paths.location = fullfile(Paths.gsa,...
            'Portland_Oregon_site_data','Daysimeter_People_Data');
    case {'seattle','washington','wa'}
        Paths.location = fullfile(Paths.gsa,...
            'Seattle_Washington','Daysimeter_People_Data');
    otherwise
        error('Unknown project.');
end

% Specify session specific directories
Paths.originalData = fullfile(Paths.location,[experiment,'OriginalData']);
Paths.editedData   = fullfile(Paths.location,[experiment,'EditedData']);
Paths.results      = fullfile(Paths.location,[experiment,'Results']);
Paths.plots        = fullfile(Paths.location,[experiment,'Plots']);
Paths.logs         = fullfile(Paths.location,[experiment,'Logs']);

end