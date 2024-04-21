local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideSkin.AetherDivideSkinPageQuestPanelListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideSkin.AetherDivideSkinPageQuestPanelListItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherDivideSkinPageQuestPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 201
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ActivityAetherDivideModule
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.GlobalVars
L3_1 = L3_1.s_ModuleManager
L3_1 = L3_1.QuestModule
L4_1 = CS
L4_1 = L4_1.RPG
L4_1 = L4_1.Client
L4_1 = L4_1.GlobalVars
L4_1 = L4_1.s_ModuleManager
L4_1 = L4_1.MissionModule
L5_1 = CS
L5_1 = L5_1.RPG
L5_1 = L5_1.Client
L5_1 = L5_1.GlobalVars
L5_1 = L5_1.s_ModuleManager
L5_1 = L5_1.ScheduleModule
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get_skin
  L4_2 = A0_2._on_click_get_skin
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = A0_2._on_click_mission
  L1_2(L2_2, L3_2, L4_2)
  A0_2._final_bonus_activity_data = nil
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_skin_info
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_activity_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_progress
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_get_skin
  L2_2(L3_2)
end
L0_1.setup_view = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.AvatarSkinName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.AvatarSkinSynopsis
  L2_2(L3_2, L4_2)
end
L0_1._setup_skin_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L2_1.AetherDivideActivityTypeGroupDict
  L2_2 = L1_1
  L1_2 = L1_2[L2_2]
  activityDataList = L1_2
  L1_2 = activityDataList
  L1_2 = L1_2[0]
  A0_2._final_bonus_activity_data = L1_2
end
L0_1._set_activity_data = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.FinishWayExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._final_bonus_activity_data
  L2_2 = L2_2.QuestIDList
  L2_2 = L2_2[0]
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._mission_table = L2_2
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.Collections
  L2_2 = L2_2.Generic
  L2_2 = L2_2.List
  L3_2 = CS
  L3_2 = L3_2.System
  L3_2 = L3_2.UInt32
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2()
  L3_2 = 0
  L4_2 = L1_2.ParamIntList
  L4_2 = L4_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L8_2 = L2_2
    L7_2 = L2_2.Add
    L9_2 = L1_2.ParamIntList
    L9_2 = L9_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_mission
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L4_1
  L4_2 = L3_2
  L3_2 = L3_2.GetMainMissionDataWithPromise
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2
  L3_2 = L3_2.ThenLuaActionOneParam
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = A0_2._binder
    if L1_3 == nil or A0_3 == nil then
      return
    end
    L1_3 = G
    L1_3 = L1_3.Utils
    L1_3 = L1_3.create_lua_table_from_cs_list
    L2_3 = A0_3
    L1_3 = L1_3(L2_3)
    A0_2._mission_table = L1_3
    L1_3 = 0
    L2_3 = 1
    L3_3 = A0_2._mission_table
    L3_3 = #L3_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_2._mission_table
      L6_3 = L6_3[L5_3]
      L6_3 = L6_3.IsFinish
      if L6_3 then
        L1_3 = L1_3 + 1
      end
    end
    L2_3 = A0_2._binder
    L2_3 = L2_3.txt_cur_progress
    L3_3 = L2_3
    L2_3 = L2_3.SafeSetText
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
    L2_3 = A0_2._binder
    L2_3 = L2_3.txt_total_progress
    L3_3 = L2_3
    L2_3 = L2_3.SafeSetText
    L4_3 = L1_2.ParamIntList
    L4_3 = L4_3.Length
    L2_3(L3_3, L4_3)
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_mission
    L3_3 = L2_3
    L2_3 = L2_3.SafeSetActive
    L4_3 = L1_2.ParamIntList
    L4_3 = L4_3.Length
    L4_3 = L1_3 < L4_3
    L2_3(L3_3, L4_3)
    L2_3 = L1_2.ParamIntList
    L2_3 = L2_3.Length
    if L1_3 < L2_3 then
      L2_3 = A0_2._binder
      L2_3 = L2_3.txt_cur_progress
      L3_3 = G
      L3_3 = L3_3.UIColorUtils
      L3_3 = L3_3.GetColor
      L4_3 = "#DBC291"
      L3_3 = L3_3(L4_3)
      L2_3.color = L3_3
    else
      L2_3 = A0_2._binder
      L2_3 = L2_3.txt_cur_progress
      L3_3 = G
      L3_3 = L3_3.UIColorUtils
      L3_3 = L3_3.GetColor
      L4_3 = "#FFFFFF"
      L3_3 = L3_3(L4_3)
      L2_3.color = L3_3
    end
  end
  L3_2(L4_2, L5_2)
