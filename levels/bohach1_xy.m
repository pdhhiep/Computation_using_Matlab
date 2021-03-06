function f = bohach1_xy ( x, y )

%*****************************************************************************80
%
%% BOHACH1_XY evaluates the Bohachevsky function #1.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    09 February 2008
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Zbigniew Michalewicz,
%    Genetic Algorithms + Data Structures = Evolution Programs,
%    Third Edition,
%    Springer Verlag, 1996,
%    ISBN: 3-540-60676-9,
%    LC: QA76.618.M53.
%
%  Parameters:
%
%    Input, real X, Y, the argument of the function.
%
%    Output, real F, the value of the function at X.
%
  f =       x * x - 0.3 * cos ( 3.0 * pi * x ) ...
    + 2.0 * y * y - 0.4 * cos ( 4.0 * pi * y ) ...
    + 0.7;

  return
end
