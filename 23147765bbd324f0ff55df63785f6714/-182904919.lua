local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
L0_1.Hard = "#F15454"
L0_1.Normal = "#B0966E"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TreasureDungeonEntrancePanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
L2_1 = "UIText_TreasureDungeon_Challenge_Progress"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ActivityForceRefreshRedDot
  L4_2 = A0_2._on_refresh_reddot
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3)
    L0_3 = G
    L0_3 = L0_3.Utils
    L0_3 = L0_3.invoke_callback
    L1_3 = A0_2._selected_callback
    L2_3 = A0_2._selected_callback_self
    L3_3 = A0_2._data
    L0_3(L1_3, L2_3, L3_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._unlock_timer
    if L0_3 ~= nil then
      L0_3 = A0_2._unlock_timer
      L1_3 = L0_3
      L0_3 = L0_3.reset
      L0_3(L1_3)
      L0_3 = A0_2._unlock_timer
      L1_3 = L0_3
      L0_3 = L0_3.stop
      L0_3(L1_3)
    end
    L0_3 = A0_2._binder
    if L0_3 ~= nil then
      L0_3 = A0_2._binder
      L0_3 = L0_3.node_lock
      L1_3 = L0_3
      L0_3 = L0_3.SafeSetActive
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim
  L5_2 = L4_2
  L4_2 = L4_2.GetClip
  L6_2 = "QuestTreasureDungeon_List_Unlock"
  L4_2 = L4_2(L5_2, L6_2)
  L4_2 = L4_2.length
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._unlock_timer = L1_2
  L1_2 = {}
  A0_2._id_played = L1_2
end
L1_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._selected_callback = A1_2
  A0_2._selected_callback_self = A2_2
end
L1_1.register_selected_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  L3_2 = L2_2
  L2_2 = L2_2.DataPrepared
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2
  L2_2 = L2_2.ThenLuaAction
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._refresh
    L0_3(L1_3)
  end
  L2_2(L3_2, L4_2)
end
L1_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L1_1.register_confirm_callback = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L1_1.get_btn_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._is_hard
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.HardLevelData
    if L1_2 then
      goto lbl_11
    end
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.SimpleLevelData
  ::lbl_11::
  A0_2._level_data = L1_2
  L1_2 = A0_2._level_data
  L1_2 = L1_2.IsOpened
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_entrance
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_info
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_done
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L10_2 = A0_2
    L9_2 = A0_2._is_finished
    L9_2, L10_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2)
  end
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2._refresh_entrance_view
    L2_2(L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._try_play_unlock
    L2_2(L3_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._refresh_lock_view
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh_cur_position
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reddot
  L2_2(L3_2)
end
L1_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  L1_2 = A0_2._data
  L1_2 = L1_2.SimpleLevelData
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L1_1._is_hard = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._level_data
  L1_2 = A0_2._level_data
  L1_2 = L1_2 ~= nil and L1_2
  return L1_2
end
L1_1._is_finished = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img
  L4_2 = A0_2._level_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.EntranceIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._level_data
  L1_2 = L1_2.ShowFloor
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_index
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = "0"
  L5_2 = tostring
  L6_2 = A0_2._data
  L6_2 = L6_2.Index
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2 .. L5_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._level_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_sub_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L5_2 = A0_2
  L4_2 = A0_2._is_finished
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._is_finished
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    if 0 < L1_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_sub_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L2_1
      L5_2 = A0_2._level_data
      L5_2 = L5_2.HighestFloorRecord
      L2_2(L3_2, L4_2, L5_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.txt_sub_title
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = "UIText_RogueChallengeActivity_NoRecord"
      L2_2(L3_2, L4_2)
    end
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_difficulty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L5_2 = A0_2
  L4_2 = A0_2._is_hard
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = "UIText_TreasureDungeon_Challenge_Hard"
    if L4_2 then
      goto lbl_64
    end
  end
  L4_2 = "UIText_TreasureDungeon_Challenge_Normal"
  ::lbl_64::
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L4_2 = A0_2
  L3_2 = A0_2._is_hard
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L0_1.Hard
    if L3_2 then
      goto lbl_76
    end
  end
  L3_2 = L0_1.Normal
  ::lbl_76::
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_difficulty
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_index
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_outline
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hard
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L6_2 = A0_2
  L5_2 = A0_2._is_hard
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._refresh_entrance_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureDungeonActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2._get_id
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._id_played
  L3_2 = L3_2[L2_2]
  if L3_2 then
    return
  end
  L3_2 = A0_2._level_data
  L3_2 = L3_2.IsOpened
  if L3_2 then
    L3_2 = L1_2.NewDungeonList
    L4_2 = L3_2
    L3_2 = L3_2.Contains
    L5_2 = L2_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = A0_2._id_played
      L3_2[L2_2] = true
      L3_2 = A0_2._binder
      L3_2 = L3_2.node_lock
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = true
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._binder
      L3_2 = L3_2.remain_timer
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetActive
      L5_2 = false
      L3_2(L4_2, L5_2)
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.UIAnimationUtils
      L3_2 = L3_2.PlayFromBegin
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim
      L5_2 = "QuestTreasureDungeon_List_Unlock"
      L3_2(L4_2, L5_2)
      L3_2 = A0_2._unlock_timer
      L4_2 = L3_2
      L3_2 = L3_2.reset
      L3_2(L4_2)
      L3_2 = A0_2._unlock_timer
      L4_2 = L3_2
      L3_2 = L3_2.start
      L3_2(L4_2)
    end
  end
end
L1_1._try_play_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img
  L4_2 = A0_2._level_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.EntranceIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_lock
  L4_2 = A0_2._level_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.EntranceIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_outline
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L0_1.Normal
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._level_data
  L3_2 = L3_2.IsInSchedule
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.remain_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTargetTimeByTimeStamp
  L3_2 = A0_2._level_data
  L3_2 = L3_2.BeginTimeStamp
  L4_2 = A0_2._on_timer_expire
  L5_2 = A0_2
  L6_2 = 2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L1_1._refresh_lock_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_cur
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsDoing
  L1_2(L2_2, L3_2)
end
L1_1._refresh_cur_position = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._get_id
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "TreasureDungeonNewDungeon"
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L1_1._refresh_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._is_hard
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._data
    L1_2 = L1_2.HardLevelData
    L1_2 = L1_2.ID
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.SimpleLevelData
  L1_2 = L1_2.ID
  ::lbl_13::
  return L1_2
end
L1_1._get_id = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._data
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reddot
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_play_unlock
  L1_2(L2_2)
end
L1_1._on_refresh_reddot = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L1_1._on_timer_expire = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._level_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._level_data
  L1_2 = L1_2.IsInSchedule
  if not L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_TreasureDungeon_Challenge_Locked"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._level_data
  L1_2 = L1_2.IsPreDungeonFinished
  if not L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.GameCore
    L1_2 = L1_2.ToastPile
    L1_2 = L1_2()
    L1_2.DescTextID = "UIText_TreasureDungeon_Challenge_PreChallenge"
    L2_2 = A0_2._level_data
    L2_2 = L2_2.PreDungeonName
    L1_2.TextIDParam = L2_2
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.UIPileToastMessageStruct
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._record_current_seen
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._data
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_btn_root = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.ActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureDungeonActivityData
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = A0_2._data
    L2_2 = L2_2.SimpleLevelData
    L2_2 = L2_2.IsFinished
    if L2_2 then
      L2_2 = A0_2._data
      L2_2 = L2_2.HardLevelData
      if L2_2 then
        goto lbl_22
      end
    end
    L2_2 = A0_2._data
    L2_2 = L2_2.SimpleLevelData
    ::lbl_22::
    L4_2 = L1_2
    L3_2 = L1_2.RecordSeenDungeon
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L1_1._record_current_seen = L3_1
return L1_1
