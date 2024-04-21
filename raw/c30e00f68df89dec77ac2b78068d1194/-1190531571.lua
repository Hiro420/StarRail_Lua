local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.BattlePass.Common.BattlePassRewardIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.BattlePassModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.BPRewardStatus
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "BattlePassRewardIconPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._data = nil
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.BattlePassNoticeRewardUnlock
  L4_2 = A0_2._on_play_unlock_anim
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3.get_first_selected_object
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    L0_3(L1_3, L2_3, L3_3, L4_3, L5_3)
    L0_3 = A0_2._is_available
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = {}
      L3_3 = "ReceiveReward"
      L4_3 = "BattlePassMainPageChangeEquipment"
      L5_3 = "ActionGroup_Return"
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L2_3[3] = L5_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = {}
      L3_3 = "Menu_Confirm"
      L4_3 = "BattlePassMainPageChangeEquipment"
      L5_3 = "ActionGroup_Return"
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L2_3[3] = L5_3
      L0_3(L1_3, L2_3)
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayToEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_unlock
  L3_2 = "ItemIcon_RewardHint_Once"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_effect
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_unlock_effect
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available_effect
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_available_effect
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L2_1._on_unload = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2
  L2_2 = A0_2._reset_unlock
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_status_view
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.RedDotModule
  L2_2 = L2_2.Instance
  L3_2 = L2_2
  L2_2 = L2_2.bind_reddot
  L4_2 = "BattlePassRewardPoint"
  L6_2 = A0_2
  L5_2 = A0_2._get_point_reddot_key
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.reddot
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  L2_2 = L2_2.IsOption
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.OptionItemID
    A0_2._config_id = L2_2
    A0_2._num = 1
  else
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.CreateRewardItemTable
    L3_2 = A0_2._data
    L3_2 = L3_2.RewardID
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2[1]
    L3_2 = L3_2.ItemID
    A0_2._config_id = L3_2
    L3_2 = L2_2[1]
    L3_2 = L3_2.Count
    A0_2._num = L3_2
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._config_id
  L2_2 = L2_2(L3_2)
  A0_2._row = L2_2
end
L2_1._refresh_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item
  L2_2 = L1_2
  L1_2 = L1_2.setup_view_without_callback
  L3_2 = A0_2._config_id
  L4_2 = A0_2._num
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._setup_icon_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsFree
  L3_2 = L0_1.BattlePassData
  L3_2 = L3_2.IsPaidRewardUnlocked
  L3_2 = not L3_2 and L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item
  L2_2 = L1_2
  L1_2 = L1_2.set_attachment_getted
  L3_2 = A0_2._data
  L3_2 = L3_2.Status
  L4_2 = L1_1.Taken
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_item
  L2_2 = L1_2
  L1_2 = L1_2.set_black
  L3_2 = A0_2._data
  L3_2 = L3_2.Status
  L4_2 = L1_1.Taken
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Status
  L2_2 = L1_1.Available
  L1_2 = L1_2 == L2_2
  A0_2._is_available = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_available
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_available
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._safe_create_available_effect
    L1_2(L2_2)
  end
end
L2_1._setup_status_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available_effect
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.load_available
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.load_available
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.load_available
    L2_2 = L2_2.Prefab
    L2_2 = L2_2.name
    L1_2.name = L2_2
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.refind
    L2_2(L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._safe_create_available_effect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_effect
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.load_unlock
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.load_unlock
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.load_unlock
    L2_2 = L2_2.Prefab
    L2_2 = L2_2.name
    L1_2.name = L2_2
    L2_2 = A0_2._binder
    L3_2 = L2_2
    L2_2 = L2_2.refind
    L2_2(L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L2_1._safe_create_unlock_effect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_create_available_effect
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._safe_create_unlock_effect
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_available
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_unlock
  L3_2 = "ItemIcon_RewardHint_Once"
  L1_2(L2_2, L3_2)
end
L2_1._play_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromEnd
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_unlock
  L3_2 = "ItemIcon_RewardHint_Once"
  L1_2(L2_2, L3_2)
end
L2_1._reset_unlock = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.Status
  L2_2 = L1_1.Available
  if L1_2 ~= L2_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.ItemDetailDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._config_id
    L2_2(L3_2, L4_2)
    return
  end
  L1_2 = A0_2._data
  L1_2 = L1_2.IsOption
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._take_option_reward
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._take_simple_reward
    L1_2(L2_2)
  end
end
L2_1._on_btn_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.TakeReward
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  L4_2 = A0_2._data
  L4_2 = L4_2.Type
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._take_simple_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_show
  L2_2 = "Ui.BattlePass.BattlePassRewardChoiceDialog"
  L3_2 = A0_2._data
  L4_2 = false
  L5_2 = A0_2._on_option_chosen
  L6_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L3_2 = L1_2
  L2_2 = L1_2.close_merge_node
  L2_2(L3_2)
end
L2_1._take_option_reward = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A1_2 then
    return
  end
  L3_2 = A2_2[0]
  L4_2 = L0_1
  L5_2 = L4_2
  L4_2 = L4_2.TakeReward
  L6_2 = L3_2.Level
  L7_2 = CS
  L7_2 = L7_2.CPLHLMCICGP
  L7_2 = L7_2.FBEHJGCBMCG
  L8_2 = L3_2.OptionalRewardId
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L2_1._on_option_chosen = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2.level
  L3_2 = A0_2._data
  L3_2 = L3_2.Level
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.Status
  L3_2 = L1_1.Available
  if L2_2 ~= L3_2 then
    return
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.IsFree
  if L2_2 then
    L2_2 = A1_2.play_unlocked_free
    if L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._play_unlock
      L2_2(L3_2)
  end
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.IsFree
    if not L2_2 then
      L2_2 = A1_2.play_unlocked_paid
      if L2_2 then
        L3_2 = A0_2
        L2_2 = A0_2._play_unlock
        L2_2(L3_2)
      end
    end
  end
end
L2_1._on_play_unlock_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.BattlePassUtils
  L1_2 = L1_2.GetRewardRedDotKey
  L2_2 = A0_2._data
  return L1_2(L2_2)
end
L2_1._get_point_reddot_key = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
