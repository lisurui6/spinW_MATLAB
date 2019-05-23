function varargout = notwin(obj)
% removes all twins
% 
% ### Syntax
% 
% `notwin(obj)`
% 
% ### Description
% 
% `notwin(obj)` removes any crystallographic twin added using the
% [spinw.addtwin] function.
%  
% ### See Also
%
% [spinw.addtwin]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

obj.twin.vol = 1;
obj.twin.rotc = eye(3);

if nargout >0
    varargout{1} = obj;
end

end