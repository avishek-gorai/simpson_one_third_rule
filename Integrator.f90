! Integrator.f90 -- This program implements Simpson's one third numerical integration rule.
! Copyright (C) 2025 Avishek Gorai <avishekgorai@myyahoo.com>

! This program is free software: you can redistribute it and/or modify
! it under the terms of the GNU General Public License as published by
! the Free Software Foundation, either version 3 of the License, or
! (at your option) any later version.

! This program is distributed in the hope that it will be useful,
! but WITHOUT ANY WARRANTY; without even the implied warranty of
! MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
! GNU General Public License for more details.

! You should have received a copy of the GNU General Public License
! along with this program.  If not, see <https://www.gnu.org/licenses/>.

PROGRAM simpson_integrator
  IMPLICIT NONE

  REAL upper_limit, lower_limit, area, sum_of_odd_numbered_terms, sum_of_even_numbered_terms, h
  INTEGER n, i

  ! Function
  REAL f

  PRINT *, "Enter upper limit, lower limit and number of sub-intervals: "
  READ *, upper_limit, lower_limit, n

  IF (mod(n, 2) /= 0) THEN
     PRINT *, "Number of intervals cannot be even!"
     n = n + 1
     PRINT *, "Taking n = ", n
  END IF

  h = (upper_limit - lower_limit) / n

  ! Calculating sum of odd numbered terms
  n = n / 2
  sum_of_odd_numbered_terms = 0.0
  DO i = 1, n, 2
     sum_of_odd_numbered_terms = sum_of_odd_numbered_terms + f(lower_limit + h * i)
  END DO

  ! Calculating sum of even numbered terms
  sum_of_even_numbered_terms = 0.0
  n = n - 1
  DO i = 2, n, 2
     sum_of_even_numbered_terms = sum_of_even_numbered_terms + f(lower_limit + h * i)
  END DO

  area = (f(lower_limit) + f(upper_limit) + 4.0 * sum_of_odd_numbered_terms + 2.0 * sum_of_even_numbered_terms) * h / 3.0

  PRINT *, "Area = ", area
END PROGRAM simpson_integrator
