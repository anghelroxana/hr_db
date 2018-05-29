use hr
go

exec InsertAngajatNou @Nume = 'Cotiga', 
					  @Prenume = 'Anca',
					  @Gen = 'f',
					  @DataNasterii = '1985-06-13',
					  @DataInceperiiContract = '2018-02-01',
					  @Adresa = 'Strada Baltagului 18',
					  @IdManager = null,
					  @IdDepartament = 3,
					  @CodFunctie = 'P003';