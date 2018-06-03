

-- inserare manageri de departament
-- inserare CEO
exec InsertAngajatNou @Nume = 'Anitei', @Prenume = 'Dan', @Gen = 'm', @DataNasterii = '1970-03-12', @DataInceperiiContract = '2015-01-01',
					  @Adresa = 'Strada 18', @IdManager = null,  @IdDepartament = 1, @CodFunctie = 'A006';
-- inserare manageri administrare
exec InsertAngajatNou @Nume = 'Popa', @Prenume = 'Daniela', @Gen = 'f', @DataNasterii = '1980-03-12', @DataInceperiiContract = '2018-02-01',
					  @Adresa = 'Strada 18', @IdManager = 2,  @IdDepartament = 3, @CodFunctie = 'A003';

-- inserare manageri IT
exec InsertAngajatNou @Nume = 'Georgescu', @Prenume = 'Andreea', @Gen = 'f', @DataNasterii = '1980-01-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada 18', @IdManager = 2,  @IdDepartament = 2, @CodFunctie = 'P005';

use hr
go
exec InsertAngajatNou @Nume = 'Popescu', @Prenume = 'Tudor', @Gen = 'm', @DataNasterii = '1980-01-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada 18', @IdManager = 3,  @IdDepartament = 3, @CodFunctie = 'P005';

exec InsertAngajatNou @Nume = 'Maria', @Prenume = 'Angela', @Gen = 'f', @DataNasterii = '1980-01-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada 18', @IdManager = 2,  @IdDepartament = 4, @CodFunctie = 'P005';

exec InsertAngajatNou @Nume = 'Ionascu', @Prenume = 'Tiberiu', @Gen = 'm', @DataNasterii = '1970-02-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada Florilor', @IdManager = 2,  @IdDepartament = 5, @CodFunctie = 'C002';

exec InsertAngajatNou @Nume = 'Ionascu', @Prenume = 'Ioana', @Gen = 'f', @DataNasterii = '1970-02-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada Florilor', @IdManager = 2,  @IdDepartament = 9, @CodFunctie = 'S003';

exec InsertAngajatNou @Nume = 'Gheorghe', @Prenume = 'Ion', @Gen = 'm', @DataNasterii = '1975-12-01', @DataInceperiiContract = '2015-12-01',
					  @Adresa = 'Strada Florilor', @IdManager = 2,  @IdDepartament = 6, @CodFunctie = 'P005';
exec InsertAngajatNou @Nume = 'Piper', @Prenume = 'Ana', @Gen = 'f', @DataNasterii = '1981-12-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada Florilor', @IdManager = 10,  @IdDepartament = 7, @CodFunctie = 'P004';
exec InsertAngajatNou @Nume = 'Piper', @Prenume = 'Anda', @Gen = 'f', @DataNasterii = '1981-12-01', @DataInceperiiContract = '2016-12-01',
					  @Adresa = 'Strada Florilor', @IdManager = 10,  @IdDepartament = 8, @CodFunctie = 'P004';
