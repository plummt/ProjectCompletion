function [ status ] = ProjectInitialization(projName,Experiment)
%ProjectInitializaton Creates the folders for a new project as of 08/2015
%   Run this program when starting a new project to make sure that all the
%   folders get created it accoridance with the structure created in August
%   2014.
root = [filesep, filesep,'ROoT',filesep,'projects'];
if exist(root,'dir') == 7
    if exist([root,filesep,projName],'dir') ~= 7
        status = 'file does not exist';
        %         writeDir([root,filesep,projName])
    else % Project folder already exist
        status = 'file exist';
        if exist([root,filesep,projName,filesep,projName],'dir') ~= 7
            status = 'file does not exist';
            %         writeDir([root,filesep,projName])
        else % Project folder already exist
            status = 'file exist';
            writeDir([root,filesep,projName])
        end
        
    end
else % Program can not find the Projects folder that we use to store data
    status = 'Cant find the root folder';
end

end

function writeDir(folderLoc,Experiment)
mkdir(folderLoc);
mkdir([folderLoc,filesep,'Logistics']);
mkdir([folderLoc,filesep,'Logistics',filesep,Experiment]);
mkdir([folderLoc,filesep,'Logistics',filesep,Experiment,filesep,'Administration']);
mkdir([folderLoc,filesep,'Logistics',filesep,Experiment,filesep,'Equipment']);
mkdir([folderLoc,filesep,'Logistics',filesep,Experiment,filesep,'Experiment Layout']);
mkdir([folderLoc,filesep,'Logistics',filesep,Experiment,filesep,'Print Outs']);
mkdir([folderLoc,filesep,'Data']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment]);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-Enviroment']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-Enviroment',filesep,'Originals']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-Enviroment',filesep,'Work In Progress']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-People']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-People',filesep,'Originals']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-People',filesep,'Work In Progress']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-People',filesep,'Work In Progress',filesep,'Editied Data']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-People',filesep,'Work In Progress',filesep,'Analysis Results']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Data-People',filesep,'Work In Progress',filesep,'Meta-Analysis']);
mkdir([folderLoc,filesep,'Data',filesep,Experiment,filesep,'Device Info']);
mkdir([folderLoc,filesep,'Publications']);
mkdir([folderLoc,filesep,'Publications',filesep,Experiment]);
mkdir([folderLoc,filesep,'Publications',filesep,Experiment,filesep,'Drafts']);
mkdir([folderLoc,filesep,'Publications',filesep,Experiment,filesep,'Data Used']);
mkdir([folderLoc,filesep,'Publications',filesep,Experiment,filesep,'Functions Used']);
mkdir([folderLoc,filesep,'Publications',filesep,'Multi-Experiment']);
mkdir([folderLoc,filesep,'Publications',filesep,'Multi-Experiment',filesep,'Drafts']);
mkdir([folderLoc,filesep,'Publications',filesep,'Multi-Experiment',filesep,'Data Used']);
mkdir([folderLoc,filesep,'Publications',filesep,'Multi-Experiment',filesep,'Functions Used']);
end