import { BrowserWindow } from "electron";

export async function createYoutubeMusicWindow() {
  const window = new BrowserWindow({})

  await window.loadURL("https://music.youtube.com")
}
