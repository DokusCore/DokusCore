var Music = null;
var Sounds = null;
var Dialogs = null;
var Metabolism = null;
var CurVolume = 0;
const timer = ms => new Promise(res => setTimeout(res, ms))

window.addEventListener('message', function(event) {
  var Type = event.data.Type
  var Volume = event.data.Volume
  var File = event.data.File

  if (Type == "Sounds") {
    if (Sounds != null) { Sounds.pause(); }
    Sounds = new Howl({ src: ["./Sounds/ogg/Sounds/" +File+ ".ogg"] });
    Sounds.volume(Volume);
    Sounds.play();
  };

  if (Type == "Music") {
    if (Music != null) { Music.pause(); }
    Music = new Howl({ src: ["./Sounds/ogg/Music/" +File+ ".ogg"] });
    CurVolume = Volume;
    Music.volume(Volume);
    Music.play();
  } else if (Type == 'MusicFade') {
    FadeMusic()
  };

  if (Type == 'Metabolism') {
    if (Metabolism != null) { Metabolism.pause(); }
    Metabolism = new Howl({ src: ["./Sounds/ogg/Metabolism/" +File+ ".ogg"] });
    Metabolism.volume(Volume);
    Metabolism.play();
  };

  if (Type == "Dialogs") {
    if (Dialogs != null) { Dialogs.pause(); }
    Dialogs = new Howl({ src: ["./Sounds/ogg/Dialogs/" +File+ ".ogg"] });
    Dialogs.volume(Volume);
    Dialogs.play();
  };
});

async function FadeMusic() {
  var Decrease = (CurVolume / 5000)
  while (CurVolume >= 0.0002) {
    CurVolume = (CurVolume - Decrease)
    Music.volume(CurVolume)
    await timer(10)
  }

  Music.stop();
}
