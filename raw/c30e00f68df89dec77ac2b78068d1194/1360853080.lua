local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkSelectTapeBtnPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityClockParkSelectTapeBtnPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ActivityClockParkModule
L2_1 = "UIText_ClockPark_Script_Unlock_TipsMission"
L3_1 = "UIText_ClockPark_Script_Unlock_ToastScript"
L4_1 = "UIText_ClockPark_Playing_Toast"
L5_1 = "ClockParkSelectTapeItem_Unlock"
L6_1 = "ClockParkSelectTapeItem_Finshed"
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIAnimationEvent
  L4_2 = A0_2._on_ui_animation_event
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_btn = L7_1
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  return L1_2
end
L0_1.get_data = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._special_unlock
  L1_2 = A0_2._data
  L1_2 = L1_2.IsPlaying
  L1_2 = A0_2._data
  L2_2 = L1_2
  L1_2 = L1_2.IsReachedTrueEnding
  L1_2 = L1_2(L2_2)
  L1_2 = not L1_2 and L1_2
  return L1_2
end
L0_1.is_lock = L7_1
function L7_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._special_unlock
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.IsPlaying
    L1_2 = A0_2._data
    L2_2 = L1_2
    L1_2 = L1_2.IsReachedTrueEnding
    L1_2 = not L1_2 and L1_2
  end
  return L1_2
end
L0_1.is_finish = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "ClockParkSelectTapePageFadeIn" then
    L3_2 = A0_2
    L2_2 = A0_2.try_play_anim
    L2_2(L3_2)
  end
end
L0_1._on_ui_animation_event = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.CheckScriptFinish
  L3_2 = A0_2._data
  L3_2 = L3_2.ID
  L4_2 = false
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SetScriptFinish
    L3_2 = A0_2._data
    L3_2 = L3_2.ID
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SetScriptFinish
    L3_2 = A0_2._data
    L3_2 = L3_2.ID
    L4_2 = false
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SetScriptUnlock
    L3_2 = A0_2._data
    L3_2 = L3_2.ID
    L1_2(L2_2, L3_2)
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.SetScriptUnlock
    L3_2 = A0_2._data
    L3_2 = L3_2.ID
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.CheckScriptFinish
    L3_2 = A0_2._data
    L3_2 = L3_2.ID
    L4_2 = true
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    if L1_2 then
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.SetScriptFinish
      L3_2 = A0_2._data
      L3_2 = L3_2.ID
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.SetScriptUnlock
      L3_2 = A0_2._data
      L3_2 = L3_2.ID
      L1_2(L2_2, L3_2)
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.SetScriptUnlock
      L3_2 = A0_2._data
      L3_2 = L3_2.ID
      L4_2 = true
      L1_2(L2_2, L3_2, L4_2)
    else
      L1_2 = L1_1
      L2_2 = L1_2
      L1_2 = L1_2.CheckScriptUnlock
      L3_2 = A0_2._data
      L3_2 = L3_2.ID
      L4_2 = true
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.anim_root
        L2_2 = L1_2
        L1_2 = L1_2.Play
        L3_2 = L5_1
        L1_2(L2_2, L3_2)
        L1_2 = L1_1
        L2_2 = L1_2
        L1_2 = L1_2.SetScriptUnlock
        L3_2 = A0_2._data
        L3_2 = L3_2.ID
        L4_2 = true
        L1_2(L2_2, L3_2, L4_2)
      end
    end
  end
