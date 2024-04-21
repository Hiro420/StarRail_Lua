local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Logic.Goto.GotoEnum"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "GotoManager"
L0_1 = L0_1(L1_1)
L1_1 = G
L1_1 = L1_1.NotifyManager
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIShowPageByShortCutKey
  L4_2 = L0_1._on_ui_show_page_by_short_cut_key
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.Goto
  L4_2 = L0_1._on_goto
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GotoMap
  L4_2 = L0_1._on_goto_map
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.Init = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1.Goto
  L3_2 = GotoType2DefaultGotoID
  L3_2 = L3_2[A0_2]
  L4_2 = A1_2
  return L2_2(L3_2, L4_2)
end
L0_1.GotoByType = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoConfigExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if nil == L3_2 then
    L4_2 = G
    L4_2 = L4_2.SuperDebug
    L4_2 = L4_2.LogErrorFormat
    L5_2 = "GotoID %d : Config does not exist!"
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = false
    return L4_2
  end
  L4_2 = true
  if A2_2 then
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.is_unlock
    L6_2 = L3_2.UnlockID
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L4_2 = false
    end
  end
  L5_2 = L3_2.GotoType
  L6_2 = L0_1.get_goto_command
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if L6_2 ~= nil then
    L8_2 = L6_2
    L7_2 = L6_2.can_goto
    L9_2 = L3_2
    L10_2 = A1_2
    L7_2, L8_2, L9_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L10_2 = G
      L10_2 = L10_2.SuperDebug
      L10_2 = L10_2.LogFormat
      L11_2 = "[GotoManager] goto_id : %d, command : %s, page : %s"
      L12_2 = A0_2
      L13_2 = GotoType2Command
      L13_2 = L13_2[L5_2]
      L14_2 = GotoType2Page
      L14_2 = L14_2[L5_2]
      L10_2(L11_2, L12_2, L13_2, L14_2)
      L11_2 = L6_2
      L10_2 = L6_2.execute
      L12_2 = L3_2
      L13_2 = A1_2
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = G
      L10_2 = L10_2.NotifyManager
      L10_2 = L10_2.notify
      L11_2 = G
      L11_2 = L11_2.CS
      L11_2 = L11_2.NotifyType
      L11_2 = L11_2.GotoExcute
      L12_2 = A0_2
      L10_2(L11_2, L12_2)
    else
      if L8_2 ~= nil and L8_2 ~= "" then
        if L4_2 then
          if L9_2 then
            L10_2 = G
            L10_2 = L10_2.NotifyManager
            L10_2 = L10_2.notify
            L11_2 = G
            L11_2 = L11_2.CS
            L11_2 = L11_2.NotifyType
            L11_2 = L11_2.UIPileToastMessageString
            L12_2 = L8_2
            L10_2(L11_2, L12_2)
          else
            L10_2 = G
            L10_2 = L10_2.NotifyManager
            L10_2 = L10_2.notify
            L11_2 = G
            L11_2 = L11_2.CS
            L11_2 = L11_2.NotifyType
            L11_2 = L11_2.UIPileToastMessageTextID
            L12_2 = L8_2
            L10_2(L11_2, L12_2)
          end
        end
        L10_2 = false
        return L10_2
      end
      if A2_2 then
        L10_2 = false
        return L10_2
      end
    end
  end
  L7_2 = true
  return L7_2
end
L0_1.Goto = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GotoType2Command
  L1_2 = L1_2[A0_2]
  if L1_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "The Command associated with type %d does not exist!"
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
    L1_2 = nil
    return L1_2
  end
  L1_2 = string
  L1_2 = L1_2.format
  L2_2 = "Logic.Goto.GotoCommand.Goto%sCommand"
  L3_2 = GotoType2Command
  L3_2 = L3_2[A0_2]
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L0_1.get_goto_command_by_path
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.get_goto_command = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = require
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  return L1_2
end
L0_1.get_goto_command_by_path = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GotoConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1._can_goto
  L3_2 = L1_2
  return L2_2(L3_2)
end
L0_1.CanGoto = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.GotoManager
  L1_2 = L1_2.CanGoto
  L2_2 = GotoType2DefaultGotoID
  L3_2 = #A0_2
  L2_2 = L2_2[L3_2]
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  if not L1_2 then
    L4_2 = G
    L4_2 = L4_2.StrExt
    L4_2 = L4_2.IsNullOrEmpty
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      if L3_2 then
        L4_2 = G
        L4_2 = L4_2.NotifyManager
        L4_2 = L4_2.notify
        L5_2 = G
        L5_2 = L5_2.CS
        L5_2 = L5_2.NotifyType
        L5_2 = L5_2.UIPileToastMessageString
        L6_2 = L2_2
        L4_2(L5_2, L6_2)
      else
        L4_2 = G
        L4_2 = L4_2.NotifyManager
        L4_2 = L4_2.notify
        L5_2 = G
        L5_2 = L5_2.CS
        L5_2 = L5_2.NotifyType
        L5_2 = L5_2.UIPileToastMessageTextID
        L6_2 = L2_2
        L4_2(L5_2, L6_2)
      end
    end
    L4_2 = false
    return L4_2
  end
  L4_2 = true
  return L4_2
