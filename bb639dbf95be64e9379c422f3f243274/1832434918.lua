local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardListPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = "CommonAlphaFadeIn_15f"
L2_1 = "CommonAlphaFadeOut_15f"
L3_1 = "BattlePass_AdvanceVersionUnlock"
L4_1 = 0.05
L5_1 = G
L5_1 = L5_1.Class
L6_1 = "BattlePassRewardListPanel"
L7_1 = G
L7_1 = L7_1.BasePanel
L5_1 = L5_1(L6_1, L7_1)
function L6_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._reward_datas = L1_2
  A0_2._special_reward_shown = true
end
L5_1.ctor = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get_all
  L4_2 = A0_2._on_btn_get_all
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  function L2_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A0_2._on_snap_nearest_changed
    L3_3 = A0_2
    L4_3 = A0_3
    L5_3 = A1_3
    L2_3(L3_3, L4_3, L5_3)
  end
  L1_2.mOnSnapNearestChanged = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTimer
  L3_2 = A0_2._on_unlock_anim_timer
  L4_2 = A0_2
  L5_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L1_2.IsPause = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEvent
  L3_2 = L3_1
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_anim_purchased_end
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.CleanTimer
  L1_2(L2_2)
end
L5_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = A0_2._in_unlock_anim
  if L1_2 then
    return
  end
  A0_2._anim_type_purchased = true
end
L5_1.set_type_anim = L6_1
function L6_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._in_unlock_anim
  if L2_2 then
    return
  end
  A0_2._anim_old_level = A1_2
end
L5_1.set_level_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._anim_type_purchased
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._play_purchased_anim
    L1_2(L2_2)
    L1_2 = true
    return L1_2
  else
    L2_2 = A0_2
    L1_2 = A0_2._try_play_unlock_anim
    L3_2 = false
    return L1_2(L2_2, L3_2)
  end
end
L5_1.start_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._in_unlock_anim = true
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 1
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2.is_destroyed
    if not L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.is_active_in_hierarchy
      L0_3 = L0_3(L1_3)
      if L0_3 then
        L0_3 = A0_2._binder
        L0_3 = L0_3.node_lock
        L1_3 = L0_3
        L0_3 = L0_3.SafeSetActive
        L2_3 = true
        L0_3(L1_3, L2_3)
        L0_3 = A0_2._binder
        L0_3 = L0_3.anim_purchased
        L1_3 = L0_3
        L0_3 = L0_3.Play
        L2_3 = L3_1
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2(L2_2, L3_2)
end
L5_1._play_purchased_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._in_unlock_anim = false
  A0_2._anim_type_purchased = false
  L2_2 = A0_2
  L1_2 = A0_2._try_play_unlock_anim
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L5_1._on_anim_purchased_end = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._in_unlock_anim
  if L2_2 then
    L2_2 = false
    return L2_2
  end
  if not A1_2 then
    L2_2 = A0_2._anim_old_level
    if L2_2 == nil then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = A0_2._anim_old_level
  if L2_2 == nil then
    L2_2 = L0_1.BattlePassData
    L2_2 = L2_2.CurrentLevel
    if L2_2 then
      goto lbl_21
    end
  end
  L2_2 = A0_2._anim_old_level
  ::lbl_21::
  A0_2._last_unlocked_free_level = L2_2
  if A1_2 then
    L2_2 = 0
    if L2_2 then
      goto lbl_28
    end
  end
  L2_2 = A0_2._anim_old_level
  ::lbl_28::
  A0_2._last_unlocked_paid_level = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._get_first_shown_level
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    L3_2 = false
    return L3_2
  end
  L3_2 = math
  L3_2 = L3_2.max
  L4_2 = L2_2 - 1
  L5_2 = math
  L5_2 = L5_2.min
  L6_2 = A0_2._last_unlocked_free_level
  L7_2 = A0_2._last_unlocked_paid_level
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  A0_2._anim_start_level = L3_2
  A0_2._in_unlock_anim = true
  L3_2 = A0_2._binder
  L3_2 = L3_2.mono_timer
  L3_2.IsPause = false
  L3_2 = true
  return L3_2
end
L5_1._try_play_unlock_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_rewards
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.UserObjectData
    if L2_2 ~= nil then
      goto lbl_13
    end
  end
  L2_2 = nil
  do return L2_2 end
  ::lbl_13::
  L2_2 = L1_2.UserObjectData
  L3_2 = L2_2
  L2_2 = L2_2.get_level
  return L2_2(L3_2)
