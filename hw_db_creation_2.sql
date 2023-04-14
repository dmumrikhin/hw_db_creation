REATE TABLE IF NOT EXISTS Employee (
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(80) NOT NULL,
	department VARCHAR(80) NOT NULL
);

CREATE TABLE IF NOT EXISTS Managers (
	employee_id INTEGER REFERENCES Employee(employee_id),	
	manager_id INTEGER REFERENCES Employee(employee_id),
	CONSTRAINT pk PRIMARY KEY (employee_id, manager_id)
);
