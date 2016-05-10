EnableExplicit
Structure Ship
  x.f
  y.f
  StayFrames.l
  Shot.l
  Shotframes.l
  Cloaked.l
  CloakedFrames.l
  Direction.f
  speed.f
  hp.f
  spawnFrame.l
  ToRespawn.l
  type.l
  active.l
  sounds.l[10]
  EndStructure
  Structure player
    hp.l
    x.f
    speed.f
    laser.f
    sounds.l[10]
  EndStructure
  TTSInit(0, 0, 0)
  
  Global networkavailable = InitNetwork()
  InitSound()
  InitKeyboard()
  ;InitSprite()
  ;OpenScreen(640, 480, 16, "March Massacre - Attack   from Space")
  OpenWindow(0, 280, 280, 300, 300, "March Massacre - Attack From Space", #PB_Window_ScreenCentered)
  Global Dim Story.s(10)
  Story(1) = "Jerry Mcminn was working as a programmer for a small company, specializing in games. His income wasn't perfect, but hey, he accepted it, and plus he liked the job. There was nothing that could ever rip him from it. But one day, on the 1st of april, 2355, everything took a turn on him. As he was walking home, he noticed a strange shadow high, high up in the sky. He wasn't the only one to notice, as many people ran screaming out of their houses. Jerry didn't know what was going on, so he decided to ask a friend of his. He found out, that other lifeforms have been discovered in space, heading right towards them. 'Why didn't I know about this?', Jerry asked. 'You were at work. It was just on the news, it must have just happened', his friend said. 'And now, they're looking For volunteers To try To come up With a way To get rid of those, umm, things', he added. Jerry was always looking for action, and this sounded like a special opportunity to get it. 'Where can I apply?|, he asked. 'Town hall', replied his friend, who was already running towards his car. Jerry had no intention To go. Instead, he started jogging towards the town hall, ready To do whatever it took To get rid of those things. What were they? He thought To himself. Those things, what are they? And, why are they heading For us? And, what can we do To stop it? Or, possibly, are they friendly?. He didn't know anything, and as he arived and spoke to a few people, he didn't know more. No one seemed To know. The discussion went on For hours, As everyone speculated on what To do. A loud boom, sounding rather close, is what shook everyone up. Jerry looked out a window And saw a lot of rebble, where the big shopping mall used To be. He immediately knew what was going on. 'Guys, we need to stop them! Hello? Anyone here?'. As he turned around, he saw the last few heading into the underground bunkers. He ran, trying To follow, but As he arived the door was closed. He started pounding on the door, but gave up, after he heard another loud boom. He wasn't getting in. He looked around, trying to find something, trying to gather ideas. And then an idea hit him. He ran outside, and towards his house. He could see more and more dark shadows moving along the sky. And as one of them began to drop downwards, towards him, he saw what it was. It looked like a starship, something he had seen on the TV, and something like they at science were trying to create for human use. Since Jerry was a hobby technician, he knew how to build his own weaponary. A few years ago, he managed to destroy his garden house with an experiment, which he wanted to be a laser. after a bit of work, he had re-created it. But he wasn't sure If it would reach far enough. After a bit of playing, he found out that he could increase it's range, by adding and modifying it's electrical current And parts. But the source would be a problem. A standard wall outlet wouldn't be enough. He ran through the city, trying to find a high-power transfer. And as he did, and hooked his construction up, he noticed it was enough. Now, he had to test it. Use left, and right arrows, to aim. Hold down the control key to charge your laser. Let go, to fire."
  Story(2) = "It was soon that Jerry noticed more, and more ships flying towards him. But up to now, he had only seen one type. They all looked similar, and were easy to get rid of. Now, however, he now saw a new kind of ship. It looked bigger, and tougher. And it didn't prove him wrong."
  Story(3) = "Jerry was certain he had raged their race, but he didn't care. After all, he wasn't the one who started attacking. Though suddenly, he heard a voice. 'Rah, takisqura March Massacre. Fquazyroth fhakiera vwoah tako quopa. Niki hyo, tako ju hua.'. He didn't understand. 'English, please?', he asked. What was that language of theirs? He wasn't sure. 'Our name March Massacre', the voice said. 'March? Hell, it's april!', he responded. 'No interupt! We here to take back what has been taken from us'. 'What?', he didn't understand. Who had taken what from who? 'Space was ours before', the voice continued. 'Before you took'. 'I didn't take anything!', he replied, a bit clueless, but the voice stayed silent. 'Listen, guys: I have no idea who took what, but I damn hell have nothing to do with it!'. Everything stayed silent, until he saw more ships dropping towards him. 'Stop this!', he shouted. 'Why are you sacrificing this stuff to?'. It was only then that he noticed the ships moved out of line and started going in circles, making it harder to aim. But he was prepared."
  Story(4) = "'You anger us!', the voice had finally returned. 'Stop resistance!'. 'I'll stop resistance, once you stop messing up!', Jerry replied, now in rage. 'Look, everyone left, I'm the only one in this god damned city to defend it.'. 'Then stop!', the voice replied. 'No!'. Jerry was certain. How far he had come, wouldn't let him stop. if he got this far, he could go further. The number of ships kept increasing. if it kept up, it would become impossible to keep up. He noticed, that if he aimed at the newest types of ships, they would disappear. 'Aaah, hell!'."
  Story(5) = "'You do, we do too!'. Jerry didn't understand what the voice just said. But he was certain it wasn't good. 'Yu do what?'. As he continued firing at ships, he noticed that they were also aiming for him. He jumped out of the way, just as a shot from one of the ships smashed into the ground next to him. 'Ah, hell!'." 
  Story(6) = "You, the player, are noticing that the storyline sucks. And I, , Ghorthalon, I'm chuckling. I'm sure you can guess why. Oh, come on, it's obvious. Yes. All this advertising was for,. an April fools joke!. What you are actually playing is a little space invader, thrown together in less than 5 hours. Hahahaha! You can now continue playing forever, until you die. Have fun! Enjoy!"
  Story(7) = "It became too many. Jerry couldn't keep up. Soon, there were too many ships for him to fire at. He tried to escape, running. But one ship hit him. He fell to the ground, pain filling his entire body. The last seconds he was alive, he thought of what he had done, and what would happen to the world in the future. And to the people in the underground bunkers."
  Story(8) = "Jerry was fast, fast indeed. However, so were they. The shots, they stang like bullets. Worse than that. He couldn't stand anymore. He fell, unable to keep fighting. The last seconds he was alive, he thought of what he had done, and what would happen to the world in the future. And to the people in the underground bunkers."
  Declare ShowLogos()
  Declare Showscore()
  Declare HandleMenu()
  Declare KillAllOnScreen()
  Declare Checklevel()
  Declare ReadMenu()
Declare Showmenu(file.s, Music2Play.s)
Declare ShowText(Text.s, Music2Play.s)
Declare Distance(x1.f, x2.f)
Declare CheckRadar()
Declare Die(*value.ship)
Declare Hit(*value.ship, Strength)
Declare PanSounds()
Declare CheckKeyboard()
Declare generate_pan(Listener_X.f, Listener_Y.f, source_X.f, source_Y.f, PanStep.f, VolumeStep.f, SoundHandle.l)
Declare HandleAI()
Declare Shoot_Init()
Declare Shoot_Release()
Declare MoveLeft()
Declare MoveRight()
Declare InitGame()
Declare GameLoop()
Declare Spawn(*Value.ship)
Declare Land(*value.ship)

ShowLogos()
HandleMenu()



Procedure HandleMenu()
  Global Musicvolume = 10
  Global Result = ShowMenu("main", "Menu")  
If Result = 1 : InitGame() : EndIf
If Result = 2
  Global TempSound = LoadSound(#PB_Any, "Sounds/misc/Speakertest.wav")
  PlaySound(TempSound)
  Delay(1380)
  FreeSound(TempSound)
HandleMenu()    
EndIf
If Result = 3
  If networkavailable <> 0
  TTSStop()
  TTSSpeak("Checking for downloadable content")
  Delay(Random(5000)+2000)
  Global tempSound = LoadSound(#PB_Any, "Sounds/misc/M_Unavailable.wav")
  PlaySound(TempSound)
  TTSSpeak("No downloadable content available to you. Go play some more!")

Else
  Global tempSound = LoadSound(#PB_Any, "Sounds/misc/M_Unavailable.wav")
  PlaySound(TempSound)
  TTSSpeak("Your connection is offline.")
EndIf
Delay(1000)
HandleMenu()
EndIf
  If Result = 4
  ShowText("The game is simple to play. The keystrokes mostly used are left and right, to move left and right. Hold down Control, to charge the laser. Release control, to fire the laser. Pressing R will activate the radar. It will beep whenever you are in range of shooting. Other keystrokes are explained as they are needed.", "S2")
HandleMenu()    
EndIf
If Result = 5
  End

EndIf

EndProcedure
  Procedure InitGame()
  Global Level = 1
  Global StoryPart = 0
  Global RadarON = 0  
  Global Powerupplaying = 0
  Global ShootFramesTotal = 0
  Global Radarcheck = 0  
  Global landed = 0
  Global EnemyPerlevel = 1
  Global Freq = 35000
  Global ShootFrame = 0
  Global Music = LoadSound(#PB_Any, "Sounds/music/game1.wav")
  ;SoundFrequency(Music, freq)
  Global me.player  
Global Dim enemy.ship(1000)
Global Kills=0
Global Level=0
Global ToSpawn=1
Global MusicVolume=20
Global I = 0
For i = 1 To 1000
  Enemy(i)\active = 0
Next
me\speed = 0.5
me\laser = 0
me\sounds[1] = LoadSound(#PB_Any, "sounds/amb/ambience.wav")
me\sounds[2] = LoadSound(#PB_Any, "sounds/laser/laserpowerup.wav")
me\sounds[3] = LoadSound(#PB_Any, "sounds/laser/laser1.wav")
me\sounds[4] = LoadSound(#PB_Any, "sounds/laser/laser2.wav")  
me\sounds[5] = LoadSound(#PB_Any, "sounds/laser/laser3.wav")  
me\sounds[6] = LoadSound(#PB_Any, "sounds/laser/laser4.wav")  
me\sounds[7] = LoadSound(#PB_Any, "sounds/laser/laser5.wav")  
me\sounds[8] = LoadSound(#PB_Any, "sounds/laser/laser6.wav")  
me\sounds[9] = LoadSound(#PB_Any, "sounds/misc/radar.wav")
me\hp = 10

    
PlaySound(Music, #PB_Sound_Loop)
PlaySound(me\sounds[1], #PB_Sound_Loop)
SoundVolume(music, MusicVolume)

GameLoop()
EndProcedure
Procedure GameLoop()
  
  Repeat
    ExamineKeyboard()
    CheckKeyboard()
    HandleAI()
    PanSounds()
    CheckLevel()
    If RadarON = 1 : CheckRadar() : EndIf
    Delay(16)
  WaitWindowEvent(1)  
  ForEver
    EndProcedure
    Procedure CheckLevel()
      If Landed = 0 And StoryPart = 0
        KillAllOnscreen()
        ShowText(Story(1), "s5")
        StoryPart = 1
      EndIf
      If Kills > 25 And Storypart = 1
        KillAllOnscreen()
        ShowText(Story(2), "S5")
        StoryPart = 2
        Global ToSpawn = 2
      EndIf
      If Kills > 50 And Storypart = 2
        KillAllOnscreen()
        Showtext(Story(3), "S6")
        Storypart = 3
        Enemyperlevel = 2
        ToSpawn = 3
      EndIf
      If Kills > 80 And Storypart = 3
        KillAllOnscreen()
        ShowText(Story(4), "S6")
        Storypart = 4
        EnemyPerlevel = 5
        ToSpawn = 4
      EndIf
      If Kills > 130 And Storypart = 4
        KillAllOnscreen()
        ShowText(Story(5), "S6")
        Storypart = 5
        EnemyperLevel = 5
        ToSpawn = 5
      EndIf
      If Kills > 180 And Storypart = 5
        
        KillAllOnscreen()
        ShowText(Story(6), "S3")
        level = Kills
        Storypart = 7
        FreeSound(Music)
        music = LoadSound(#PB_Any, "Sounds/music/Game.wav")
        SoundVolume(Music, MusicVolume)
        SoundFrequency(Music, Freq)
      PlaySound(Music, #PB_Sound_Loop)  
      EndIf
      If Storypart = 7
        
        If Kills = Level+5
          freq + 2000
          SoundFrequency(Music, Freq)
          Level = Kills
        EnemyPerlevel + 1  
        EndIf
        EndIf
        If Landed > 20
          KillAllOnscreen()
          ShowText(Story(7), "S4")
          ShowScore()
          HandleMenu()
      EndIf
      If me\hp <= 0
        KillAllOnscreen()
        ShowText(Story(8), "Gameover")
        ShowScore()
        HandleMenu()
      EndIf
      EndProcedure
        Procedure CheckKeyboard()
          If KeyboardReleased(#PB_Key_F12)
            Enemyperlevel = 5
            Tospawn=5
            Kills = 180
            Storypart = 5
        

      EndIf
          If KeyboardReleased(#PB_Key_L) : TTSStop() : TTSSpeak(Str(landed) + " ships landed") : EndIf
          If KeyboardReleased(#PB_Key_H) : TTSStop() : TTSSpeak("Your health: " + Str(me\hp)) : EndIf
          If KeyboardReleased(#PB_Key_S) : TTSStop() : TTSSpeak("Ships killed: " + Str(Kills)) : EndIf
          If KeyboardReleased(#PB_Key_R)
        If RadarON = 0
          RadarON = 1
          Global TempSound = LoadSound(#PB_Any, "sounds/misc/RadarOn.wav")
          PlaySound(TempSound)
        Else
          RadarON = 0
          Global TempSound = LoadSound(#PB_Any, "sounds/misc/RadarOff.wav")
          PlaySound(TempSound)
          EndIf
          EndIf
          If KeyboardPushed(#PB_Key_PageUp) : If MusicVolume < 100 : MusicVolume + 1 : SoundVolume(music, MusicVolume) : EndIf : EndIf
            If KeyboardPushed(#PB_Key_PageDown) : If MusicVolume > 0 : MusicVolume - 1 : SoundVolume(music, MusicVolume) : EndIf : EndIf
      If KeyboardPushed(#PB_Key_Left) : MoveLeft() : EndIf
      If KeyboardPushed(#PB_Key_Right) : MoveRight() : EndIf
      If KeyboardPushed(#PB_Key_RightControl) : Shoot_Init() : EndIf
      If KeyboardReleased(#PB_Key_RightControl) : Shoot_release() : EndIf
      If KeyboardReleased(#PB_Key_Escape) : KillallonScreen() : ShowScore() : HandleMenu() : EndIf
    EndProcedure
    Procedure HandleAI()
      
      For i = 1 To EnemyPerLevel
        If Enemy(i)\active = 0
          Enemy(i)\spawnFrame + 1
          If Enemy(i)\spawnframe > Enemy(i)\torespawn : Spawn(Enemy(i)) : EndIf
        EndIf
        If Enemy(i)\active = 1
          If Enemy(i)\type = 1
            Enemy(i)\y - Enemy(i)\speed
            If Enemy(i)\y < 0 : Land(Enemy(i)) : EndIf
          EndIf
          If Enemy(i)\type = 2
            Enemy(i)\y - Enemy(i)\speed
            If Enemy(i)\y < 0 : Land(Enemy(i)) : EndIf
          EndIf
          
          If Enemy(i)\type = 3
            If Enemy(i)\x < 1 : Enemy(i)\direction = Enemy(i)\speed : EndIf
            If Enemy(i)\x > 19 : Enemy(i)\direction = Enemy(i)\speed * -1 : EndIf
            
            Enemy(i)\x + Enemy(i)\direction
            Enemy(i)\y - Enemy(i)\speed
            If Enemy(i)\y < 1 : Land(Enemy(i)) : EndIf
          EndIf
                

          If Enemy(i)\type = 4
            Enemy(i)\y - Enemy(i)\speed
            If Enemy(i)\y < 0 : Land(Enemy(i)) : EndIf
            If Enemy(i)\cloaked = 0
            If Distance(me\x, Enemy(i)\x) = 1
              Enemy(i)\stayframes + 1
              
              If Enemy(i)\stayframes > 20
                Enemy(i)\x = Random(19)+1
                Enemy(i)\stayframes = 0
                StopSound(Enemy(i)\sounds[1])
                PlaySound(Enemy(i)\sounds[5])
              Enemy(i)\cloakedframes = 0  
            Enemy(i)\cloaked = 1  
            EndIf
            EndIf
            EndIf
            If Enemy(i)\cloaked = 1
              Enemy(i)\cloakedframes + 1
              If Enemy(i)\cloakedframes > 200
                If Enemy(i)\active = 1
                Enemy(i)\cloaked = 0
                PlaySound(Enemy(i)\sounds[1], #PB_Sound_Loop)
                PlaySound(Enemy(i)\sounds[6])
              EndIf
            EndIf
            EndIf
            EndIf
            If Enemy(i)\type = 5
                      
                      Enemy(i)\y - Enemy(i)\speed
            If Enemy(i)\y < 0 : Land(Enemy(i)) : EndIf
            If Distance(me\x, Enemy(i)\x) = 1
              Enemy(i)\stayframes + 1
              
             If Enemy(i)\stayframes > 40
                                Enemy(i)\stayframes = 0
                
                PlaySound(Enemy(i)\sounds[7])
                Enemy(i)\shot = 1
                Enemy(i)\shotframes = 0
              EndIf
            EndIf
            If Distance(me\x, Enemy(i)\x) = 0 : Enemy(i)\stayframes = 0 : Enemy(i)\shot = 0        :  EndIf
            If Enemy(i)\shot = 1
              Enemy(i)\shotframes + 1
              If Enemy(i)\shotframes > 20
                If Distance(me\x, Enemy(i)\x) = 1
                PlaySound(Enemy(i)\sounds[8])
                me\hp - 10
                Enemy(i)\stayframes = 0
                Enemy(i)\shot = 0
              EndIf

            
            EndIf
          
          EndIf
            ;EndIf
          ;EndIf  
        EndIf
          EndIf
          
        Next
        EndProcedure
        Procedure Spawn(*value.ship)
          
          Global SpawnVar = Random(ToSpawn-1)+1
          
          If Spawnvar = 1
            *Value\x = Random(48)+1
            *Value\y = 10
            *value\speed = 0.01
            *value\hp = 1
            *value\type = 1
            *value\spawnframe = 0
            *value\active = 1
            *value\sounds[1] = LoadSound(#PB_Any, "sounds/ships/1/loop.wav")
            *value\sounds[2] = LoadSound(#PB_Any, "sounds/ships/1/land.wav")
            *value\sounds[3] = LoadSound(#PB_Any, "sounds/ships/1/destroy.wav")
            *value\sounds[4] = LoadSound(#PB_Any, "sounds/Ships/1/hit.wav")
          EndIf
          If SpawnVar = 2
            *Value\x = Random(48)+1
            *Value\y = 10
            *value\speed = 0.02
            *value\hp = 5
            *value\type = 2
            *value\spawnframe = 0
            *value\active = 1
            *value\sounds[1] = LoadSound(#PB_Any, "sounds/ships/2/loop.wav")
            *value\sounds[2] = LoadSound(#PB_Any, "sounds/ships/2/land.wav")
            *value\sounds[3] = LoadSound(#PB_Any, "sounds/ships/2/destroy.wav")
            *value\sounds[4] = LoadSound(#PB_Any, "sounds/Ships/2/hit.wav")
                      EndIf
                      
                      If SpawnVar = 3
            *Value\x = Random(48)+1
            *Value\y = 10
            *value\speed = 0.02
            *value\hp = 5
            *value\direction = 1
            *value\type = 3
            *value\spawnframe = 0
            *value\active = 1
            *value\sounds[1] = LoadSound(#PB_Any, "sounds/ships/3/loop.wav")
            *value\sounds[2] = LoadSound(#PB_Any, "sounds/ships/3/land.wav")
            *value\sounds[3] = LoadSound(#PB_Any, "sounds/ships/3/destroy.wav")
            *value\sounds[4] = LoadSound(#PB_Any, "sounds/Ships/3/hit.wav")
                      EndIf
                      If SpawnVar = 4
                        *value\cloaked = 0
                        *Value\x = Random(48)+1
            *Value\y = 10
            *value\speed = 0.01
            *value\hp = 1
            *value\type = 4
            *value\spawnframe = 0
            *value\active = 1
            *value\sounds[1] = LoadSound(#PB_Any, "sounds/ships/4/loop.wav")
            *value\sounds[2] = LoadSound(#PB_Any, "sounds/ships/4/land.wav")
            *value\sounds[3] = LoadSound(#PB_Any, "sounds/ships/4/destroy.wav")
            *value\sounds[4] = LoadSound(#PB_Any, "sounds/Ships/4/hit.wav")
            *value\sounds[5] = LoadSound(#PB_Any, "sounds/Ships/4/cloak.wav")
          *value\sounds[6] = LoadSound(#PB_Any, "sounds/Ships/4/Uncloak.wav")  
          EndIf
          If Spawnvar = 5
            *Value\x = Random(48)+1
            *Value\y = 10
            *value\speed = 0.01
            *value\hp = 1
                        *value\type = 5
            *value\spawnframe = 0
            *value\active = 1
            *value\sounds[1] = LoadSound(#PB_Any, "sounds/ships/5/loop.wav")
            
            *value\sounds[2] = LoadSound(#PB_Any, "sounds/ships/5/land.wav")
            *value\sounds[3] = LoadSound(#PB_Any, "sounds/ships/5/destroy.wav")
            *value\sounds[4] = LoadSound(#PB_Any, "sounds/Ships/5/hit.wav")
                        *value\sounds[7] = LoadSound(#PB_Any, "sounds/Ships/5/laser.wav")
                                                *value\sounds[8] = LoadSound(#PB_Any, "sounds/Ships/5/laserhit.wav")
                                                EndIf
                                                Global TempFreq = Random(5)+1
                      If tempFreq = 1 : TempFreq = 22050 : EndIf
                                            If tempFreq = 2 : TempFreq = 33500 : EndIf
                                            If tempFreq = 3 : TempFreq = 44100 : EndIf
                                            If tempFreq = 4 : TempFreq = 55420 : EndIf
                                            If tempFreq = 5 : TempFreq = 65003 : EndIf
                                            If tempFreq = 6 : TempFreq = 75000 : EndIf
                                            Global j = 1
                      For j = 1 To 6
                      SoundFrequency(*value\sounds[j], TempFreq)
                      Next
                      PlaySound(*value\sounds[1], #PB_Sound_Loop)                                
                    EndProcedure

                      
              
                    
                    Procedure Land(*value.ship)
                      
                      PlaySound(*value\sounds[2])
                      StopSound(*value\sounds[1])
                      Landed + 1
                      *value\active = 0
                    EndProcedure
                    Procedure PanSounds()
                      
                      Global j = 0
                      For i = 1 To EnemyPerLevel
                        For j = 1 To 7
                          If Enemy(i)\active = 1
                            generate_pan(me\x, 0, enemy(i)\x, enemy(i)\y, 3, 10, Enemy(i)\sounds[j])
                          EndIf
                        Next
                      Next
                    EndProcedure
                    Procedure MoveLeft()
                      
                      If Me\x > 0 : me\x - me\speed : EndIf
                    EndProcedure
                    Procedure MoveRight()
                      
                      If me\x < 50 : me\x + me\speed : EndIf
                    EndProcedure
                    Procedure Shoot_Init()
                      ShootFramesTotal + 1
                      If ShootFramestotal > 200 : Shootframestotal = 0 : Shoot_Release() : EndIf
                      If Powerupplaying = 0
                        Powerupplaying = 1
                        PlaySound(me\sounds[2])
                      EndIf
                      If me\laser < 5 : me\laser + 0.05 : EndIf
                    
                    EndProcedure
                    Procedure Shoot_release()
                      ShootFramesTotal = 0
                      StopSound(me\sounds[2])
                      Powerupplaying = 0
                      Global ToHit = Int(me\laser)
me\laser = 0                      
If Tohit < 1 : tohit = 1 : EndIf
If ToHit = 1 : PlaySound(me\sounds[3]) : EndIf
                                            If ToHit = 2 : PlaySound(me\sounds[4]) : EndIf
                                            If ToHit = 3 : PlaySound(me\sounds[5]) : EndIf
                                                                                        If ToHit = 4 : PlaySound(me\sounds[6]) : EndIf
                                                                                        If ToHit = 5 : PlaySound(me\sounds[7]) : EndIf
                                                                                        For i = 1 To EnemyPerLevel
                                                                                          If Enemy(i)\active = 1
                                                                                          If Distance(me\x, Enemy(i)\x) = 1 : Hit(enemy(i), ToHit) : EndIf
                                                                                        EndIf  
                                                                                        Next
                    EndProcedure
                    Procedure Hit(*value.ship, Strength)
                      *value\hp - Strength
                      If *value\hp < 1 : Die(*value) : EndIf
                      If *value\hp >= 1 : PlaySound(me\sounds[4]) : EndIf
                    EndProcedure
                    Procedure Die(*value.ship)
                      Kills + 1
                      PlaySound(*value\sounds[3])
                      StopSound(*value\sounds[1])
                      *value\active = 0
                    *value\ToRespawn = Random(100)+40  
                    EndProcedure
                      Procedure generate_pan(Listener_X.f, Listener_Y.f, source_X.f, source_Y.f, PanStep.f, VolumeStep.f, SoundHandle.l)
Global delta_x.f=0;
Global delta_y.f=0;
Global final_pan.f=0;
Global final_volume.f=100
If source_x<listener_x

delta_x=listener_x-source_x;
final_pan=Final_Pan-(delta_x*panstep);
;final_volume=final_volume-(delta_x*volumestep);
EndIf
If source_x>listener_x

delta_x=source_x-listener_x;
final_pan=Final_Pan+(delta_x*panstep);
;final_volume=final_volume-(delta_x*volumestep);

EndIf
If source_y<listener_y


delta_y=listener_y-source_y;
final_volume=final_volume-(delta_y*volumestep);
EndIf
If source_y>listener_y

delta_y=source_y-listener_y;
final_volume=final_volume-(delta_y*volumestep);
EndIf
If final_volume < 0 : final_volume = 0 : EndIf
If final_pan < -100 : final_pan = -100 : EndIf
If final_pan > 100 : final_pan = 100 : EndIf

SoundVolume(SoundHandle, Final_Volume)
SoundPan(SoundHandle, Final_Pan)
EndProcedure
Procedure Checkradar()
  Radarcheck + 1
  If Radarcheck > 5
    RadarCheck = 1
    For i = 1 To EnemyPerLevel
                                                                                          If Enemy(i)\active = 1
                                                                                            If Enemy(i)\type < 4
                                                                                            If Distance(me\x, Enemy(i)\x) = 1 : PlaySound(me\sounds[9]) : EndIf
                                                                                          Else
                                                                                            If Distance(me\x, Enemy(i)\x) = 1 : If Enemy(i)\cloaked = 0 : PlaySound(me\sounds[9]) : EndIf : EndIf
                                                                                          EndIf  
                                                                                        EndIf  
                                                                                        Next
                                                                                    EndIf  
                                                                                  EndProcedure
                                                                                  Procedure Distance(X1.f, X2.f)
                                                                                    If X1.f < x2.f+2 And X1.f > X2.f-2 : ProcedureReturn 1 : EndIf
                                                                                  EndProcedure
                                                                                  Procedure ShowText(text.s, music2Play.s)
                                                                                    Global TextOn = LoadSound(#PB_Any, "sounds/misc/S_Open.wav")
                                                                                    PlaySound(TextON)
                                                                                    Global textCont = LoadSound(#PB_Any, "sounds/misc/s_continue.wav")
                                                                                                                                                                        Global textEnd = LoadSound(#PB_Any, "sounds/misc/s_close.wav")
                                                                                    StopSound(Music)
                                                                                                                                                                        Global TempMusic = LoadSound(#PB_Any, "sounds/music/" + Music2Play + ".wav")
                                                                                    PlaySound(tempMusic, #PB_Sound_Loop)
                                                                                    SoundVolume(TempMusic, MusicVolume)
                                                                                    Global Dim tempArray.s(1000)
                                                                                    Global ToRead = 1
                                                                                    Global ArrPos = 1
                                                                                    Global ArrayPos = 1
                                                                                    Global TempString$ = ""
                                                                                    Global Found = 0
                                                                                    Repeat
                                                                                      ToRead = FindString(text, ".", ArrPos)
                                                                                      If Toread <> 0
                                                                                       Found + 1
                                                                                       
                                                                                       Temparray(Arraypos) = Left(text, ToRead)
                                                                                        Arraypos+1
                                                                                        Text = Mid(text, Toread+1, Len(text))
                                                                                      
                                                                                        
                                                                                      EndIf  
                                                                                      
                                                                                    Until Toread = 0
                                                                                  TTSSpeak(TempArray(1))
                                                                                  Global Postoread = 1
                                                                                  Repeat
                                                                                      ExamineKeyboard()
                                                                                      If KeyboardPushed(#PB_Key_PageUp) : If MusicVolume < 100 : MusicVolume + 1 : SoundVolume(Tempmusic, MusicVolume) : EndIf : EndIf
            If KeyboardPushed(#PB_Key_PageDown) : If MusicVolume > 0 : MusicVolume - 1 : SoundVolume(Tempmusic, MusicVolume) : EndIf : EndIf
                                                                                      If KeyboardReleased(#PB_Key_Return)
                                                                                        postoread + 1
                                                                                        If Postoread =< found : TTSStop()
                                                                                          PlaySound(TextCont)
                                                                                          TTSSpeak(TempArray(Postoread))
                                                                                        EndIf
                                                                                      EndIf
                                                                                      If KeyboardPushed(#PB_Key_Escape) :  Postoread = Found+1  : EndIf
                                                                                      
                                                                                      Delay(16)
                                                                                      WaitWindowEvent(1)
                                                                                    
                                                                                    Until Postoread = Found+1
                                                                                    PlaySound(TextEnd)
                                                                                    Delay(500)
                                                                                    
                                                                                    FreeSound(TextOn)
                                                                                    FreeSound(TextCont)
                                                                                    FreeSound(TextEnd)
                                                                                    StopSound(TempMusic)
                                                                                    PlaySound(Music, #PB_Sound_Loop)
                                                                                    
                                                                                  EndProcedure
                                                                                  Procedure ShowMenu(file.s, Music2Play.s)
                                                                                    Global MOpen = LoadSound(#PB_Any, "Sounds/misc/M_Open.wav")
                                                                                    PlaySound(MOpen)
                                                                                    Global MClick = LoadSound(#PB_Any, "Sounds/Misc/M_Click.wav")
                                                                                                                                                                        Global MSelect = LoadSound(#PB_Any, "Sounds/misc/M_Select.wav")
                                                                                                                                                                        StopSound(Music)
                                                                                                                                                                        Global tempMusic = LoadSound(#PB_Any, "sounds/music/" + Music2Play + ".wav")
                                                                                    PlaySound(TempMusic, #PB_Sound_Loop)
                                                                                    SoundVolume(TempMusic, MusicVolume)
                                                                                    
                                                                                    StopSound(me\sounds[1])
                                                                                    Global TempFile = ReadFile(#PB_Any, "Menu\" + file + ".mnu")
                                                                                    Global MenuName$ = ReadString(tempFile)
                                                                                    Global Dim Items.s(1000)
                                                                                    Global TempString$ = ""
                                                                                    Global Menupos = 0
                                                                                    Global FoundItems = 0
                                                                                    Repeat
                                                                                      Menupos + 1
                                                                                      FoundItems + 1
                                                                                      Items(menupos) = ReadString(TempFile)
                                                                                    Until Eof(TempFile)
                                                                                    
                                                                                    TTSSpeak(MenuName$)
                                                                                    Menupos = 1
                                                                                    Repeat
                                                                                      ExamineKeyboard()
                                                                                      If KeyboardPushed(#PB_Key_PageUp) : If MusicVolume < 100 : MusicVolume + 1 : SoundVolume(Tempmusic, MusicVolume) : EndIf : EndIf
            If KeyboardPushed(#PB_Key_PageDown) : If MusicVolume > 0 : MusicVolume - 1 : SoundVolume(Tempmusic, MusicVolume) : EndIf : EndIf
                                                                                      If KeyboardReleased(#PB_Key_Down)
                                                                                        If Menupos < FoundItems : Menupos + 1 : EndIf
                                                                                        PlaySound(MClick)
                                                                                        readMenu()
                                                                                      EndIf
                                                                                      If KeyboardReleased(#PB_Key_Up)
                                                                                        If Menupos > 1 : Menupos - 1 : EndIf
                                                                                        ReadMenu()
                                                                                      PlaySound(MClick)  
                                                                                      EndIf
                                                                                      If KeyboardReleased(#PB_Key_Return): 
                                                                                      PlaySound(MSelect) 
                                                                                                                                                                            ;StopSound(TempMusic)
                                                                                      FreeSound(TempMusic)
                                                                                      Delay(1000)
                                                                                      FreeSound(MOpen)
                                                                                      FreeSound(MClick)
                                                                                      FreeSound(MSelect)

                                                                                    ProcedureReturn Menupos : EndIf
                                                                                  Delay(16)  
                                                                                WaitWindowEvent(5)
                                                                                ForEver
                                                                                    EndProcedure
                                                                                    Procedure ReadMenu()
                                                                                      TTSStop()
                                                                                      TTSSpeak(Items(Menupos))
                                                                                    EndProcedure
                                                                                    Procedure KillAllOnScreen()
                                                                                      For i = 1 To EnemyPerLevel
                                                                                        Die(Enemy(i))
                                                                                      Next
                                                                                    EndProcedure
                                                                                    Procedure ShowScore()
                                                                                      ShowText("You died, killing " + Str(kills) + " Ships. " + Str(landed) + " ships landed, and you had " + Str(me\hp) + " health left. At Story stage " + Str(Storypart), "s1")
                                                                                    EndProcedure
                                                                                    Procedure ShowLogos()
                                                                                      Global Logo1 = LoadSound(#PB_Any, "sounds/misc/logo1.wav")
                                                                                      Global Logo2 = LoadSound(#PB_Any, "sounds/misc/logo2.wav")
                                                                                      Global OldTime = ElapsedMilliseconds()
                                                                                      PlaySound(Logo1)
                                                                                      Repeat
                                                                                        ExamineKeyboard()
                                                                                        If KeyboardReleased(#PB_Key_Space) : Break : EndIf
                                                                                      Until ElapsedMilliseconds() > OldTime+11377
                                                                                                                                                                            Global OldTime = ElapsedMilliseconds()
                                                                                                                                                                            
                                                                                                                                                                            FreeSound(Logo1)
                                                                                                                                                                            PlaySound(Logo2)
                                                                                      Repeat
                                                                                        ExamineKeyboard()
                                                                                        If KeyboardReleased(#PB_Key_Space) : Break  : EndIf
                                                                                      Until ElapsedMilliseconds() > OldTime+9376
                                                                                      FreeSound(Logo2)
                                                                                    EndProcedure
Procedure Distance(X1.f, X2.f)
  If X1.f < x2.f+2 And X1.f > X2.f-2 : ProcedureReturn 1 : EndIf
EndProcedure
; IDE Options = PureBasic 4.61 (Windows - x86)
; Folding = -----
; EnableXP
; Executable = mm.exe
; DisableDebugger
; IncludeVersionInfo
; VersionField0 = 1.4.2012
; VersionField1 = 1.4.2012
; VersionField2 = DragonApps
; VersionField3 = March Massacre - Attack from Space
; VersionField4 = 1.4.2012
; VersionField5 = 1.4.2012
; VersionField6 = March Massacre - Attack from Space
; VersionField7 = MM-AFS
; VersionField8 = mm.exe
; VersionField9 = Copyright dragonapps.org
; VersionField11 = 142012347
; VersionField12 = 142012347