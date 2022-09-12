PROGRAM main
	IMPLICIT NONE
	INTEGER :: io, level, i
	CHARACTER(len = 7000) :: str

	PRINT *, "Part one:"
	OPEN(newunit=io, file="input.txt", status="old", action="read")
	READ(io, *) str
	DO i = 0, 7000
		IF (str(i:i) .eq. '(') THEN
			level = level + 1
		ELSE IF (str(i:i) .eq. ')') THEN
			level = level - 1
		ENDIF
	ENDDO
	PRINT *, level
	CLOSE(io)
	level = 0

	PRINT *, "Part two:"
	OPEN(newunit=io, file="input.txt", status="old", action="read")
	READ(io, *) str
	DO i = 0, 7000
		IF (str(i:i) .eq. '(') THEN
			level = level + 1
		ELSE IF (str(i:i) .eq. ')') THEN
			level = level - 1
		ENDIF
		IF (level < 0) THEN
			level = i
			EXIT
		ENDIF
	ENDDO
	PRINT *, level
	CLOSE(io)

END PROGRAM main
