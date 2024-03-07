local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherChallengeNpcInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = A0_2._on_btn_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.enable_in_control_tip
    L2_3 = true
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.enable_in_control_tip
    L2_3 = false
    L0_3(L1_3, L2_3)
  end
  L1_2.onDeselectTrigger = L2_2
  A0_2._is_enable_tip = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_reward
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_item_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_skill_core
  L2_2 = L1_2
  L1_2 = L1_2.bind_click
  L3_2 = A0_2
  L4_2 = A0_2._on_item_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._data = A1_2
  A0_2._is_unlocked = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unlcok_effect
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetLightWeightActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.enable_in_control_tip
  L5_2 = false
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._data
  return L1_2
end
L0_1.get_data = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlcok_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = "AetherDivideNPCChallengeItem_UnLock"
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_force
  L1_2(L2_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_bg_line
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_unlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_unlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._data
    L3_2 = L3_2.Row
    L3_2 = L3_2.OpponentName
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_npc
    L4_2 = A0_2._data
    L4_2 = L4_2.Row
    L4_2 = L4_2.OpponentImageIconPath
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_name
    L2_2 = L1_2
    L1_2 = L1_2.SetCustomizedText
    L3_2 = "???"
    L1_2(L2_2, L3_2)
    L2_2 = A0_2
    L1_2 = A0_2._async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_npc
    L4_2 = "SpriteOutput/AvatarShopIcon/npc.png"
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.IsRewardTaken
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator_root
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "IsLocked"
  L4_2 = A0_2._is_unlocked
  L4_2 = not L4_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTable
  L2_2 = A0_2._data
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = 0 < L2_2
  L3_2(L4_2, L5_2)
  if L2_2 == 0 then
    return
  end
  L3_2 = nil
  L4_2 = nil
  L5_2 = {}
  A0_2._config_id_list = L5_2
  L5_2 = ipairs
  L6_2 = L1_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = CS
    L10_2 = L10_2.RPG
    L10_2 = L10_2.GameCore
    L10_2 = L10_2.ItemExcelTable
    L10_2 = L10_2.GetData
    L11_2 = L9_2.ItemID
    L10_2 = L10_2(L11_2)
    L11_2 = L10_2.ItemSubType
    L12_2 = CS
    L12_2 = L12_2.RPG
    L12_2 = L12_2.GameCore
    L12_2 = L12_2.ItemSubType
    L12_2 = L12_2.AetherSkill
    if L11_2 == L12_2 then
      L3_2 = L9_2
    else
      L4_2 = L9_2
    end
    L11_2 = A0_2._config_id_list
    L12_2 = A0_2._config_id_list
    L12_2 = #L12_2
    L12_2 = L12_2 + 1
    L13_2 = L9_2.ItemID
    L11_2[L12_2] = L13_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_reward
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = L4_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.panel_skill_core
  L6_2 = L5_2
  L5_2 = L5_2.safe_set_active
  L7_2 = L3_2 ~= nil
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._data
  L5_2 = L5_2.IsFinished
  if L5_2 then
    L5_2 = A0_2._data
    L5_2 = L5_2.IsRewardTaken
    L5_2 = not L5_2
  end
  if L3_2 ~= nil then
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_skill_core
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L3_2.ItemID
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_skill_core
    L7_2 = L6_2
    L6_2 = L6_2.set_count
    L8_2 = L3_2.Count
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_skill_core
    L7_2 = L6_2
    L6_2 = L6_2.set_attachment_getted
    L8_2 = A0_2._data
    L8_2 = L8_2.IsRewardTaken
    L6_2(L7_2, L8_2)
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_skill_core
      L7_2 = L6_2
      L6_2 = L6_2.play_unlock
      L6_2(L7_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_skill_core
      L7_2 = L6_2
      L6_2 = L6_2.reset_anim
      L6_2(L7_2)
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_skill_core
    L7_2 = L6_2
    L6_2 = L6_2.set_reddot_show
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  if L4_2 ~= nil then
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_reward
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L4_2.ItemID
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_reward
    L7_2 = L6_2
    L6_2 = L6_2.set_count
    L8_2 = L4_2.Count
    L6_2(L7_2, L8_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_reward
    L7_2 = L6_2
    L6_2 = L6_2.set_attachment_getted
    L8_2 = A0_2._data
    L8_2 = L8_2.IsRewardTaken
    L6_2(L7_2, L8_2)
    if L5_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_reward
      L7_2 = L6_2
      L6_2 = L6_2.play_unlock
      L6_2(L7_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.panel_reward
      L7_2 = L6_2
      L6_2 = L6_2.reset_anim
      L6_2(L7_2)
    end
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_reward
    L7_2 = L6_2
    L6_2 = L6_2.set_reddot_show
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_force
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._data
  L3_2 = L3_2.HardLevel
  L1_2(L2_2, L3_2)
end
L0_1._refresh_force = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._data
  L2_2 = L2_2.IsFinished
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.IsRewardTaken
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.RPG
      L2_2 = L2_2.Client
      L2_2 = L2_2.NetworkManager
      L2_2 = L2_2.OOGONDGGKMI
      L3_2 = L2_2
      L2_2 = L2_2.OAMHGNOEJPI
      L4_2 = A0_2._data
      L4_2 = L4_2.ChallengeID
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.show_full_screen_block_for_packet
      L4_2 = CS
      L4_2 = L4_2.NIJNBICAPPA
      L4_2 = L4_2.LDFAPIMFLKI
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Common.ItemDetailDialog"
    L2_2 = L2_2(L3_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L0_1._on_item_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._callback
  L3_2 = A0_2._callback_self
  L4_2 = A0_2._data
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = {}
  L2_2 = A0_2._config_id_list
  L1_2.items = L2_2
  L2_2 = G
  L2_2 = L2_2.InventoryUtils
  L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
  L3_2 = L1_2
  L2_2(L3_2)
end
L0_1._on_btn_reward = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.NetworkManager
  L1_2 = L1_2.OOGONDGGKMI
  L2_2 = L1_2
  L1_2 = L1_2.OAMHGNOEJPI
  L3_2 = A0_2._data
  L3_2 = L3_2.ChallengeID
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block_for_packet
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.LDFAPIMFLKI
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_receive = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.enable_in_control_tip
  L3_2 = A0_2._is_enable_tip
  if L3_2 then
    L3_2 = G
    L3_2 = L3_2.Utils
    L3_2 = L3_2.is_gamepad_input
    L3_2 = L3_2()
  end
  L1_2(L2_2, L3_2)
end
L0_1._on_in_control_input_switch = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_enable_tip = A1_2
  L2_2 = A0_2._data
  L2_2 = A0_2._data
  L2_2 = L2_2.IsFinished
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.IsRewardTaken
    L2_2 = L2_2 ~= nil and L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_incontrol_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2 or L5_2
  if A1_2 then
    L5_2 = L2_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_key_map_zoom
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.enable_in_control_tip = L1_1
return L0_1
