function daub8_scale_plot ( n )

%*****************************************************************************80
%
%% DAUB8_SCALE_PLOT plots the DAUB8 scaling function.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    01 August 2011
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer N, the recursion level.
%
  x = linspace ( 0.0, 8.0, 801 );

  y = daub8_scale ( n, x );

  plot ( x, y, 'LineWidth', 2 );

  grid on
  xlabel ( '<---X--->' );
  ylabel ( '<---Y--->' );
  title ( sprintf ( 'DAUB8 Scale Function, Recursion level n = %d', n ) );

  return
end
