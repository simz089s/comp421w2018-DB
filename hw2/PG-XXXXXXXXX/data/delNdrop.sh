psql cs421 --echo-all <<-END 2>&1 | tee delNdrop.log

DROP TABLE student;
DROP TABLE enroll;
DROP TABLE courseoffer;
DROP TABLE course;

END
