function nco_triangle_test05 ( )

%*****************************************************************************80
%
%% TEST05 plots the NCO points in the unit triangle.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    30 January 2007
%
%  Author:
%
%    John Burkardt
%
  node_num = 3;
  node_show = 1;
  node_xy = [ ...
    0.0, 0.0; ...
    1.0, 0.0; ...
    0.0, 1.0 ]';
  point_show = 2;

  fprintf ( 1, '\n' );
  fprintf ( 1, 'TEST05\n' );
  fprintf ( 1, '  This routine creates an EPS plot of each\n' );
  fprintf ( 1, '  set of NCO points.\n' );
  fprintf ( 1, '\n' );

  rule_num = nco_triangle_rule_num ( 'DUMMY' );

  file_name = 'nco_triangle_rule_0.eps';

  for rule = 1 : rule_num

    file_name = file_name_inc ( file_name );

    order_num = nco_triangle_order_num ( rule );

    [ xy, w ] = nco_triangle_rule ( rule, order_num );

    triangle_points_plot ( file_name, node_xy, node_show, order_num, ...
      xy, point_show );

    fprintf ( 1, '  Rule %d plotted in "%s".\n', rule, file_name );

  end

  return
end
