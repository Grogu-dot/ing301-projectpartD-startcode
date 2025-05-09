CREATE TABLE states (
	device TEXT NOT NULL,
	state REAL,
	CONSTRAINT states_pk PRIMARY KEY (device),
	CONSTRAINT states_devices_FK FOREIGN KEY (device) REFERENCES devices(id)
);

INSERT INTO states (device, state)
SELECT id, null 
FROM devices d
WHERE category = 'actuator';