local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.RewardItemIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.PlayerReturn.PlayerReturnSevenDayRewardItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerReturnSevenDayRewardItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "#cdcdd8"
L1_1[2] = "#6ee0b6"
L1_1[3] = "#73b0f4"
L1_1[4] = "#c197ff"
L1_1[5] = "#ffcf70"
function L2_1(A0_2)
  local L1_2
  A0_2._reward_item_icon = nil
  A0_2._reward_item_data = nil
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_receive
  L4_2 = A0_2._on_btn_receive
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_mono_in_control
  L1_2.enabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.tip_mono_in_control
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_mono_in_control
    L0_3.enabled = true
    L0_3 = A0_2._binder
    L0_3 = L0_3.tip_mono_in_control
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = true
    L0_3(L1_3, L2_3)
    A0_2.is_main_panel_selected = true
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
    L0_3 = A0_2._binder
    L0_3 = L0_3.btn_mono_in_control
    L0_3.enabled = false
    L0_3 = A0_2._binder
    L0_3 = L0_3.tip_mono_in_control
    L1_3 = L0_3
    L0_3 = L0_3.SafeSetActive
    L2_3 = false
    L0_3(L1_3, L2_3)
    A0_2.is_main_panel_selected = false
  end
  L1_2.onDeselectTrigger = L2_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "PlayerReturnSignReward"
  L4_2 = A0_2._index
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_anim_state
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._reward_item_icon = nil
  A0_2._reward_item_data = nil
end
L0_1._on_dispose = L2_1
function L2_1(A0_2, A1_2)
  A0_2._index = A1_2
end
L0_1.set_panel_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._reward_item_data = A1_2
  L2_2 = A0_2._reward_item_icon
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._set_rarity
  L4_2 = A0_2._reward_item_icon
  L5_2 = L4_2
  L4_2 = L4_2.get_rarity
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_reward_icon = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._is_unlock = A1_2
  A0_2._is_signed = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_received
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A2_2 or L5_2
  if A2_2 then
    L5_2 = A1_2
  end
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_receive
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A2_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_effect_mask
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not A2_2 and L5_2
  L3_2(L4_2, L5_2)
  L3_2 = not A2_2 and L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_point_state_normal
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_point_state_check
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hover_effect
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not A2_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._is_signed
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_group
    L4_2.alpha = 0.3
    L5_2 = A0_2
    L4_2 = A0_2.stop_shine_anim
    L4_2(L5_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.canvas_group
    L4_2.alpha = 1.0
  end
end
L0_1.set_status = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_first_world
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_first_world_text = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A2_2
  A0_2._click_cbk_owner = A1_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reward_item_data
  if L1_2 then
    L1_2 = {}
    L2_2 = A0_2._reward_item_data
    L2_2 = L2_2.ItemID
    L1_2[1] = L2_2
    L2_2 = {}
    L2_2.items = L1_2
    L3_2 = G
    L3_2 = L3_2.InventoryUtils
    L3_2 = L3_2.show_item_detail_display_dialog_for_gamepad
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L0_1.show_item_detail_dialog = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_point_shine
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L1_2(L2_2)
end
L0_1.play_shine_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_point_shine
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.UIAnimationUtils
  L2_2 = L2_2.GetAnimationState
  L3_2 = L1_2
  L4_2 = L1_2.clip
  L4_2 = L4_2.name
  L2_2 = L2_2(L3_2, L4_2)
  L2_2.time = 0
  L4_2 = L1_2
  L3_2 = L1_2.Sample
  L3_2(L4_2)
  L4_2 = L1_2
  L3_2 = L1_2.Stop
  L3_2(L4_2)
end
L0_1.stop_shine_anim = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._reward_item_icon
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.create_panel
    L3_2 = G
    L3_2 = L3_2.RewardItemIconPanel
    L4_2 = G
    L4_2 = L4_2.RewardItemIconPanelBinder
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L3_2 = L1_2
    L2_2 = L1_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.reward_item_icon
    L2_2(L3_2, L4_2)
    A0_2._reward_item_icon = L1_2
  end
end
L0_1._init_reward = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_frame
  L1_2.alpha = 0.0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_date
  L1_2.alpha = 0.0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_icon
  L1_2.alpha = 0.0
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_group_status_panel
  L1_2.alpha = 0.0
end
L0_1._init_anim_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = ""
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemRarity
  L3_2 = L3_2.Normal
  if A1_2 == L3_2 then
    L2_2 = L1_1[1]
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemRarity
    L3_2 = L3_2.NotNormal
    if A1_2 == L3_2 then
      L2_2 = L1_1[2]
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.GameCore
      L3_2 = L3_2.ItemRarity
      L3_2 = L3_2.Rare
      if A1_2 == L3_2 then
        L2_2 = L1_1[3]
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.GameCore
        L3_2 = L3_2.ItemRarity
        L3_2 = L3_2.VeryRare
        if A1_2 == L3_2 then
          L2_2 = L1_1[4]
        else
          L3_2 = CS
          L3_2 = L3_2.RPG
          L3_2 = L3_2.GameCore
          L3_2 = L3_2.ItemRarity
          L3_2 = L3_2.SuperRare
          if A1_2 == L3_2 then
            L2_2 = L1_1[5]
          else
            L2_2 = L1_1[1]
          end
        end
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_rarity
  L4_2 = G
  L4_2 = L4_2.UIColorUtils
  L4_2 = L4_2.GetColor
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L3_2.color = L4_2
end
L0_1._set_rarity = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_cbk_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_cbk_owner
      L3_2 = A0_2._index
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_receive = L2_1
return L0_1