end
L5_1._get_first_shown_level = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._anim_start_level
  L2_2 = L2_2 + A1_2
  L3_2 = L0_1.BattlePassData
  L3_2 = L3_2.CurrentLevel
  if L2_2 <= L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._notice_play_unlock_anim
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._stop_unlock_anim_timer
    L3_2(L4_2)
  end
end
L5_1._on_unlock_anim_timer = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L2_2.level = A1_2
  L3_2 = A0_2._last_unlocked_free_level
  L3_2 = A1_2 > L3_2
  L2_2.play_unlocked_free = L3_2
  L3_2 = A0_2._last_unlocked_paid_level
  L3_2 = A1_2 > L3_2
  L2_2.play_unlocked_paid = L3_2
  L3_2 = G
  L3_2 = L3_2.NotifyManager
  L3_2 = L3_2.notify
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.BattlePassNoticeRewardUnlock
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L5_1._notice_play_unlock_anim = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L1_2.IsPause = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.Reset
  L1_2(L2_2)
  A0_2._in_unlock_anim = false
  A0_2._anim_old_level = nil
end
L5_1._stop_unlock_anim_timer = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._to_new = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_view
  L2_2(L3_2)
end
L5_1.setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_reward_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_special_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_receive_view
  L1_2(L2_2)
  L1_2 = L0_1.BattlePassData
  L1_2 = L1_2.PurchaseType
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.NCPMPNBOJBP
  L4_2 = L4_2.FAOCNDACICE
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
end
L5_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._reward_datas = L1_2
  L1_2 = L0_1.RewardDatas
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = A0_2._reward_datas
    L8_2 = L1_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._to_new
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_left_level_when_new
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 - 1
    L3_2 = A0_2._binder
    L3_2 = L3_2.list_rewards
    L4_2 = L3_2
    L3_2 = L3_2.SetListItemCountAndMove
    L5_2 = A0_2._reward_datas
    L5_2 = #L5_2
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.list_rewards
    L4_2 = L3_2
    L3_2 = L3_2.RefreshAllShownItem
    L3_2(L4_2)
    A0_2._to_new = false
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_rewards
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._reward_datas
    L4_2 = #L4_2
    L5_2 = false
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_rewards
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L5_1._setup_reward_list = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_special_reward
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
end
L5_1._refresh_special_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get_all
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = L0_1
  L4_2 = L3_2
  L3_2 = L3_2.HasAvailableReward
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L5_1._setup_receive_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._get_left_level_when_new
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2 - 1
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_rewards
  L3_2 = L2_2
  L2_2 = L2_2.MovePanelToItemIndex
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.set_navigation_target
  L5_2 = A0_2
  L4_2 = A0_2.get_first_selected_object
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L5_1.move_to_new = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 1
  L3_2 = L0_1.BattlePassData
  L3_2 = L3_2.CurrentLevel
  L3_2 = L3_2 - 2
  return L1_2(L2_2, L3_2)
end
L5_1._get_left_level_when_new = L6_1
function L6_1(A0_2, A1_2, A2_2)
  A0_2._tail_item_changed_callback = A1_2
  A0_2._tail_item_changed_handler = A2_2
end
L5_1.register_tail_reward_changed = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = A2_2 % 2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.BattlePassRewardItemPanel
    L8_2 = G
    L8_2 = L8_2.BattlePassRewardItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.CoroutineUtils
  L6_2 = L6_2.InvokeAfterFrames
  L7_2 = 2
  function L8_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._set_item_border_navi
    L2_3 = A1_2
    L3_3 = L4_2
    L4_3 = A2_2
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L6_2(L7_2, L8_2)
  return L3_2
