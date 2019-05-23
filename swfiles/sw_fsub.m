function cGraph = sw_fsub(conn, ~)
% simple graph vertex coloring
% 
% ### Syntax
% 
% `cgraph = sw_fsub(conn, next)`
% 
% ### Description
% 
% `cgraph = sw_fsub(conn, next)` creates a simple graph vertex coloring,
% determines non-connected sublattices for Monte-Carlo calculation.
% 
% ### Input Arguments
% 
% `conn`
% : Contains edge indices which are connected
%   `conn(1,idx)-->conn(2,idx)` stored in a matrix with dimensions of $[2times n_{conn}]$.
% 
% `nExt`
% : Size of the magnetic supercell in a row vector with 3 integers.
% 
% ### Output Arguments
% 
% `cGraph`
% : Vector, that assigns every magnetic moment to a sublattice.
% 
% ### See Also
% 
% [spinw.anneal]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

if nargin == 0
    swhelp sw_fsub
    return
end

nEdge  = max(max(conn));
cGraph = zeros(1,nEdge);

for ii = 1:nEdge
    idx = [conn(2,conn(1,:)==ii) conn(1,conn(2,:)==ii)];
    
    cNeigh = cGraph(idx);
    cIdx = 1;
    while any(cNeigh==cIdx)
        cIdx = cIdx + 1;
    end
    cGraph(ii) = cIdx;
end

end