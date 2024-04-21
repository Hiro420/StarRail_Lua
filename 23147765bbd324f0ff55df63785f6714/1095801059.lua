local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.IRogueDLCEntranceClickAction"
L0_1(L1_1)
L0_1 = "RogueDLC_Entrance_Locked_Round1_SubMissionID"
L1_1 = "RogueDLC_Entrance_Unlock_Round1_SubMissionID"
L2_1 = "RogueDLC_Entrance_Locked_Round2_SubMissionID"
L3_1 = "RogueDLC_Entrance_Unlock_Round2_SubMissionID"
L4_1 = "RogueDLC_Entrance_Locked_Round3_SubMissionID"
L5_1 = "RogueDLC_Entrance_Unlock_Round3_SubMissionID"
L6_1 = "RogueDLC_Entrance_Locked_Round4_SubMissionID"
L7_1 = "RogueDLC_Entrance_Unlock_Round4_SubMissionID"
L8_1 = G
L8_1 = L8_1.Class
L9_1 = "ChessRogueEntranceClickAction"
L10_1 = G
L10_1 = L10_1.IRogueDLCEntranceClickAction
L8_1 = L8_1(L9_1, L10_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._get_lock_hint_text_id
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.RogueDLC.ChessRogue.Entrance.ChessRogueMainPage"
  L2_2(L3_2)
end
L8_1.on_click = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_sub_mission_status
  L3_2 = L0_1
  L1_2 = L1_2(L2_2, L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._get_sub_mission_status
  L4_2 = L1_1
  L2_2 = L2_2(L3_2, L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._get_sub_mission_status
  L5_2 = L2_1
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_sub_mission_status
  L6_2 = L3_1
  L4_2 = L4_2(L5_2, L6_2)
  L6_2 = A0_2
  L5_2 = A0_2._get_sub_mission_status
  L7_2 = L4_1
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = A0_2
  L6_2 = A0_2._get_sub_mission_status
  L8_2 = L5_1
  L6_2 = L6_2(L7_2, L8_2)
  L8_2 = A0_2
  L7_2 = A0_2._get_sub_mission_status
  L9_2 = L6_1
  L7_2 = L7_2(L8_2, L9_2)
  L9_2 = A0_2
  L8_2 = A0_2._get_sub_mission_status
  L10_2 = L7_1
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L1_2 == L9_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L2_2 ~= L9_2 then
      L9_2 = "UIText_RogueDLC_Entrance_Locked_Hint"
      return L9_2
    end
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L3_2 == L9_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L4_2 ~= L9_2 then
      L9_2 = "UIText_RogueDLC_Entrance_Locked_Hint2"
      return L9_2
    end
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L5_2 == L9_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L6_2 ~= L9_2 then
      L9_2 = "UIText_RogueDLC_Entrance_Locked_Hint3"
      return L9_2
    end
  end
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.GameCore
  L9_2 = L9_2.SubMissionState
  L9_2 = L9_2.Finish
  if L7_2 == L9_2 then
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.GameCore
    L9_2 = L9_2.SubMissionState
    L9_2 = L9_2.Finish
    if L8_2 ~= L9_2 then
      L9_2 = "UIText_RogueDLC_Entrance_Locked_Hint4"
      return L9_2
    end
  end
end
L8_1._get_lock_hint_text_id = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.TryGetMainMissionData
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L8_1._get_main_mission_data = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.MissionModule
  L4_2 = L3_2
  L3_2 = L3_2.GetSubMissionState
  L5_2 = L2_2
  return L3_2(L4_2, L5_2)
end
L8_1._get_sub_mission_status = L9_1
return L8_1
