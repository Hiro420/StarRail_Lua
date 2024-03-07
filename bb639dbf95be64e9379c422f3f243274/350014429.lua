local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnKeyPointRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnKeyPointRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RewardBoxInfo_Normal"
L2_1 = "RewardBoxInfo_Remind"
L3_1 = "RewardBoxInfo_Get"
L4_1 = {}
L4_1[3] = "Color_Blue"
L4_1[4] = "Color_Purple"
L4_1[5] = "Color_Gold"
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  A0_2._can_play_active_anim = true
  A0_2._parent_page = A3_2
  A0_2._is_unlock = false
  A0_2._is_received = false
  A0_2._is_option_reward = false
  A0_2.point_id = A4_2
end
L0_1.ctor = L5_1
function L5_1(A0_2)
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
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._parent_page
    L0_3.is_focus_on_point_reward = true
    L0_3 = A0_2._parent_page
    L1_3 = A0_2._binder
    L1_3 = L1_3.btn_root
    L1_3 = L1_3.gameObject
    L0_3.last_focus_on_point_reward_obj = L1_3
    L0_3 = A0_2._is_unlock
    if L0_3 then
      L0_3 = A0_2._is_received
      if not L0_3 then
        L0_3 = A0_2._parent_page
        L1_3 = L0_3
        L0_3 = L0_3.setup_short_cut_hint_panel
        L2_3 = {}
        L3_3 = "ReceiveReward"
        L4_3 = "ActionGroup_Return"
        L2_3[1] = L3_3
        L2_3[2] = L4_3
        L0_3(L1_3, L2_3)
    end
    else
      L0_3 = A0_2._parent_page
      L1_3 = L0_3
      L0_3 = L0_3.setup_short_cut_hint_panel
      L2_3 = {}
      L3_3 = "ActionGroup_Return"
      L2_3[1] = L3_3
      L0_3(L1_3, L2_3)
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2.ConfigID
  A0_2._item_id = L3_2
  A0_2._is_option_reward = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._item_id
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_icon
  L6_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_rarity
  L6_2 = L3_2.Rarity
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_count
  L6_2 = A1_2.Count
  L4_2(L5_2, L6_2)
end
L0_1.set_item_view_by_item_display_data = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._item_id = A1_2
  A0_2._is_option_reward = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._item_id
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_icon
  L6_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_rarity
  L6_2 = L3_2.Rarity
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._set_count
  L6_2 = 1
  L4_2(L5_2, L6_2)
end
L0_1.set_item_view_by_item_id = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_point_normal_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_point_active_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_key_point_num = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  A0_2._is_unlock = A1_2
  A0_2._is_received = A2_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = not A1_2
  end
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_active
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A2_2 and L6_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_get_mark
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
  L4_2 = pairs
  L5_2 = L4_1
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = A0_2._binder
    L9_2 = L9_2.animator_remind_effect
    L10_2 = L9_2
    L9_2 = L9_2.ResetTrigger
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  if not A2_2 and A1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.animator_remind_effect
    L5_2 = L4_2
    L4_2 = L4_2.SetTrigger
    L6_2 = A0_2._rarity_index
    L6_2 = L4_1[L6_2]
    L4_2(L5_2, L6_2)
  end
  if A2_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L3_1
    L4_2(L5_2, L6_2)
  elseif A1_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L2_1
    L4_2(L5_2, L6_2)
    if A3_2 then
      L4_2 = A0_2._can_play_active_anim
      if L4_2 then
        L4_2 = A0_2._binder
        L4_2 = L4_2.anim_shine
        L5_2 = L4_2
        L4_2 = L4_2.Play
        L4_2(L5_2)
      end
    end
    A0_2._can_play_active_anim = false
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.anim_root
    L5_2 = L4_2
    L4_2 = L4_2.Play
    L6_2 = L1_1
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_reward_status = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A2_2
  A0_2._click_cbk_owner = A1_2
end
L0_1.register_click_callback = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = A1_2
  L6_2 = A2_2
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1.bind_reddot = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.item_icon
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._set_icon = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._rarity_index = 0
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ItemRarity
  L2_2 = L2_2.Rare
  if A1_2 == L2_2 then
    A0_2._rarity_index = 3
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ItemRarity
    L2_2 = L2_2.VeryRare
    if A1_2 == L2_2 then
      A0_2._rarity_index = 4
    else
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.GameCore
      L2_2 = L2_2.ItemRarity
      L2_2 = L2_2.SuperRare
      if A1_2 == L2_2 then
        A0_2._rarity_index = 5
      end
    end
  end
  L2_2 = pairs
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_rarities
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.SafeSetActive
    L9_2 = A0_2._rarity_index
    L9_2 = L5_2 == L9_2
    L7_2(L8_2, L9_2)
  end
end
L0_1._set_rarity = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.item_count
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._set_count = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._is_received
    if not L1_2 then
      L1_2 = A0_2._is_unlock
      if L1_2 then
        L1_2 = A0_2._click_cbk
        L2_2 = A0_2._click_cbk_owner
        L3_2 = A0_2.point_id
        L4_2 = A0_2._is_option_reward
        L1_2(L2_2, L3_2, L4_2)
    end
    else
      L1_2 = G
      L1_2 = L1_2.UIManager
      L1_2 = L1_2.load_and_show
      L2_2 = "Ui.Common.ItemDetailDialog"
      L1_2 = L1_2(L2_2)
      L3_2 = L1_2
      L2_2 = L1_2.setup_view
      L4_2 = A0_2._item_id
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_root = L5_1
return L0_1
