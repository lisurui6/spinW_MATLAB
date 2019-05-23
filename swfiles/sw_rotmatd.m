function rotM = sw_rotmatd(rotAxis, rotAngle)
% generates 3D rotation matrix
% 
% ### Syntax
% 
% `R = sw_rotmatd(rotAxis,rotAngle)`
%
% ### Description
% 
% `R = sw_rotmatd(rotAxis,rotAngle)` produces the `R` rotation matrix, for
% identically to [sw_rotmat], except that here the unit of `rotAngle` is
% \\deg.
%
% ### See Also
%
% [sw_rotmat] \| [sw_rot]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

if nargin==0
    swhelp sw_rotmatd
    return
end

[~, rotM] = sw_rot(rotAxis,rotAngle*pi/180);

end