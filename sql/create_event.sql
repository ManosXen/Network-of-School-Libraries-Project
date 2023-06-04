use school_libraries;
SET GLOBAL event_scheduler = ON;

drop event if exists loan_overdue_event; 


delimiter //
CREATE EVENT loan_overdue_event
ON SCHEDULE EVERY 1 DAY
STARTS CONCAT(CURRENT_DATE, ' 23:59:00')
DO
  UPDATE loan
  SET loan_status = 'overdue'
  WHERE loan_status = 'loaned' AND return_date < NOW() - INTERVAL 1 WEEK;
//



delimiter //
CREATE EVENT cancel_reservation
ON SCHEDULE EVERY 1 DAY
STARTS CONCAT(CURRENT_DATE, ' 23:59:00')
DO
  UPDATE loan
  SET loan_status = 'declined'
  WHERE loan_status = 'reserved' AND last_status_update < NOW() - INTERVAL 1 WEEK;

 //