end
L0_1._setup_progress = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = 1
  L3_2 = A0_2._mission_table
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._mission_table
    L6_2 = L6_2[L5_2]
    L6_2 = L6_2.IsStart
    if L6_2 then
      L6_2 = A0_2._mission_table
      L1_2 = L6_2[L5_2]
      break
    end
  end
  if L1_2 == nil then
    L2_2 = G
    L2_2 = L2_2.SuperDebug
    L2_2 = L2_2.LogWarningFormat
    L3_2 = "AetherDivideSkinPageQuestPanel : \228\184\141\229\173\152\229\156\168\230\173\163\229\156\168\232\191\155\232\161\140\231\154\132\231\154\174\232\130\164\231\179\187\229\136\151\228\187\187\229\138\161"
    L2_2(L3_2)
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageTextID
    L4_2 = "UIText_AetherDivide_Common_WaitMission"
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = false
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MainMissionScheduleExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L1_2.ID
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ActivityModuleID
    if L4_2 ~= 0 then
      L4_2 = L5_1
      L5_2 = L4_2
      L4_2 = L4_2.GetScheduleDataByActivityModuleID
      L6_2 = L3_2.ActivityModuleID
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L6_2 = L4_2
        L5_2 = L4_2.IsInSchedule
        L5_2 = L5_2(L6_2)
        if L5_2 then
          L2_2 = true
        end
      end
  end
  else
    L2_2 = true
  end
  if not L2_2 then
    L4_2 = G
    L4_2 = L4_2.NotifyManager
    L4_2 = L4_2.notify
    L5_2 = G
    L5_2 = L5_2.CS
    L5_2 = L5_2.NotifyType
    L5_2 = L5_2.UIPileToastMessageTextID
    L6_2 = "UIText_AetherDivide_Common_WaitMission"
    L4_2(L5_2, L6_2)
  else
    L4_2 = G
    L4_2 = L4_2.GotoManager
    L4_2 = L4_2.Goto
    L5_2 = 700
    L6_2 = {}
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.GameCore
    L7_2 = L7_2.MainMissionType
    L7_2 = L7_2.None
    L7_2 = #L7_2
    L8_2 = L1_2.ID
    L6_2[1] = L7_2
    L6_2[2] = L8_2
    L4_2(L5_2, L6_2)
  end
end
L0_1._on_click_mission = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_return_to_top = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L3_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._final_bonus_activity_data
  L3_2 = L3_2.QuestIDList
  L3_2 = L3_2[0]
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_get_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.KBBBFCIHJPC
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_got_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.CMOFEAFMGAK
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_2.Status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.KBBBFCIHJPC
  if L2_2 ~= L3_2 then
    L2_2 = L1_2.Status
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.JKFPIINHGPD
    if L2_2 ~= L3_2 then
      goto lbl_62
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_get_skin
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2.Status
  L5_2 = CS
  L5_2 = L5_2.LEOGBBOPKKO
  L5_2 = L5_2.JKFPIINHGPD
  L4_2 = L4_2 == L5_2
  L2_2(L3_2, L4_2)
  goto lbl_69
  ::lbl_62::
  L2_2 = L1_2.Status
  L3_2 = CS
  L3_2 = L3_2.LEOGBBOPKKO
  L3_2 = L3_2.CMOFEAFMGAK
  if L2_2 == L3_2 then
  else
  end
  ::lbl_69::
end
L0_1._setup_get_skin = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.JCCHEMBPEEE
  L3_2 = A0_2._final_bonus_activity_data
  L3_2 = L3_2.QuestIDList
  L3_2 = L3_2[0]
  L1_2(L2_2, L3_2)
end
L0_1._on_click_get_skin = L6_1
return L0_1
