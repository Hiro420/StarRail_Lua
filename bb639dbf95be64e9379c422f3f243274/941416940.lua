local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Renown.AlleyRenownRewardInfoRowBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyRenownRewardInfoRow"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "AlleyPtRewardInfoItem_Unlock"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.AlleyModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_detail
  L4_2 = A0_2._on_btn_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.AlleyRenownLevelUp
  L4_2 = A0_2._on_renown_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._parent
    L1_3 = A0_2
    L0_3.select_panel = L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = true
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.setup_in_control_button_enable
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onSelectTrigger = nil
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2.onDeselectTrigger = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback_owner = A1_2
  A0_2._click_callback = A2_2
end
L0_1.register_btn_callback = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.anim_unlock
  if L4_2 ~= nil then
    L4_2 = A0_2._has_played
    if L4_2 then
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.UIAnimationUtils
      L4_2 = L4_2.PlayFromBegin
      L5_2 = A0_2._binder
      L5_2 = L5_2.anim_unlock
      L6_2 = L1_1
      L4_2(L5_2, L6_2)
      L4_2 = A0_2._binder
      L4_2 = L4_2.anim_unlock
      L5_2 = L4_2
      L4_2 = L4_2.Stop
      L4_2(L5_2)
    end
  end
  L4_2 = A1_2.Level
  A0_2._level = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_level
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = A0_2._level
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._refresh_view
  L6_2 = A1_2.RewardID
  L7_2 = A1_2.Level
  L7_2 = A3_2 >= L7_2
  L8_2 = A2_2
  L9_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view_by_reward = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = A1_2.ID
  A0_2._quest_id = L3_2
  L3_2 = A1_2.DataRow
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.FinishWayExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.FinishWayID
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L3_2.QuestTitle
  L8_2 = L4_2.ParamInt1
  L9_2 = L4_2.ParamInt2
  L10_2 = L4_2.ParamInt3
  L11_2 = L4_2.Progress
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_progress_cur
  if L5_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_progress_total
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_progress_cur
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetText
      L7_2 = A1_2.Progress
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_progress_total
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetText
      L7_2 = A1_2.TotalProgress
      L5_2(L6_2, L7_2)
  end
  else
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_progress
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_progress
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetText
      L7_2 = tostring
      L8_2 = A1_2.Progress
      L7_2 = L7_2(L8_2)
      L8_2 = "/"
      L9_2 = tostring
      L10_2 = A1_2.TotalProgress
      L9_2 = L9_2(L10_2)
      L7_2 = L7_2 .. L8_2 .. L9_2
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = A1_2.Status
  L7_2 = A0_2
  L6_2 = A0_2._refresh_view
  L8_2 = L3_2.RewardID
  L9_2 = CS
  L9_2 = L9_2.BLHLCHNAJKK
  L9_2 = L9_2.CDJHHIHBNMN
  L9_2 = L5_2 == L9_2
  L10_2 = CS
  L10_2 = L10_2.BLHLCHNAJKK
  L10_2 = L10_2.FMLBEGJJHMJ
  L10_2 = L5_2 == L10_2
  L11_2 = A2_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.setup_view_by_quest = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
  A0_2._has_played = true
end
L0_1.play_unlock_anim = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._can_receive = A2_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh_reward_info
  L7_2 = A1_2
  L8_2 = A3_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_btn_state
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_reward_view
  L5_2(L6_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.RewardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.IsSpecial
  A0_2._is_special = L4_2
  A0_2._is_reward_taken = A2_2
  A0_2._reward_id = A1_2
  L4_2 = G
  L4_2 = L4_2.RewardUtils
  L4_2 = L4_2.CreateRewardItemTableSorted
  L5_2 = A0_2._reward_id
  L4_2 = L4_2(L5_2)
  A0_2._reward_data = L4_2
end
L0_1._refresh_reward_info = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_lock
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_lock
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = not A3_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_got
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 or L6_2
  if A2_2 then
    L6_2 = A3_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A1_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_progress_count
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_progress_count
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_get
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A1_2 or L6_2
  L6_2 = A1_2 and not A2_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.canvas_group
  if L4_2 then
    if A2_2 and A3_2 then
      L4_2 = A0_2._binder
      L4_2 = L4_2.canvas_group
      L4_2.alpha = 1
    else
      L4_2 = A0_2._binder
      L4_2 = L4_2.canvas_group
      L4_2.alpha = 0
    end
  end
end
L0_1._refresh_btn_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_special
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rare
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_special
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._reward_data
  L1_2(L2_2, L3_2)
end
L0_1._refresh_reward_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_callback_owner
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_callback_owner
      L3_2 = A0_2._level
      if not L3_2 then
        L3_2 = A0_2._quest_id
      end
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_get = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._reward_data
    L8_2 = L8_2[L5_2]
    L8_2 = L8_2.ItemID
    L6_2(L7_2, L8_2)
  end
  L2_2 = {}
  L2_2.items = L1_2
  L3_2 = G
  L3_2 = L3_2.InventoryUtils
  L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1._on_btn_detail = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.CurRenownLevel
  L2_2 = A0_2._level
  if L1_2 >= L2_2 then
    L2_2 = A0_2._can_receive
    if not L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2.play_unlock_anim
      L2_2(L3_2)
    end
  end
end
L0_1._on_renown_level_up = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_get
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_tip_get
  L2_2.IsShowTip = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.mono_btn_detail
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_key_map_zoom
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_in_control_button_enable = L3_1
return L0_1
