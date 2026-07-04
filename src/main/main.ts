import { app } from "electron";
import { createYoutubeMusicWindow } from "./YoutubeMusic/YoutubeMusicWindow";

// awaiting app.whenReady() causes a deadlock
// Yes, this looks like an anti-pattern, but it works.
void app.whenReady().then(async () => {
  const PearDesktop = await createYoutubeMusicWindow()
})
