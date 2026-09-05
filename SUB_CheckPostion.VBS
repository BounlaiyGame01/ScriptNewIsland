SUB_Check_Potion()
     IF CheckSQL("Quest") = "Talk_Quest"
          IF CheckSQL("HP_Potion") = True AND CheckSQL("Mana_Potion") = True
               IF CheckCodeItemInInven(GetSQL("HP_Code")) <= GetMATH(GetSQL("HP") -1 ) OR CheckCodeItemInInven(GetSQL("Mana_Code")) <= GetMATH(GetSQL("Mana") -1 )
                    ConsolePrint("Go to Potion shop")
                    ScriptGO.ChangeMapRuteData("ElarandorPortalToPotion GPS.txt")
               ELSE
                    ConsolePrint("Teleport to ")
                    ScriptGO.EnterTeleportTo()
                    GoToSUB.SUB_Ignore()
          ElseIF CheckSQL("HP_Potion") = True AND CheckSQL("Mana_Potion") = False
               IF CheckCodeItemInInven(GetSQL("HP_Code")) <= GetMATH(GetSQL("HP") -1 )
                    ConsolePrint("Go to Potion shop")
                    ScriptGO.ChangeMapRuteData("ElarandorPortalToPotion GPS.txt")
               ELSE
                    ConsolePrint("Teleport to ")
                    ScriptGO.EnterTeleportTo()
                    GoToSUB.SUB_Ignore()
          ElseIF CheckSQL("HP_Potion") = False AND CheckSQL("Mana_Potion") = True
               IF CheckCodeItemInInven(GetSQL("Mana_Code")) <= GetMATH(GetSQL("Mana") -1 )
                    ConsolePrint("Go to Potion shop")
                    ScriptGO.ChangeMapRuteData("ElarandorPortalToPotion GPS.txt")
               ELSE
                    ConsolePrint("Teleport to ")
                    ScriptGO.EnterTeleportTo()
                    GoToSUB.SUB_Ignore()
     ElseIF CheckSQL("Quest") = "Do_Quest"
          IF CheckSQL("HP_Potion") = True AND CheckSQL("Mana_Potion") = True
               IF CheckCodeItemInInven(GetSQL("HP_Code")) <= 1 OR CheckCodeItemInInven(GetSQL("Mana_Code")) <= 1
                    IF CheckMapGPSdataUse() = ("ElanradorWolfHunt GPS.dat")
                         ConsolePrint("Change map to go portal")
                         ScriptGO.ChangeMapRuteData()
                         GoToSUB.SUB_Ignore()
          ElseIF CheckSQL("HP_Potion") = True AND CheckSQL("Mana_Potion") = False
               IF CheckCodeItemInInven(GetSQL("HP_Code")) <= 1
                    IF CheckMapGPSdataUse() = ("ElanradorWolfHunt GPS.dat")
                         ConsolePrint("Change map to go portal")
                         ScriptGO.ChangeMapRuteData()
                         GoToSUB.SUB_Ignore()
          ElseIF CheckSQL("Mana_Potion") = True
               IF CheckCodeItemInInven(GetSQL("Mana_Code")) <= 1
                    IF CheckMapGPSdataUse() = ("ElanradorWolfHunt GPS.dat")
                         ConsolePrint("Change map to go portal")
                         ScriptGO.ChangeMapRuteData()
                         GoToSUB.SUB_Ignore()
