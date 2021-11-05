SELECT client_number as client, 
                                SUM(outcome = "win") as win, 
                                SUM(outcome = "lose") AS lose 
                        FROM bid
                        INNER JOIN event_value
                        ON bid.play_id = event_value.play_id
                        WHERE bid.coefficient = event_value.value
                        GROUP BY client_number