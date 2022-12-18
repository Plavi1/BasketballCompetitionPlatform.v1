/* FAST SEEDING DATA FOR TESTING PURPOSE   */

if not exists (select 1 from dbo.[tblTeam])
begin
	insert into dbo.[tblTeam] (TeamName, PlaceThatTheTeamRepresents, PasswordHash, ContactPhone, Player1, Player2, Player3, Player4, Player5, AverageAge, DateOfRegistration, Points, IsInTopTeams )
	values ('Tim23', 'Surcin', 'nmfAsdsadkjgd23', '064313245', 'Mirko', 'Slavko', 'Jovan', 'Uros', NULL, 24, '2022-6-4', 0, 0),
	('Druzina', 'Dobanovci', 'Kdsajfurkjgd223', '0674322245', 'Nemanja', 'Milos', 'Stefan', 'Dragan', NULL, 34, '2022-6-5', 0, 0),
	('Beraci Pamuka', 'Ugrinovci', 'nmKKFODAIssdw13', '0621134245', 'Vuk', 'Jovan', 'Momcilo', NULL , NULL, 20, '2021-6-5', 0, 0),
	('Beda iz predgradja', 'Dobanovci', 'nLosrhgreuda23', '063323213245', 'Vlada', 'Vukoman', 'Vuk', 'Pedja', 'Milan', 21, '2022-6-14', 0, 0),
	('KK Mega', 'Ugrinovic', 'amlkdlkhgd23', '0656543645', 'Zarko', 'Marko', 'Srdjan', 'Zdravko', NULL, 36, '2022-6-10', 0, 0),
	('Padavicari', 'Surcin', 'cmfdsafsagfadkjgd23', '06254235311', 'Igor', 'Nikola', 'Jovan', 'Predrag', 'Zoran', 41, '2022-6-14', 0, 0),
	('Virtus', 'Dobanovic', 'smfgfdsgdgd23', '063454353277', 'Milorad', 'Pavle', 'Srdjan', 'Dragan', 'Goran', 26, '2022-6-15', 0, 0),
	('Tim33', 'Ugrinovci', 'rmfasgfdadkgjgd23', '06943242099', 'Predrag', 'Jovan', 'Mateja', 'Janko', NULL, 19, '2022-6-11', 0, 0),
	('Sokic', 'Dobanovci', 'pmfAsdfdasf3423', '06694395333', 'Kristofer', 'Branko', 'Bojan', NULL, NULL, 22, '2022-6-10', 0, 0)
end
