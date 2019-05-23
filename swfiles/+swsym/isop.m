function result = isop(symOp)
% determines if a matrix is symmetry operator
% 
% ### Syntax
% 
% `result = swsym.isop(op)`
% 
% ### Description
% 
% `result = swsym.isop(op)` determines whether the given matrix has
% dimensions that is compatible with the size requirements of space group
% operators. The given `op` matrix has to have dimensions of $[3\times
% 4\times n_{op}]$. The function returns `true` only if the input has these
% dimensions.
%
% ### See Also
% 
% [swsym.generator] \| [swsym.operator]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

if nargin == 0
    swhelp swsym.isop
    return
end

if size(symOp,1) == 3 && size(symOp,2) == 4
    result = true;
else
    result = false;
end

end