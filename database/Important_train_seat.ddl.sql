SET sql_notes = 0;

USE SWP391;

SET @count = 0;
SET @current_carriage = NULL;

UPDATE train_seat AS ts
JOIN (
    SELECT
        ts.id_train_seat,
        tc.id_train,
        tc.id_train_carriage,
        @count := IF(@current_carriage = tc.id_train_carriage, @count + 1, 1) AS seat_number,
        @current_carriage := tc.id_train_carriage AS dummy
    FROM train_seat ts
    JOIN train_carriage tc ON ts.id_train_carriage = tc.id_train_carriage
    ORDER BY tc.id_train, tc.id_train_carriage, ts.id_train_seat
) AS seat_data
ON ts.id_train_seat = seat_data.id_train_seat
SET ts.code_train_seat = CONCAT(
    seat_data.id_train,
    ' - ',
    seat_data.id_train_carriage,
    ' - ',
    seat_data.seat_number
);

SET sql_notes = 1;