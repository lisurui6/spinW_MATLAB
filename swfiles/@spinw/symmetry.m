function sym = symmetry(obj)
% returns whether symmetry is defined
% 
% ### Syntax
% 
% `sym = symmetry(obj)`
% 
% ### Description
% 
% `sym = symmetry(obj)` returns `true` if equivalent couplings are
% generated based on the crystal space group and all matrices (interaction,
% anisotropy and g-tensor) are transformed according to the symmetry
% operators. If `false`, equivalent couplings are generated based on bond
% length, equivalent matrices won't be transformed (all identical).
%  
% To switch between the two behaviour use [spinw.gencoupling] with the
% `forceNoSym` parameter set to `true`. To remove all symmetry operators
% use [spinw.nosym].
% 
% ### See Also
% 
% [spinw] \| [spinw.nosym] \| [spinw.gencoupling]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

sym = obj.sym;

end