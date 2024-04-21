local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Utilities.BuffUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.PhotoGraph.PhotoGraphUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ShortCutWheelModule"
L2_1 = "Logic.BaseModule"
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MessageModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ChatModule
L3_1 = 2500
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  L1_2 = L0_2
  L0_2 = L0_2.HasNotice
  return L0_2(L1_2)
end
L0_1.MessageIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = G
  L0_2 = L0_2.BuffUtils
  L0_2 = L0_2.get_all_team_buff
  L0_2 = L0_2()
  L1_2 = G
  L1_2 = L1_2.BuffUtils
  L1_2 = L1_2.cal_env_buff_count_in_challenge
  L1_2 = L1_2()
  L0_2 = L0_2 + L1_2
  L0_2 = 0 < L0_2
  return L0_2
end
L0_1.TeamBuffIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1.RogueBuffIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1.RogueDLCBuffIsView = L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.ChessRogueModule
  L2_2 = L0_2
  L1_2 = L0_2.GetCurSubMode
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L0_1.LittleWheelFuncID2GotoID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ShortCutWheelGotoType
  L4_2 = L4_2.RogueDLCDimension
  L4_2 = #L4_2
  L3_2 = L3_2[L4_2]
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SystemOpenModule
  L3_2 = L3_2.IsOpen
  L4_2 = L2_2.UnlockID
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueSubMode
    L3_2 = L3_2.ChessRogue
    L3_2 = L1_2 == L3_2
  end
  return L3_2
end
L0_1.RogueDLCDimensionIsView = L4_1
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_ModuleManager
  L0_2 = L0_2.StoryLineModule
  L2_2 = L0_2
  L1_2 = L0_2.CanSwitchToOtherLine
  return L1_2(L2_2)
end
L0_1.StoryLineIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.SystemOpenModule
  L0_2 = L0_2.IsOpen
  L1_2 = L3_1
  return L0_2(L1_2)
end
L0_1.TutorialIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = L2_1
  L1_2 = L0_2
  L0_2 = L0_2.ShowChatHUD
  return L0_2(L1_2)
end
L0_1.FriendChatIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1.SpiritAtlasIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1.SpiritTeamEditIsView = L4_1
function L4_1()
  local L0_2, L1_2
  L0_2 = true
  return L0_2
end
L0_1.SpiritDetailIsView = L4_1
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.TeamBuff
L5_1 = #L5_1
L6_1 = G
L6_1 = L6_1.CS
L6_1 = L6_1.NotifyType
L6_1 = L6_1.UIShowTeamBuffDetailDialog
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.RogueBuff
L5_1 = #L5_1
L6_1 = G
L6_1 = L6_1.CS
L6_1 = L6_1.NotifyType
L6_1 = L6_1.UIShowRogueMenuPage
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.FriendChat
L5_1 = #L5_1
L6_1 = G
L6_1 = L6_1.CS
L6_1 = L6_1.NotifyType
L6_1 = L6_1.UIShowFriendChatPage
L4_1[L5_1] = L6_1
L0_1.LittleWheelFuncID2Notify = L4_1
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.RogueDLCBuff
L5_1 = #L5_1
L4_1[L5_1] = 5200
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.RogueDLCDimension
L5_1 = #L5_1
L4_1[L5_1] = 5100
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritAtlas
L5_1 = #L5_1
L4_1[L5_1] = 4500
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritTeamEdit
L5_1 = #L5_1
L4_1[L5_1] = 4700
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritDetail
L5_1 = #L5_1
L4_1[L5_1] = 4800
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.Message
L5_1 = #L5_1
L4_1[L5_1] = 4000
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.Tutorial
L5_1 = #L5_1
L4_1[L5_1] = 2500
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.StoryLine
L5_1 = #L5_1
L4_1[L5_1] = 6100
L0_1.LittleWheelFuncID2GotoID = L4_1
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.Message
L5_1 = #L5_1
L6_1 = L0_1.MessageIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.TeamBuff
L5_1 = #L5_1
L6_1 = L0_1.TeamBuffIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.RogueBuff
L5_1 = #L5_1
L6_1 = L0_1.RogueBuffIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.Tutorial
L5_1 = #L5_1
L6_1 = L0_1.TutorialIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.FriendChat
L5_1 = #L5_1
L6_1 = L0_1.FriendChatIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritAtlas
L5_1 = #L5_1
L6_1 = L0_1.SpiritAtlasIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritTeamEdit
L5_1 = #L5_1
L6_1 = L0_1.SpiritTeamEditIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritDetail
L5_1 = #L5_1
L6_1 = L0_1.SpiritDetailIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.RogueDLCBuff
L5_1 = #L5_1
L6_1 = L0_1.RogueDLCBuffIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.RogueDLCDimension
L5_1 = #L5_1
L6_1 = L0_1.RogueDLCDimensionIsView
L4_1[L5_1] = L6_1
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.StoryLine
L5_1 = #L5_1
L6_1 = L0_1.StoryLineIsView
L4_1[L5_1] = L6_1
L0_1.LittleWheelFuncID2IsViewFunc = L4_1
L4_1 = {}
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.Message
L5_1 = #L5_1
L4_1[L5_1] = "PhoneNotificationsEntrance"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.Tutorial
L5_1 = #L5_1
L4_1[L5_1] = "TutorialOverview"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.FriendChat
L5_1 = #L5_1
L4_1[L5_1] = "ChatEntrance"
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.GameCore
L5_1 = L5_1.ShortCutWheelGotoType
L5_1 = L5_1.SpiritDetail
L5_1 = #L5_1
L4_1[L5_1] = "AetherSpiritAll"
L0_1.LittleWheelFuncID2RedDotKey = L4_1
return L0_1