end
L0_1.CheckGotoType = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.GotoConfigExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.is_unlock
  L3_2 = L1_2.UnlockID
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.FuncUnlockConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2.UnlockID
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConditionCheckerUtil
  L3_2 = L3_2.GetUnSatisfyCondition
  L4_2 = L2_2.Conditions
  L3_2 = L3_2(L4_2)
  L4_2 = 0
  L5_2 = L3_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L3_2[L7_2]
    L9_2 = L8_2.Type
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ConditionType
    L10_2 = L10_2.FinishMainMission
    if L9_2 == L10_2 then
      L9_2 = true
      L10_2 = L8_2.Param
      return L9_2, L10_2
    else
      L9_2 = false
      return L9_2
    end
  end
  L4_2 = false
  return L4_2
end
L0_1.is_locking_by_mission = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1.get_goto_command
  L2_2 = A0_2.GotoType
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    L2_2 = false
    L3_2 = ""
    return L2_2, L3_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.can_goto
  L4_2 = A0_2
  return L2_2(L3_2, L4_2)
end
L0_1._can_goto = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentGameModeType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.AdventureModule
  L2_2 = L2_2.MapDef
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameModeType
  L3_2 = L3_2.Raid
  if L1_2 == L3_2 and L2_2 ~= nil then
    L3_2 = L2_2.FloorID
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.ConstValueClientExcelTable
    L4_2 = L4_2.GetData
    L5_2 = "GameModeType_Client_FloorID"
    L4_2 = L4_2(L5_2)
    L4_2 = L4_2.Value
    L4_2 = L4_2.UintValue
    if L3_2 == L4_2 then
      return
    end
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  L3_2 = L3_2.PageStackCount
  if L3_2 ~= 2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.GlobalVars
    L3_2 = L3_2.s_UIManager
    L3_2 = L3_2.PageStackCount
    if L3_2 ~= 3 then
      goto lbl_159
    end
  end
  L3_2 = L0_1._convert_goto_id
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  A0_2 = L3_2
  L3_2 = GotoType2DefaultGotoID
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.GotoType
  L4_2 = L4_2.TeamEdit
  L4_2 = #L4_2
  L3_2 = L3_2[L4_2]
  if A0_2 ~= L3_2 then
    L3_2 = GotoType2DefaultGotoID
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.GameCore
    L4_2 = L4_2.GotoType
    L4_2 = L4_2.MobilePhone
    L4_2 = #L4_2
    L3_2 = L3_2[L4_2]
    if A0_2 ~= L3_2 then
      goto lbl_90
    end
  end
  L3_2 = L0_1.CanGotoPhonePage
  L3_2 = L3_2()
  if L3_2 == false then
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageTextID
    L5_2 = "UIText_Goto_Error_04"
    L3_2(L4_2, L5_2)
    return
  end
  ::lbl_90::
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_UIManager
  L4_2 = L3_2
  L3_2 = L3_2.TopPage
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.Name
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GotoConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.GotoType
  L7_2 = GotoType2Page
  L7_2 = L7_2[L6_2]
  L8_2 = string
  L8_2 = L8_2.sub
  L9_2 = L7_2
  L10_2 = string
  L10_2 = L10_2.len
  L11_2 = L4_2
  L10_2 = L10_2(L11_2)
  L10_2 = -L10_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = G
  L9_2 = L9_2.SuperDebug
  L9_2 = L9_2.LogFormat
  L10_2 = "[GotoManager] gotoID, topPageName, gotoPageName : %s, %s, %s"
  L11_2 = A0_2
  L12_2 = L4_2
  L13_2 = L8_2
  L9_2(L10_2, L11_2, L12_2, L13_2)
  if L4_2 == L8_2 then
    L10_2 = L3_2
    L9_2 = L3_2.OnBackPressed
    L9_2(L10_2)
  else
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.GlobalVars
    L9_2 = L9_2.s_UIManager
    L9_2 = L9_2.PageStackCount
    if L9_2 == 2 then
      L9_2 = L0_1.Goto
      L10_2 = A0_2
      L11_2 = nil
      L12_2 = true
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if L9_2 then
        L10_2 = CS
        L10_2 = L10_2.RPG
        L10_2 = L10_2.Client
        L10_2 = L10_2.GlobalVars
        L10_2 = L10_2.s_AudioManager
        L11_2 = L10_2
        L10_2 = L10_2.PostEvent
        L12_2 = CS
        L12_2 = L12_2.RPG
        L12_2 = L12_2.Client
        L12_2 = L12_2.GlobalVars
        L12_2 = L12_2.s_AudioManager
        L12_2 = L12_2.AudioConfig
        L12_2 = L12_2.UIShortCutSoundEvent
        L10_2(L11_2, L12_2)
      end
    end
  end
  ::lbl_159::