end
L0_1.try_play_anim = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  A0_2._special_unlock = true
  if L1_2 ~= nil then
    L2_2 = L1_2.ScriptUnlockCondition
    L2_2 = L2_2.Length
    if 0 < L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.ConditionCheckerUtil
      L2_2 = L2_2.DoCheckConditions
      L3_2 = L1_2.ScriptUnlockCondition
      L2_2 = L2_2(L3_2)
      A0_2._special_unlock = L2_2
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_new_start
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._data
  L4_2 = L4_2.ID
  L4_2 = L4_2 == 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ScriptTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_progressing_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.ScriptTitle
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_special_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._special_unlock
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._special_unlock
  L4_2 = A0_2._data
  L4_2 = L4_2.IsPlaying
  L4_2 = A0_2._data
  L5_2 = L4_2
  L4_2 = L4_2.IsReachedTrueEnding
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2 and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.IsPlaying
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_effect
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_playing
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_normal
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_finish_effect
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L3_2 = L2_2
    L2_2 = L2_2.IsReachedTrueEnding
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_playing
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_normal
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_finish_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_playing
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_normal
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = true
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_finish_effect
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_unfinish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._special_unlock
  if L4_2 then
    L4_2 = A0_2._data
    L4_2 = L4_2.IsPlaying
    L4_2 = A0_2._data
    L5_2 = L4_2
    L4_2 = L4_2.IsReachedTrueEnding
    L4_2 = L4_2(L5_2)
    L4_2 = not L4_2 and L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_finish
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._special_unlock
  if L4_2 then
    L4_2 = A0_2._data
    L4_2 = L4_2.IsPlaying
    L4_2 = A0_2._data
    L5_2 = L4_2
    L4_2 = L4_2.IsReachedTrueEnding
    L4_2 = not L4_2 and L4_2
  end
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.GetReachedEndChapterCount
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._data
  L3_2 = L3_2.TotalEndChapterCount
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_branch
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._data
  L6_2 = L6_2.IsPlaying
  L6_2 = not L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_branch_finish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._data
  L6_2 = L6_2.IsPlaying
  L6_2 = not L6_2 and L2_2 == L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_branch_unfinish
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A0_2._data
  L6_2 = L6_2.IsPlaying
  L6_2 = not L6_2 and L2_2 < L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "ClockParkScriptNew"
  L7_2 = A0_2._data
  L7_2 = L7_2.ID
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_reddot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._refresh = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._special_unlock
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._get_special_lock_script_name
    L1_2 = L1_2(L2_2)
    L2_2 = G
    L2_2 = L2_2.TextmapStatic
    L2_2 = L2_2.GetText
    L3_2 = L3_1
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    L3_2 = G
    L3_2 = L3_2.NotifyManager
    L3_2 = L3_2.notify
    L4_2 = G
    L4_2 = L4_2.CS
    L4_2 = L4_2.NotifyType
    L4_2 = L4_2.UIPileToastMessageString
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
    return
  else
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetPlayingClockParkScriptData
    L1_2 = L1_2(L2_2)
    if L1_2 ~= nil then
      L2_2 = A0_2._data
      if L2_2 ~= L1_2 then
        L2_2 = L1_2.IsInfinite
        if L2_2 == true then
          L2_2 = G
          L2_2 = L2_2.NotifyManager
          L2_2 = L2_2.notify
          L3_2 = G
          L3_2 = L3_2.CS
          L3_2 = L3_2.NotifyType
          L3_2 = L3_2.UIPileToastMessageTextID
          L4_2 = "UIText_ClockPark_EndlessMode_Playing_Toast"
          L2_2(L3_2, L4_2)
        else
          L2_2 = G
          L2_2 = L2_2.NotifyManager
          L2_2 = L2_2.notify
          L3_2 = G
          L3_2 = L3_2.CS
          L3_2 = L3_2.NotifyType
          L3_2 = L3_2.UIPileToastMessageTextID
          L4_2 = L4_1
          L2_2(L3_2, L4_2)
        end
        return
      end
    end
    L2_2 = L1_1
    L3_2 = L2_2
    L2_2 = L2_2.SetScriptUnlock
    L4_2 = A0_2._data
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.ActivityClockPark.Entrance.ActivityClockParkScriptDetailPage"
    L4_2 = A0_2._data
    L4_2 = L4_2.ID
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._data
  L1_2 = L1_2.ID
  L1_2 = L1_2 - 1
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ClockParkScriptConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = L2_2.ScriptTitle
    return L3_2(L4_2)
  else
    L3_2 = nil
    return L3_2
  end
end
L0_1._get_special_lock_script_name = L7_1
return L0_1
