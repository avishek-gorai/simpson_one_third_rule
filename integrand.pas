UNIT integrand;

INTERFACE

    USES
        SysUtils;

    FUNCTION f(x : real) : real;

IMPLEMENTATION
    FUNCTION tan(x : real) : real;

    BEGIN
        tan := sin(x) / cos(x)
    END;

    FUNCTION f(x : real) : real;

    BEGIN
        f := x * tan(x)
    END;

END.

