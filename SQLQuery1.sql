--SELECT * FROM Genre;

--Using the INSERT statement, add one of your favorite artists to the Artist table.
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('GWAR', 1982);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
--SELECT * FROM Artist
--SELECT * FROM Genre
--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Scumdogs of the Universe', '1990', 3115, 'Metal Blade Records', 29, 5)

--Using the INSERT statement, add some songs that are on that album to the Song table.
--SELECT * FROM Artist WHERE ArtistName = 'GWAR';
--SELECT * FROM Genre WHERE Label = 'Heavy Metal';
--SELECT * FROM Album WHERE Album.Title = 'Scumdogs of the Universe';
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Slaughterama', 302, '1990', 5, 29, 24);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The Years Without Light', 178, '1990', 5, 29, 24);
--INSERT INTO Song VALUES ('Vlad the Impaler', 205, '1990', 5, 29, 24);

--SELECT a.Title, s.Title, b.ArtistName
--FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id
--LEFT JOIN Artist b ON s.ArtistId = b.Id
--WHERE a.Title = 'Scumdogs of the Universe';

--Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--select a.Title as 'Album Title', Count(*) as 'Number of Songs' 
--From Song s left join Album a on s.Albumid = a.Id Group By a.Title

--Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--select a.ArtistName as 'Artist', Count(*) as 'Number of Songs'
--From Song s left join Artist a on s.ArtistId = a.Id Group By a.ArtistName

--Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
--select g.Label as 'Genre', Count(*) as 'Number of Songs'
--From Song s left join Genre g on s.GenreId = g.Id Group By g.Label;

--select Album.Title, Album.AlbumLength
--from Album
--where Album.AlbumLength = (
--select Max(Album.AlbumLength)
--from Album);

--select Song.Title, Song.SongLength
--from Song
--where Song.SongLength = (
--select Max(Song.SongLength)
--from Song);

--select Song.Title, Song.SongLength, Album.Title
--from Song left join Album on Song.AlbumId = Album.Id
--where Song.SongLength = (
--select Max(Song.SongLength)
--from Song);








