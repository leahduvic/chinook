select Track.Name as "Track Title", Album.Title as "Album Name", MediaType.Name as "Media", Genre.Name as "Genre"
from Track
join MediaType on Track.MediaTypeId = MediaType.MediaTypeId
join Genre on Track.GenreId = Genre.GenreId
join Album on Track.AlbumId = Album.AlbumId;

