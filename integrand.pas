(* integrand.pas -- This unit contains the function to be integrated.
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

UNIT integrand;

INTERFACE

FUNCTION f(x : real) : real;

IMPLEMENTATION

FUNCTION f(x : real) : real;

    FUNCTION tan(x : real) : real;

    BEGIN
        tan := sin(x) / cos(x)
    END;

BEGIN
    f := x * tan(x)
END;

END.

