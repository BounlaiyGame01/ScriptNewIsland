SUB_Start()
     IF CheckSQL("Quest") = "Start"
          ConsolePrint("Check Time")
          IF CheckSQL("Time") >= GetTimeNow(HH:mm:ss)
               ScriptGO.SleepTime(GetSQL("Time"))
               ScriptGO.SetSQL("Quest") = "Start_Quest"
               ScriptGO.SetSQL("FlagSub") = False
               GoToExitSUB()
          ElseIF CheckSQL("Time") <= GetTimeNow(HH:mm:ss)
               ScriptGO.SleepTime(GetSQL("Time"))
               ScriptGO.SetSQL("Quest") = "Start_Quest"
               ScriptGO.SetSQL("FlagSub") = False
               GoToExitSUB()
     ElseIF CheckSQL("Quest") = "Start_Quest"
          ConsolePrint("Start Quest")
          IF CheckSQL("FlagSub") = False
               ScriptGO.SetSQL("FlagSub") = True
               IF CheckSQL("FlagSub") = True
                    IF CheckCodeItemInSlotBAG(10) = 5593
                         ScriptGO.SetSQL("WpnStandar") = 5593
                         ScriptGO.PrintItemInInventory_TMP()
                         IF CheckItemInInventory_TMP([5645, 5296, 5589, 5593, 5588, 6539]) = True
                              IF CheckItemInInventory_TMP([5645]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5645"
                              ElseIF CheckItemInInventory_TMP([5296]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5296"
                              ElseIF CheckItemInInventory_TMP([5589]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5589"
                              ElseIF CheckItemInInventory_TMP([5593]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5593"
                              ElseIF CheckItemInInventory_TMP([5588]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5588"
                              ElseIF CheckItemInInventory_TMP([6539]) = True
                                   ScriptGO.SetSQL("WpnFire") = "6539"
                         ELSE
                              ScriptGO.SetSQL("WpnFire") = "5593"
                         IF CheckItemInInventory_TMP([5651, 5298, 6542, 5554, 5550]) = True
                              IF CheckItemInInventory_TMP([5651]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5651"
                              ElseIF CheckItemInInventory_TMP([5298]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5298"
                              ElseIF CheckItemInInventory_TMP([6542]) = True
                                   ScriptGO.SetSQL("WpnIce") = "6542"
                              ElseIF CheckItemInInventory_TMP([5554]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5554"
                              ElseIF CheckItemInInventory_TMP([5550]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5550"
                         ELSE
                              ScriptGO.SetSQL("WpnIce") = "5593"
                         IF CheckItemInInventory_TMP([5657, 6600, 5302, 5599, 5586, 5556, 6544]) = True
                              IF CheckItemInInventory_TMP([5657]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5657"
                              ElseIF CheckItemInInventory_TMP([6600]) = True
                                   ScriptGO.SetSQL("WpnLight") = "6600"
                              ElseIF CheckItemInInventory_TMP([5302]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5302"
                              ElseIF CheckItemInInventory_TMP([5599]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5599"
                              ElseIF CheckItemInInventory_TMP([5586]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5586"
                              ElseIF CheckItemInInventory_TMP([5556]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5556"
                              ElseIF CheckItemInInventory_TMP([6544]) = True
                                   ScriptGO.SetSQL("WpnLight") = "6544"
                         ELSE
                              ScriptGO.SetSQL("WpnLight") = "0"
                         IF CheckItemInInventory_TMP([5663, 5300, 5599, 5592, 6516, 6531, 5552]) = True
                              IF CheckItemInInventory_TMP([5663]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5663"
                              ElseIF CheckItemInInventory_TMP([5300]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5300"
                              ElseIF CheckItemInInventory_TMP([5599]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5599"
                              ElseIF CheckItemInInventory_TMP([5592]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5592"
                              ElseIF CheckItemInInventory_TMP([6516]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "6516"
                              ElseIF CheckItemInInventory_TMP([6531]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "6531"
                              ElseIF CheckItemInInventory_TMP([5552]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5552"
                         ELSE
                              ScriptGO.SetSQL("WpnHoly") = "0"
                         IF CheckItemInInventory_TMP([5637, 5294, 6612, 6541, 6519, 6571]) = True
                              IF CheckItemInInventory_TMP([5637]) = True
                                   ScriptGO.SetSQL("WpnHit") = "5637"
                              ElseIF CheckItemInInventory_TMP([5294]) = True
                                   ScriptGO.SetSQL("WpnHit") = "5294"
                              ElseIF CheckItemInInventory_TMP([6612]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6612"
                              ElseIF CheckItemInInventory_TMP([6541]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6541"
                              ElseIF CheckItemInInventory_TMP([6519]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6519"
                              ElseIF CheckItemInInventory_TMP([6571]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6571"
                         ELSE
                              ScriptGO.SetSQL("WpnHit") = "0"
                    ElseIF CheckCodeItemInSlotBAG(10) = 5594
                         ScriptGO.SetSQL("WpnStandar") = 5594
                         ScriptGO.PrintItemInInventory_TMP()
                         IF CheckItemInInventory_TMP([5648, 5297, 5591, 5590, 6538]) = True
                              IF CheckItemInInventory_TMP([5648]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5648"
                              ElseIF CheckItemInInventory_TMP([5297]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5297"
                              ElseIF CheckItemInInventory_TMP([5591]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5591"
                              ElseIF CheckItemInInventory_TMP([5590]) = True
                                   ScriptGO.SetSQL("WpnFire") = "5590"
                              ElseIF CheckItemInInventory_TMP([6538]) = True
                                   ScriptGO.SetSQL("WpnFire") = "6538"
                         ELSE
                              ScriptGO.SetSQL("WpnFire") = "5594"
                         IF CheckItemInInventory_TMP([5654, 5299, 6543, 5555, 5551]) = True
                              IF CheckItemInInventory_TMP([5654]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5654"
                              ElseIF CheckItemInInventory_TMP([5299]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5299"
                              ElseIF CheckItemInInventory_TMP([6543]) = True
                                   ScriptGO.SetSQL("WpnIce") = "6543"
                              ElseIF CheckItemInInventory_TMP([5555]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5555"
                              ElseIF CheckItemInInventory_TMP([5551]) = True
                                   ScriptGO.SetSQL("WpnIce") = "5551"
                         ELSE
                              ScriptGO.SetSQL("WpnIce") = "5594"
                         IF CheckItemInInventory_TMP([5660, 6601, 5303, 5600, 6527, 5557, 6545]) = True
                              IF CheckItemInInventory_TMP([5660]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5660"
                              ElseIF CheckItemInInventory_TMP([6601]) = True
                                   ScriptGO.SetSQL("WpnLight") = "6601"
                              ElseIF CheckItemInInventory_TMP([5303]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5303"
                              ElseIF CheckItemInInventory_TMP([5600]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5600"
                              ElseIF CheckItemInInventory_TMP([6527]) = True
                                   ScriptGO.SetSQL("WpnLight") = "6527"
                              ElseIF CheckItemInInventory_TMP([5557]) = True
                                   ScriptGO.SetSQL("WpnLight") = "5557"
                              ElseIF CheckItemInInventory_TMP([6545]) = True
                                   ScriptGO.SetSQL("WpnLight") = "6545"
                         ELSE
                              ScriptGO.SetSQL("WpnLight") = "0"
                         IF CheckItemInInventory_TMP([5666, 5301, 5600, 6540, 6515, 6546, 5553]) = True
                              IF CheckItemInInventory_TMP([5666]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5666"
                              ElseIF CheckItemInInventory_TMP([5301]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5301"
                              ElseIF CheckItemInInventory_TMP([5600]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5600"
                              ElseIF CheckItemInInventory_TMP([6540]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "6540"
                              ElseIF CheckItemInInventory_TMP([6515]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "6515"
                              ElseIF CheckItemInInventory_TMP([6546]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "6546"
                              ElseIF CheckItemInInventory_TMP([5553]) = True
                                   ScriptGO.SetSQL("WpnHoly") = "5553"
                         ELSE
                              ScriptGO.SetSQL("WpnHoly") = "0"
                         IF CheckItemInInventory_TMP([5642, 5295, 6613, 5587, 6522, 6572]) = True
                              IF CheckItemInInventory_TMP([5642]) = True
                                   ScriptGO.SetSQL("WpnHit") = "5642"
                              ElseIF CheckItemInInventory_TMP([5295]) = True
                                   ScriptGO.SetSQL("WpnHit") = "5295"
                              ElseIF CheckItemInInventory_TMP([6613]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6613"
                              ElseIF CheckItemInInventory_TMP([5587]) = True
                                   ScriptGO.SetSQL("WpnHit") = "5587"
                              ElseIF CheckItemInInventory_TMP([6522]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6522"
                              ElseIF CheckItemInInventory_TMP([6572]) = True
                                   ScriptGO.SetSQL("WpnHit") = "6572"
                         ELSE
                              ScriptGO.SetSQL("WpnHit") = "0"
                    ELSE
                         IF CheckCodeItemInSlotBAG(10) != 5594 OR CheckCodeItemInSlotBAG(10) != 5593
                              IF CheckItemInBackpack([5594]) = True
                                   ScriptGO.UseItemId(5594)
                                   ScriptGO.SetSQL("FlagSub") = False
                                   GoToSUB.Sub_Start()
                              ElseIF CheckItemInBackpack([5593]) = True
                                   ScriptGO.UseItemId(5593)
                                   ScriptGO.SetSQL("FlagSub") = False
                                   GoToSUB.Sub_Start()
                              ELSE
                                   IF CheckItemInInventory_TMP([5594]) = True
                                        ScriptGO.SetSQL("WpnStandar") = 5594
                                        GoToSUB.SUB_ChangeWpn([GetSQL("WpnStandar")])
                                        ScriptGO.SetSQL("FlagSub") = False
                                        GoToSUB.Sub_Start()
                                   ElseIF CheckItemInInventory_TMP([5593]) = True
                                        ScriptGO.SetSQL("WpnStandar") = 5593
                                        GoToSUB.SUB_ChangeWpn([GetSQL("WpnStandar")])
                                        ScriptGO.SetSQL("FlagSub") = False
                                        GoToSUB.Sub_Start()
                                   ELSE
                                        ScriptGO.MsgBox("Don't have any weapon 129 in backpack or inventory")
                                        ScriptGO.AutoOFF()
                                        ScriptGO.SetSQL("FlagSub") = False
                    IF CheckSQL("WpnFire") = 0
                         ScriptGO.MsgBox("WpnFire: Don't have in Inventory")
                         ScriptGO.AutoOFF()
                         ScriptGO.SetSQL("FlagSub") = False
                    ELSE
                    IF CheckSQL("WpnIce") = 0
                         ScriptGO.MsgBox("WpnIce: Don't have in Inventory")
                         ScriptGO.AutoOFF()
                         ScriptGO.SetSQL("FlagSub") = False
                    ELSE
                    IF CheckSQL("WpnLight") = 0
                         ScriptGO.MsgBox("WpnLight: Don't have in Inventory")
                         ScriptGO.AutoOFF()
                         ScriptGO.SetSQL("FlagSub") = False
                    ELSE
                    IF CheckSQL("WpnHoly") = 0
                         ScriptGO.MsgBox("WpnHoly: Don't have in Inventory")
                         ScriptGO.AutoOFF()
                         ScriptGO.SetSQL("FlagSub") = False
                    ELSE
                    IF CheckSQL("WpnHit") = 0
                         ScriptGO.MsgBox("WpnHit: Don't have in Inventory")
                         ScriptGO.AutoOFF()
                         ScriptGO.SetSQL("FlagSub") = False
                    ELSE
                         ScriptGO.MsgBox("Start")
                         ScriptGO.ReSetHuntGold()
                         ScriptGO.ReSetHuntExp()
                         ScriptGO.ReSetTotalKill()
                         ScriptGO.ReSetTimeHunt()
                         ScriptGO.GetPINGPosXYZ()
                         ScriptGO.ChangeMapRuteData("AureaWalkToTeleport GPS.txt")
                         ConsolePrint("Change map to AureaWalkToTeleport")
                         ScriptGO.SetSQL("FlagSub") = False
