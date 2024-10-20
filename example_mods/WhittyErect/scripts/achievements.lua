function onUpdate()
    --This is usually when I want Achievements to activate during the song.
end

function onEndSong()
    --This is usually for Achievements that activate at the end of a song.
    if isStoryMode and songName == "ballistic" then
        unlockAchievement("back_alley_blues")
    end

    if songName == "ballistic" and misses <= 10 then
        unlockAchievement("ballistic_fingers")
    end
end