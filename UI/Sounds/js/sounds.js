var Player = null;
window.addEventListener('message', function(event) {
  if (event.data.Type == "Play") {
    if (Player != null) { Player.pause(); }
    Player = new Howl({ src: ["./Sounds/ogg/" + event.data.File + ".ogg"] });
    Player.volume(event.data.Volume);
    Player.play();
  }
});
