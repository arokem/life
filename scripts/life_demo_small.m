%% A really small example of life

feOpenLocalCluster;

%% Build the file names for the diffusion data, the anatomical MRI.
dwiFile       = fullfile('/Users/arokem/.dipy/stanford_hardi/HARDI150.nii.gz');
dwiFileRepeat = fullfile('/Users/arokem/.dipy/stanford_hardi/HARDI150.nii.gz');
t1File        = fullfile('/Users/arokem/.dipy/stanford_hardi/t1.nii.gz');
fgFileName    = fullfile('/Users/arokem/source/life/scripts/test.pdb');
feFileName    = 'life-lr-superiorfrontal';

%% Initialize the thing:
fe = feConnectomeInit(dwiFile, fgFileName,feFileName, '.', dwiFileRepeat, t1File );

%% Setting this to fit using sbb: 
fe = feSet(fe,'fit',feFitModel(feGet(fe,'mfiber'),feGet(fe,'dsigdemeaned'),'bbnnls'));
w      = feGet(fe,'fiber weights');

%% RMSE
%rmse   = feGet(fe,'vox rmse');


%% weights

