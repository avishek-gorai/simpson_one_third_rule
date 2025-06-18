PROGRAM simpson_one_third_rule;

USES
    integrand;

VAR
    lower_limit, upper_limit, h, area, odd_terms_sum, even_terms_sum : real;
    n, index                                                         : 1 .. maxint;

BEGIN
    writeln('Enter lower limit, upper_limit and number of sub intervals:-');
    read(lower_limit, upper_limit, n);

    IF odd(n) THEN
      BEGIN
        writeln('Number of sub intervals must be even!')
      END
    ELSE
      BEGIN
        h := (upper_limit - lower_limit) / n;

        index := 1;
        odd_terms_sum := 0;
        WHILE index <= n - 1 DO
        BEGIN
            odd_terms_sum := odd_terms_sum + f(lower_limit + index * h);
            index := index + 2
        END;

        index := 2;
        even_terms_sum := 0;
        WHILE index <= n - 2 DO
        BEGIN
            even_terms_sum := even_terms_sum + f(lower_limit + index * h);
            index := index + 2
        END;

        area := h / 3.0  * (f(upper_limit) + f(lower_limit) + 4.0 * odd_terms_sum + 2.0 * even_terms_sum);
        writeln('Area = ', area)
      END
END.

