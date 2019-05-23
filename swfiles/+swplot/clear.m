function clear(varargin)
% clears swplot figure
% 
% ### Syntax
% 
% `swplot.clear`
%
% `swplot.clear(hFigure)`
% 
% ### Description
% 
% `swplot.clear` clears the active swplot figure.
%
% `swplot.clear(hFigure)` clears the swplot figure correspondign to
% `hFigure` handle
%  
% ### See Also
% 
% [swplot.figure]
%

% $Name: SpinW$ ($Version: 3.1$)
% $Author: S. Tóth and S. Ward$ ($Contact: admin@spinw.org, @spinw4 on Twitter$)
% $Revision: 1591$ ($Date: 25-Apr-2019$)
% $License: GNU GENERAL PUBLIC LICENSE$

swplot.delete(varargin{:},0)

end