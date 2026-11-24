Sub_onReceivePosUpdateXYZ(PosX, PosY, PosZ)
     IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "31974,32011,7"
          ConsolePrint("Start")
          GoToSUB.SUB_Start()
          ScriptGO.GetPINGPosXYZ()
     ElseIF CheckMapGPSdataUse() = ("AureaWalkToTeleport GPS.txt")
          IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "31968,32005,7"
               ConsolePrint("Teleport to Elarandor")
               ScriptGO.EnterTeleportTo("Elarandor")
          ElseIF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "32748,31875,7"
               ConsolePrint("Change map go to portal")
               ScriptGO.ChangeMapRuteData("ElarandorPortToPortal GPS.txt")
               ScriptGO.SetSQL("Quest") = "Talk_Quest"
     ElseIF CheckMapGPSdataUse() = ("ElarandorPortToPortal GPS.txt")
          IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "32773,31850,7"
               
     ElseIF CheckMapGPSdataUse() = ("ElarandorPortalToPotion GPS.txt")
          IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "32776,31846,7"
               GoToSUB.SUB_BuyPotion()
               ScriptGO.GetPINGPosXYZ()
     ElseIF CheckMapGPSdataUse() = ("ElarandorPotionToPortal GPS.txt")
          IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "32773,31850,7"
               ConsolePrint("")
               ScriptGO.EnterTeleportTo()
          ElseIF CheckPosUpdateXYZ(PosX,PosY,PosZ) =
               ConsolePrint("")
               GoToSUB.SUB_Ignore()
     ElseIF CheckMapGPSdataUse() = ("ElarandorSilvarisPortalToNpcNaeris GPS.txt")
          #TalkNPC Naeris
          IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "32757,31785,7"
               ConsolePrint("Talk Npc Naeris")
               ScriptGO.TalkNPCname("Naeris")
     ElseIF CheckMapGPSdataUse() = ("ElarandorNpcNaerisToElyndor GPS.txt")
          #TalkNPC Elyndor
          IF CheckPosUpdateXYZ(PosX,PosY,PosZ) = "32754,31786,7"
               ConsolePrint("Talk Npc Elyndor")
               ScriptGO.TalkNPCname("Elyndor")
     ElseIF CheckMapGPSdataUse() = ("ElanradorWolfHunt GPS.dat")
          GoToSUB.SUB_Check_Potion()
