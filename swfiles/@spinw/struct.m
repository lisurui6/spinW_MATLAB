function objS = struct(obj)
% converts properties into struct
% 
% ### Syntax
% 
% `objS = struct(obj)`
% 
% ### Description
% 
% `objS = struct(obj)` converts all public properties of `obj` and saves
% them into `objS` struct.
% 
% ### See Also
% 
% [spinw] \| [spinw.copy]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

objS   = struct;
fNames = fieldnames(obj);
for ii = 1:length(fNames)
    objS.(fNames{ii}) = obj.(fNames{ii});
end

end % struct
