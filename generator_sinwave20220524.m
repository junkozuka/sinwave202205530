%%% generator_sinwave
close all
clear

%%%%%%%%%%%%%%%%%%%%%%%%
%% start session %%%
%%%%%%%%%%%%%%%%%%%%%%%%%
oldpath = path;
%path(oldpath,'C:\Users\jun-ko\Dropbox\Works\jkLib\matlib') % home
path(oldpath,'C:\Users\crest\Dropbox\Works\jkLib\matlib') % lab

%%%% set parameters %%%%%%%%%%%%%
set_parameters_macro % >>> macro1 >>>
prms.dNum = 200; % data number <-- parameter1
prms

%%%%%% make project %%%%%%%%%%%%
project.databankPath = 'C:\databank';
project.sessiontag = 'sinwave';
project.sessiontag = sprintf('%s_dNum%d', project.sessiontag, prms.dNum);
project

%% make dataset folder
make_session_macro  % >>> macro2 >>>
sdCode

%%%% make dataset %%%%%%%%%%%%%
generate_sinwave_macro  % >>> macro3 >>>
dataset
timeset % time for dataset
reference
display_sinwave_macro

%%% writer for dataset
make_dataset_macro % >>> macro4 >>>

%%%%%%%%%%%%%%%%%%%%%%%%
%%% check dataset
%%%%%%%%%%%%%%%%%%%%%%%%%
clear('dataset')
clear('timeset')
clear('reference')
clear('prms')

load_dataset_macro  % >>> macro5 >>>

display_sinwave_macro