end
L5_1._on_reward_item_changed = L6_1
function L6_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L5_2 = A2_2
  L4_2 = A2_2.get_free_static_list
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.ScrollRect
  L4_2.mScrollRect = L5_2
  L5_2 = A2_2
  L4_2 = A2_2.get_paid_static_list
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2.ScrollRect
  L4_2.mScrollRect = L5_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_rewards
  L5_2 = L4_2
  L4_2 = L4_2.GetShownItemByItemIndex
  L6_2 = A3_2 - 1
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 ~= nil then
    L5_2 = L4_2.UserObjectData
    if L5_2 ~= nil then
      L5_2 = L4_2.UserObjectData
      L7_2 = A2_2
      L6_2 = A2_2.get_free_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = L5_2
      L8_2 = L5_2.get_free_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Left
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = A2_2
      L6_2 = A2_2.get_paid_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = L5_2
      L8_2 = L5_2.get_paid_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Left
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.get_free_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = A2_2
      L8_2 = A2_2.get_free_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Right
      L6_2(L7_2, L8_2, L9_2)
      L7_2 = L5_2
      L6_2 = L5_2.get_paid_static_list
      L6_2 = L6_2(L7_2)
      L7_2 = L6_2
      L6_2 = L6_2.SetDirectionRefListview
      L9_2 = A2_2
      L8_2 = A2_2.get_paid_static_list
      L8_2 = L8_2(L9_2)
      L9_2 = CS
      L9_2 = L9_2.UnityEngine
      L9_2 = L9_2.EventSystems
      L9_2 = L9_2.MoveDirection
      L9_2 = L9_2.Right
      L6_2(L7_2, L8_2, L9_2)
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.list_rewards
  L6_2 = L5_2
  L5_2 = L5_2.GetShownItemByItemIndex
  L7_2 = A3_2 + 1
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 ~= nil then
    L6_2 = L5_2.UserObjectData
    if L6_2 ~= nil then
      L6_2 = L5_2.UserObjectData
      L8_2 = A2_2
      L7_2 = A2_2.get_free_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = L6_2
      L9_2 = L6_2.get_free_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Right
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = A2_2
      L7_2 = A2_2.get_paid_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = L6_2
      L9_2 = L6_2.get_paid_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Right
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.get_free_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = A2_2
      L9_2 = A2_2.get_free_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Left
      L7_2(L8_2, L9_2, L10_2)
      L8_2 = L6_2
      L7_2 = L6_2.get_paid_static_list
      L7_2 = L7_2(L8_2)
      L8_2 = L7_2
      L7_2 = L7_2.SetDirectionRefListview
      L10_2 = A2_2
      L9_2 = A2_2.get_paid_static_list
      L9_2 = L9_2(L10_2)
      L10_2 = CS
      L10_2 = L10_2.UnityEngine
      L10_2 = L10_2.EventSystems
      L10_2 = L10_2.MoveDirection
      L10_2 = L10_2.Left
      L7_2(L8_2, L9_2, L10_2)
    end
  end
end
L5_1._set_item_border_navi = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A2_2.ItemIndex
  L5_2 = A0_2
  L4_2 = A0_2._setup_special_reward
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L5_1._on_snap_nearest_changed = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetNextSpecialRewardLevel
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2 ~= 0 and L2_2 ~= A1_2
  L5_2 = A0_2
  L4_2 = A0_2._show_special_reward
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._reward_datas
    L4_2 = L4_2[L2_2]
    L5_2 = A0_2._binder
    L5_2 = L5_2.panel_special_reward
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L4_2
    L5_2(L6_2, L7_2)
  end
end
L5_1._setup_special_reward = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._special_reward_shown
  if A1_2 == L2_2 then
    return
  end
  A0_2._special_reward_shown = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group_special_reward
  L2_2.blocksRaycasts = A1_2
  if A1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_special_reward
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayFromBegin
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_special_reward
    L4_2 = L2_1
    L2_2(L3_2, L4_2)
  end
end
L5_1._show_special_reward = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAvailableOptionPoints
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Count
  if L2_2 == 0 then
    L2_2 = L0_1
    L3_2 = L2_2
    L2_2 = L2_2.TakeAllReward
    L2_2(L3_2)
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_show
  L3_2 = "Ui.BattlePass.BattlePassRewardChoiceDialog"
  L4_2 = L1_2
  L5_2 = true
  L6_2 = A0_2._on_option_chosen
  L7_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.close_merge_node
  L3_2(L4_2)
end
L5_1._on_btn_get_all = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if not A1_2 then
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.HasAvailableReward
    L5_2 = true
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = L0_1
      L4_2 = L3_2
      L3_2 = L3_2.TakeAllReward
      L3_2(L4_2)
    end
  else
    L3_2 = L0_1
    L4_2 = L3_2
    L3_2 = L3_2.TakeAllReward
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L5_1._on_option_chosen = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 0
  L3_2 = L0_1.BattlePassData
  L3_2 = L3_2.CurrentLevel
  L3_2 = L3_2 - 1
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.list_rewards
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_20
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_20::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L5_1.get_first_selected_object = L6_1
return L5_1