end
L0_1._on_ui_show_page_by_short_cut_key = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = GotoType2DefaultGotoID
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.GotoType
  L2_2 = L2_2.AreaSwitch
  L2_2 = #L2_2
  L1_2 = L1_2[L2_2]
  if A0_2 == L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.GlobalVars
    L1_2 = L1_2.s_ModuleManager
    L1_2 = L1_2.StoryLineModule
    L2_2 = L1_2
    L1_2 = L1_2.IsMainLine
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = GotoType2DefaultGotoID
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.GotoType
      L2_2 = L2_2.StoryLineAreaSwitch
      L2_2 = #L2_2
      L1_2 = L1_2[L2_2]
      return L1_2
    end
  end
  return A0_2
end
L0_1._convert_goto_id = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.Goto
  L2_2 = A0_2
  L1_2(L2_2)
end
L0_1._on_goto = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = A0_2.EntranceID
  if 0 < L1_2 then
    L1_2 = A0_2.EntranceID
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BigMapUtils
  L1_2 = L1_2.GetCurShowEntranceID
  L1_2 = L1_2()
  ::lbl_13::
  L2_2 = A0_2.MappingInfoID
  if 0 < L2_2 then
    L2_2 = A0_2.MappingInfoID
    if L2_2 then
      goto lbl_20
    end
  end
  L2_2 = nil
  ::lbl_20::
  L3_2 = A0_2.SubMissionID
  if 0 < L3_2 then
    L3_2 = A0_2.SubMissionID
    if L3_2 then
      goto lbl_27
    end
  end
  L3_2 = nil
  ::lbl_27::
  L4_2 = A0_2.GroupID
  if 0 < L4_2 then
    L4_2 = A0_2.GroupID
    if L4_2 then
      goto lbl_34
    end
  end
  L4_2 = nil
  ::lbl_34::
  L5_2 = G
  L5_2 = L5_2.GotoManager
  L5_2 = L5_2.GotoByType
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.GotoType
  L6_2 = L6_2.AreaSwitch
  L6_2 = #L6_2
  L7_2 = {}
  L8_2 = L1_2
  L9_2 = L2_2
  L10_2 = L3_2
  L11_2 = L4_2
  L7_2[1] = L8_2
  L7_2[2] = L9_2
  L7_2[3] = L10_2
  L7_2[4] = L11_2
  L5_2(L6_2, L7_2)
end
L0_1._on_goto_map = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = L1_1.remove_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIShowPageByShortCutKey
  L3_2 = L0_1._on_ui_show_page_by_short_cut_key
  L0_2(L1_2, L2_2, L3_2)
  L0_2 = L1_1.add_notify_handler
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.NotifyGroup
  L1_2 = L1_2.UI
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.Goto
  L3_2 = L0_1._on_goto
  L0_2(L1_2, L2_2, L3_2)
end
L0_1.dispose = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L1_2 = L0_2.TeamManager
    if L1_2 then
      L1_2 = L0_2.TeamManager
      L1_2 = L1_2.CurrentTeamLeader
    end
  end
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L3_2 = L1_2
    L2_2 = L1_2.GetComponent
    L4_2 = typeof
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.CharacterAnimZone
    L4_2, L5_2 = L4_2(L5_2)
    L2_2 = L2_2(L3_2, L4_2, L5_2)
  end
  if L2_2 then
    L4_2 = L2_2
    L3_2 = L2_2.IsInAnimZone
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.AnimZoneType
    L5_2 = L5_2.ForbidTeamEdit
    L3_2 = L3_2(L4_2, L5_2)
    if not L3_2 then
      L4_2 = L2_2
      L3_2 = L2_2.IsInAnimZone
      L5_2 = CS
      L5_2 = L5_2.RPG
      L5_2 = L5_2.GameCore
      L5_2 = L5_2.AnimZoneType
      L5_2 = L5_2.ForbidOffStage
      L3_2 = L3_2(L4_2, L5_2)
      if not L3_2 then
        goto lbl_47
      end
    end
    L3_2 = false
    return L3_2
  end
  ::lbl_47::
  L3_2 = true
  return L3_2
end
L0_1.CanGotoPhonePage = L2_1
return L0_1
