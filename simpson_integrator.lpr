(* simpson_integrator.lpr -- Main program.
 * Copyright (C) 2025 Avishek Gorai <avishekgorai@myyahoo.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *)

PROGRAM simpson_integrator;

USES
  integrand;

VAR
    sum_of_odd_numbered_terms, sum_of_even_numbered_terms, interval_size, area, lower_limit, upper_limit : real;
    number_of_intervals, index : integer;

BEGIN
    read(lower_limit, upper_limit, number_of_intervals);

    interval_size := (upper_limit + lower_limit) / real(number_of_intervals);

    sum_of_odd_numbered_terms := 0.0;
    index := 2;
    WHILE index <= number_of_intervals DIV 2 DO
    BEGIN
        sum_of_odd_numbered_terms := sum_of_odd_numbered_terms + f(lower_limit + index * interval_size);
        index := index + 2
    END;

    sum_of_even_numbered_terms := 0.0;
    index := 1;
    WHILE index <= number_of_intervals DIV 2 - 1 DO
    BEGIN
        sum_of_even_numbered_terms := sum_of_even_numbered_terms + f(lower_limit + index * interval_size);
        index := index + 2
    END;

    area := f(lower_limit) + f(upper_limit) + 4.0 * sum_of_odd_numbered_terms + 2.0 * sum_of_even_numbered_terms;

    writeln(area)
END.

