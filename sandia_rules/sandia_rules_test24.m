function sandia_rules_test24 ( )

%*****************************************************************************80
%
%% SANDIA_RULES_TEST24 tests LEVEL_TO_ORDER_DEFAULT.
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    11 February 2010
%
%  Author:
%
%    John Burkardt
%
  fprintf ( 1, '\n' );
  fprintf ( 1, 'SANDIA_RULES_TEST24\n' );
  fprintf ( 1, '  LEVEL_TO_ORDER_DEFAULT uses a default rule to\n' );
  fprintf ( 1, '  determine the order of a rule from its level.\n' );
  fprintf ( 1, '\n' );
  fprintf ( 1, 'RULE/LEVEL   0     1     2     3     4     5     6     7     8     9    10\n' );
  fprintf ( 1, '\n' );

  dim_num = 11;

  for r = 1 : 16
  
    rule(1:dim_num) = r;
    level(1:dim_num) = 0 : dim_num - 1;
    order = level_to_order_default ( dim_num, level, rule );

    fprintf ( 1, '  %4d  ', r );

    for dim = 1 : dim_num
      fprintf ( 1, '  %4d', order(dim) );
    end
    fprintf ( 1, '\n' );

  end

  return
end
