def unique_styles(music_styles)
    complete_array = []
    music_styles.map{ |e| e.split(',')}.each{ |m| complete_array.concat(m) }
    
    complete_array.uniq.size
end

p unique_styles(
    [
        "Dub,Dancehall",
        "Industrial,Heavy Metal",
        "Techno,Dubstep",
        "Synth-pop,Euro-Disco",
        "Industrial,Techno,Minimal"
      ]
)

p unique_styles([
    "Soul",
    "House,Folk",
    "Trance,Downtempo,Big Beat,House",
    "Deep House",
    "Soul"
  ])

p 