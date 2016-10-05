function hh = even_stream_line(xy, varargin)
% function hh = even_stream_line(xy)
% function hh = even_stream_line(___, Name, Value)
%
% Plot evenly-spaced streamlines with Jobar & Lefer algorithm [1]
%
% Arguments:
%   xy: Matrix with columns [x, y], as produced by even_stream_data
%
% Optional Parameters (Name, Value):
%   'LineStyle': line style as in plot(), default = '-'
%   'LineWidth': line width as in plot(), default = 0.5
%   'Color': line color as in plot(), default = 'b'
%
% Returns:
%   hh = Graphics object for streamlines
%  
% References: 
% [1] Jobard, B., & Lefer, W. (1997). Creating Evenly-Spaced Streamlines of
%   Arbitrary Density. In W. Lefer & M. Grave (Eds.), Visualization in
%   Scientific Computing ?97: Proceedings of the Eurographics Workshop in
%   Boulogne-sur-Mer France, April 28--30, 1997 (pp. 43?55). inbook,
%   Vienna: Springer Vienna. http://doi.org/10.1007/978-3-7091-6876-9_5
% %

% handle inputs
parser = inputParser;
parser.CaseSensitive = false;
parser.PartialMatching = false;
parser.KeepUnmatched = false;

parser.addParameter('LineStyle', '-');
parser.addParameter('LineWidth', 0.5);
parser.addParameter('Color', 'b');
parser.addParameter('Verbose', false);

parser.parse(varargin{:});
line_style = parser.Results.LineStyle;
line_width = parser.Results.LineWidth;
line_color = parser.Results.Color;

% create plot
hh = plot(xy(:,1), xy(:,2), ...
    'LineStyle', line_style, 'LineWidth', line_width, 'Color', line_color);