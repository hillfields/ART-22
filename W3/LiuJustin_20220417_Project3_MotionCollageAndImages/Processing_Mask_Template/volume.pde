import ddf.minim.*;

Minim minim;
AudioInput in;

float s_volume;
float volume;

void setupVolume() {
  minim = new Minim(this);
  in = minim.getLineIn(Minim.MONO, 512);
}

void getVolume() {
  s_volume = in.right.level() * volumeScalar;

  float d_volume = s_volume - volume;
  if (abs(d_volume) > 0.01) {
    volume += d_volume * easing;
  }

  v = volume;
}


void stop() {
  in.close();
  minim.stop();
  super.stop();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == DOWN) {
      volumeScalar--;
    }
    if (keyCode == UP) {
      volumeScalar++;
    }
    volumeScalar = constrain(volumeScalar, 1, 100);
    println(volumeScalar);
  }
}
