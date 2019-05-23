function rootdir = sw_rootdir
% path to the SpinW folder
% 
% ### Syntax
% 
% `rootdir = sw_rootdir`
% 
% ### Description
% 
% `rootdir = sw_rootdir` returns the parent folder of the `swfiles` folder.
% 
% ### See Also
% 
% [spinw]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

rootdir = mfilename('fullpath');
idx     = strfind(rootdir,filesep);
rootdir = rootdir(1:idx(end-1));

end