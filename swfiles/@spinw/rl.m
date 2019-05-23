function rlVect = rl(obj, norm)
% generates reciprocal lattice vectors
% 
% ### Syntax
% 
% `rlVec = rl(obj, {norm})`
% 
% ### Description
% 
% `rlVec = rl(obj, {norm})` returns the lattice vectors of the reciprocal
% lattice in a $[3\times 3]$ matrix, with the $a^*$, $b^*$ and $c^*$ vectors
% stored in **rows**. 
%
% 
% ### Examples
% 
% To convert from reciprocal lattice unit to \\ang$^{-1}$ ($xyz$
% Cartesian coordinate system) use: (`Q_rlu` is a row vector with 3
% elements):
%
% ```
% Q_xyz =  Q_rlu * rlVect
% ```
% 
% ### Input Arguments
% 
% `obj`
% : [spinw] object.
% 
% `norm`
% : If `true`, the basis vectors are normalized to 1. Default values is
% `false`, optional.
% 
% ### Output Arguments
% 
% `rlVec`
% : Stores the three basis vectors in the rows of matrix with dimensions of
%   $[3\times 3]$.
% 
% ### See Also
% 
% [spinw] \| [spinw.abc] \| [spinw.basisvector]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

rlVect = 2*pi*inv(obj.basisvector); %#ok<MINV>

if nargin == 1
    norm = false;
end

if norm
    rlVect = bsxfun(@rdivide,rlVect,sqrt(sum(rlVect.^2,2)));
end

end