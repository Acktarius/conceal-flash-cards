const { app, BrowserWindow } = require('electron')

const createWindow = () => {
    const compactWin = new BrowserWindow({
      width: 900,
      height: 680,
      webPreferences: {
        preload: 'http://localhost:5023/Conceal-Network'
      }
    })
  
    compactWin.loadURL('http://localhost:5023/Conceal-Network')
  }
//opening
  app.whenReady().then(() => {
    createWindow()

    app.on('activate', () => {
        if (BrowserWindow.getAllWindows().length === 0) createWindow()
      })

  })
//closing (window or Linux)
  app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') app.quit()
  })