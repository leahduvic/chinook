SELECT count(PlaylistTrack.trackId) as "total tracks",  Playlist.Name as "Playlist"
from PlaylistTrack, Playlist
where Playlist.PlaylistId == PlaylistTrack.PlaylistId
group by playlist.name;
