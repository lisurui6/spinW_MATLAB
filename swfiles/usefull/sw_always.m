function out = sw_always(inp)
% converts symbolic logical expressions into logical expressions
%
% out = SW_ALWAYS(inp)
%
% Use carefully, for undecided results return false without warning!
%
% Input:
%
% inp   Any symbolic/logical or numeric type matrix.
%
% Output:
%
% out   Logical output with the same dimensions as the input.
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

if isa(inp,'sym')
    out = isAlways(inp,'Unknown','false');
else
    out = logical(inp);
end

end