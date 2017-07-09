def song_decoder(song)
  no_wub_name = song.gsub 'WUB', ' '
  rem_spaces = no_wub_name
  puts rem_spaces.trim
end

song_decoder('WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB')
