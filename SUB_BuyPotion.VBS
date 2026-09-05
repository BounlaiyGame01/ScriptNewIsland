SUB_BuyPotion()
     IF CheckSQL("FlagSub") = False
          ScriptGO.SetSQL("FlagSub") = True
          IF CheckSQL("FlagSub") = True
               IF CheckSQL("HP_Potion") = True AND CheckSQL("Mana_Potion") = True
                    ScriptGO.SetPingPauseRunMAPData = True
                    IF CheckIsStorageEmpty(Inventory) >= 1
                         IF CheckCodeItemInInven(GetSQL("HP_Code")) <= GetMATH(GetSQL("HP") -1 )
                              ScriptGO.EnterBuyItemList([GetSQL("HP_Code"), 1])
                              IF CheckCodeItemInBAG(GetSQL("HP_Code")) != 0
                                   ScriptGO.SaveBagToInventoryItemIDCount(GetSQL("HP_Code"), 1)
                                   ScriptGO.SetSQL("FlagSub") = False
                                   GoToSUB.SUB_BuyPot()
                         ElseIF CheckCodeItemInInven(GetSQL("Mana_Code")) <= GetMATH(GetSQL("Mana") -1 )
                              ScriptGO.EnterBuyItemList([GetSQL("Mana_Code"), 1])
                              IF CheckCodeItemInBAG(GetSQL("Mana_Code")) != 0
                                   ScriptGO.SaveBagToInventoryItemIDCount(GetSQL("Mana_Code"), 1)
                                   ScriptGO.SetSQL("FlagSub") = False
                                   GoToSUB.SUB_BuyPot()
                         ELSE
                              ScriptGO.SetSQL("FlagSub") = False
                              ScriptGO.SetPingPauseRunMAPData = False
                              ConsolePrint("Go to Elarandor Portal")
                              ScriptGO.ChangeMapRuteData("ElarandorPotionToPortal GPS.txt")
                    ELSE
                         ScriptGO.SetSQL("FlagSub") = False
                         ScriptGO.SetPingPauseRunMAPData = False
                         ConsolePrint("Go to Elarandor Portal")
                         ScriptGO.ChangeMapRuteData("ElarandorPotionToPortal GPS.txt")
               ElseIF CheckSQL("HP_Potion") = True AND CheckSQL("Mana_Potion") = False
                    IF CheckIsStorageEmpty(Inventory) >= 1
                         IF CheckCodeItemInInven(GetSQL("HP_Code")) <= GetMATH(GetSQL("HP") -1 )
                              ScriptGO.EnterBuyItemList([GetSQL("HP_Code"), 1])
                              IF CheckCodeItemInBAG(GetSQL("HP_Code")) != 0
                              ScriptGO.SaveBagToInventoryItemIDCount(GetSQL("HP_Code"), 1)
                              ScriptGO.SetSQL("FlagSub") = False
                              GoToSUB.SUB_BuyPot()
                         ELSE
                              ScriptGO.SetSQL("FlagSub") = False
                              ScriptGO.SetPingPauseRunMAPData = False
                              ConsolePrint("Go to Elarandor Portal")
                              ScriptGO.ChangeMapRuteData("ElarandorPotionToPortal GPS.txt")
                    ELSE
                         ScriptGO.SetSQL("FlagSub") = False
                         ScriptGO.SetPingPauseRunMAPData = False
                         ConsolePrint("Go to Elarandor Portal")
                         ScriptGO.ChangeMapRuteData("ElarandorPotionToPortal GPS.txt")
               ElseIF CheckSQL("HP_Potion") = False AND CheckSQL("Mana_Potion") = True
                    IF CheckIsStorageEmpty(Inventory) >= 1
                         IF CheckCodeItemInInven(GetSQL("Mana_Code")) <= GetMATH(GetSQL("Mana") -1 )
                              ScriptGO.EnterBuyItemList([GetSQL("Mana_Code"), 1])
                              IF CheckCodeItemInBAG(GetSQL("Mana_Code")) != 0
                                   ScriptGO.SaveBagToInventoryItemIDCount(GetSQL("Mana_Code"), 1)
                                   ScriptGO.SetSQL("FlagSub") = False
                                   GoToSUB.SUB_BuyPot()
                         ELSE
                              ScriptGO.SetSQL("FlagSub") = False
                              ScriptGO.SetPingPauseRunMAPData = False
                              ConsolePrint("Go to Elarandor Portal")
                              ScriptGO.ChangeMapRuteData("ElarandorPotionToPortal GPS.txt")
                    ELSE
                         ScriptGO.SetSQL("FlagSub") = False
                         ScriptGO.SetPingPauseRunMAPData = False
                         ConsolePrint("Go to Elarandor Portal")
                         ScriptGO.ChangeMapRuteData("ElarandorPotionToPortal GPS.txt")
