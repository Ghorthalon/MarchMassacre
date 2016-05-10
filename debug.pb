Global ok = 1
MessageRequester("info", "Initializing SAPI")
If TTSInit(0, 0, 0) = 0
ok = 0
MessageRequester("Debugger", "Sapi is not working")  

EndIf
MessageRequester("info", "Initializing Network")
If InitNetwork() = 0
ok = 0
  MessageRequester("Debugger", "Your Network is not available")  
EndIf
MessageRequester("info", "Initializing Sound")
If InitSound() = 0
ok = 0
  MessageRequester("Debugger", "Your sound is not initializing")
EndIf
MessageRequester("info", "Initializing Keyboard")

If InitKeyboard() = 0
ok = 0
  MessageRequester("Debugger", "error grabbing Keyboard")
EndIf
MessageRequester("info", "Initializing Sprite system")
If InitSprite() = 0
ok = 0
  MessageRequester("Debugger", "the Sprite system couldn't be loaded")
EndIf
If ok = 1
  MessageRequester("Info", "everything seems to work fine")
EndIf
End
  
; IDE Options = PureBasic 4.61 (Windows - x86)
; EnableOnError
; Executable = ..\..\debug.exe
; Compiler = PureBasic 4.61 (Windows - x86)
; Debugger = Console
; EnablePurifier