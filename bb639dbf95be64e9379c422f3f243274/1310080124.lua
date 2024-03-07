local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1
L0_1 = require
L1_1 = "Ui.Avatar.AvatarSelectIconPanelBinder"
L0_1(L1_1)
L0_1 = 0.3
L1_1 = "AvatarItemIcon_Eff_Normal"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "AvatarSelectIconPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
  A0_2._is_auto_click = true
  A0_2._is_bind_red_dot = true
end
L2_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._anim_end_callback = nil
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = G
    L0_3 = L0_3.SuperDebug
    L0_3 = L0_3.Log
    L1_3 = "AvatarSelectIconPanel: onSelectTrigger called"
    L0_3(L1_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._is_multi_select
    if L0_3 then
    else
      L0_3 = A0_2._is_auto_click
      if L0_3 then
        L0_3 = A0_2
        L1_3 = L0_3
        L0_3 = L0_3._on_btn_root_click
        L0_3(L1_3)
      end
    end
    L0_3 = A0_2._trigger_callback
    if L0_3 ~= nil then
      L0_3 = A0_2._trigger_listener
      if L0_3 ~= nil then
        L0_3 = A0_2._trigger_callback
        L1_3 = A0_2._trigger_listener
        L2_3 = A0_2._avatar_data
        L0_3(L1_3, L2_3)
      end
    end
  end
  L1_2.onSelectTrigger = L2_2
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  if A1_2 == nil then
    A0_2._is_auto_click = true
  else
    A0_2._is_auto_click = A1_2
  end
end
L2_1.setup_auto_click = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._btn_click_callback = A1_2
  A0_2._event_listener = A2_2
  A0_2._index = A3_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._trigger_callback = A1_2
  A0_2._trigger_listener = A2_2
end
L2_1.register_select_trigger_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_bind_red_dot = A1_2
  if not A1_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.unbind_reddot
    L4_2 = A0_2._binder
    L4_2 = L4_2.go_reddot
    L4_2 = L4_2.transform
    L2_2(L3_2, L4_2)
  end
end
L2_1.set_is_bind_red_dot = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  A0_2._avatar_data = A1_2
  L6_2 = A2_2 or L6_2
  if not A2_2 then
    L6_2 = false
  end
  A0_2._is_in_team = L6_2
  L6_2 = A3_2 or L6_2
  if not A3_2 then
    L6_2 = false
  end
  A0_2._is_selected = L6_2
  L6_2 = A5_2 or L6_2
  if not A5_2 then
    L6_2 = false
  end
  A0_2._is_multi_select = L6_2
  L6_2 = A4_2 ~= nil
  A0_2.show_satiety = L6_2
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.TutorialSupportModule
  L7_2 = L6_2
  L6_2 = L6_2.SetNodeDynamicKey
  L8_2 = A0_2._binder
  L8_2 = L8_2.root
  L8_2 = L8_2.gameObject
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2.ID
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_icon
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2.DefaultAvatarHeadIconPath
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.GameCore
  L6_2 = L6_2.AvatarBaseTypeExcelTable
  L6_2 = L6_2.GetData
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.Row
  L7_2 = L7_2.AvatarBaseType
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_professional_type
  L10_2 = L6_2.BaseTypeIconSmall
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.GameCore
  L7_2 = L7_2.DamageTypeExcelTable
  L7_2 = L7_2.GetData
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.Row
  L8_2 = L8_2.DamageType
  L7_2 = L7_2(L8_2)
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_damage_type
  L11_2 = L7_2.IconNatureColor
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2.setup_level
  L10_2 = true
  L11_2 = A0_2._avatar_data
  L11_2 = L11_2.Level
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_team_mark
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = A0_2._is_in_team
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_trial_mark
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = A0_2._avatar_data
  L10_2 = L10_2.IsTrialPlayer
  L8_2(L9_2, L10_2)
  L8_2 = A0_2._is_multi_select
  if not L8_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.btn_root
    L9_2 = L8_2
    L8_2 = L8_2.SetChecked
    L10_2 = A3_2
    L8_2(L9_2, L10_2)
  end
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.IsTrialPlayer
  if L8_2 then
    L8_2 = A0_2._binder
    L8_2 = L8_2.text_trial_mark
    L9_2 = L8_2
    L8_2 = L8_2.SafeSetTextID
    L10_2 = G
    L10_2 = L10_2.AvatarUtils
    L10_2 = L10_2.get_special_avatar_hint
    L11_2 = A0_2._avatar_data
    L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  end
  L8_2 = CS
  L8_2 = L8_2.RPG
  L8_2 = L8_2.Client
  L8_2 = L8_2.InventoryModule
  L8_2 = L8_2.GetItemRarityConfig
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2.Row
  L9_2 = L9_2.Rarity
  L9_2 = #L9_2
  L8_2 = L8_2(L9_2)
  L10_2 = A0_2
  L9_2 = A0_2._async_load_sprite_to
  L11_2 = A0_2._binder
  L11_2 = L11_2.rarity_frame
  L12_2 = L8_2.FrameItemRarityPath
  L9_2(L10_2, L11_2, L12_2)
  L10_2 = A0_2
  L9_2 = A0_2._async_load_sprite_to
  L11_2 = A0_2._binder
  L11_2 = L11_2.rairty_bg
  L12_2 = L8_2.FrameItemRarityBgPath
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = G
  L9_2 = L9_2.UIColorUtils
  L9_2 = L9_2.GetColor
  L10_2 = L8_2.LineItemRarityColor
  L9_2 = L9_2(L10_2)
  L10_2 = A0_2._binder
  L10_2 = L10_2.rairty_line
  L11_2 = CS
  L11_2 = L11_2.RPG
  L11_2 = L11_2.Client
  L11_2 = L11_2.UIColorUtils
  L11_2 = L11_2.GetColorWithOriginAlpha
  L12_2 = L9_2
  L13_2 = A0_2._binder
  L13_2 = L13_2.rairty_line
  L13_2 = L13_2.color
  L11_2 = L11_2(L12_2, L13_2)
  L10_2.color = L11_2
  L11_2 = A0_2
  L10_2 = A0_2.set_satiety_progress
  L12_2 = A0_2.show_satiety
  L13_2 = A4_2
  L10_2(L11_2, L12_2, L13_2)
  L11_2 = A0_2
  L10_2 = A0_2._bind_red_dot
  L12_2 = A1_2
  L10_2(L11_2, L12_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AvatarExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_icon
  L7_2 = L3_2.DefaultAvatarHeadIconPath
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AvatarBaseTypeExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.AvatarBaseType
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_professional_type
  L8_2 = L4_2.BaseTypeIconSmall
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.DamageTypeExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L3_2.DamageType
  L5_2 = L5_2(L6_2)
  L7_2 = A0_2
  L6_2 = A0_2._async_load_sprite_to
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_damage_type
  L9_2 = L5_2.IconNatureColor
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2.setup_level
  L8_2 = true
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_team_mark
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_trial_mark
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.InventoryModule
  L6_2 = L6_2.GetItemRarityConfig
  L7_2 = L3_2.Rarity
  L7_2 = #L7_2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.rarity_frame
  L10_2 = L6_2.FrameItemRarityPath
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.rairty_bg
  L10_2 = L6_2.FrameItemRarityBgPath
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = G
  L7_2 = L7_2.UIColorUtils
  L7_2 = L7_2.GetColor
  L8_2 = L6_2.LineItemRarityColor
  L7_2 = L7_2(L8_2)
  L8_2 = A0_2._binder
  L8_2 = L8_2.rairty_line
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.UIColorUtils
  L9_2 = L9_2.GetColorWithOriginAlpha
  L10_2 = L7_2
  L11_2 = A0_2._binder
  L11_2 = L11_2.rairty_line
  L11_2 = L11_2.color
  L9_2 = L9_2(L10_2, L11_2)
  L8_2.color = L9_2
end
L2_1.setup_display_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_order
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_order
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1.setup_order = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_level_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_level
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1.setup_level = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_team_index
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_team_index
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L2_1.setup_team_index = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_team_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A1_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.txt_team_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1.setup_team_hint = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hp
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_show_hp = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  L3_2 = A1_2 <= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_danger_hp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_hp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = not L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hp_plus
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 ~= nil
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.smooth_mask_progress
  L4_2.value = A1_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_empty_image
  L4_2.value = A1_2
  if A2_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.hp_plus_image
    L4_2.value = A2_2
  end
end
L2_1.set_blood_hp = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_material
    L3_2 = L2_2
    L2_2 = L2_2.SwitchMaterial
    L4_2 = 0
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.mono_material
    L3_2 = L2_2
    L2_2 = L2_2.RecoverMaterial
    L2_2(L3_2)
  end
end
L2_1.setup_dead_view = L3_1
L3_1 = "#45F6FF"
L4_1 = "#D5300C"
L5_1 = "#EB4D3D"
L6_1 = "#CAFF5D"
L7_1 = "#00FF11"
L8_1 = "#FF1700"
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2 = A1_2 <= L3_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_danger_hp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_normal_hp
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_hp_plus
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = A2_2 ~= nil
  L4_2(L5_2, L6_2)
  L4_2 = nil
  if L3_2 then
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L4_1
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_1
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_blood_up
  L5_2.color = L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.smooth_mask_progress
  L5_2.value = A1_2
  if A2_2 ~= nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.img_blood_under
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L6_1
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.hp_plus_image
    L5_2.value = A2_2
    L5_2 = A0_2._binder
    L5_2 = L5_2.hp_enhance
    L6_2 = G
    L6_2 = L6_2.UIColorUtils
    L6_2 = L6_2.GetColor
    L7_2 = L7_1
    L6_2 = L6_2(L7_2)
    L5_2.color = L6_2
  end
end
L2_1.set_preview_add_hp = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if A2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.set_preview_add_hp
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_danger_hp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal_hp
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_hp_plus
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = L0_1
  L3_2 = A2_2 <= L3_2
  L4_2 = nil
  if L3_2 then
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L4_1
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  else
    L5_2 = G
    L5_2 = L5_2.UIColorUtils
    L5_2 = L5_2.GetColor
    L6_2 = L3_1
    L5_2 = L5_2(L6_2)
    L4_2 = L5_2
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_blood_up
  L5_2.color = L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.smooth_mask_progress
  L5_2.value = A2_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_blood_under
  L6_2 = G
  L6_2 = L6_2.UIColorUtils
  L6_2 = L6_2.GetColor
  L7_2 = L5_1
  L6_2 = L6_2(L7_2)
  L5_2.color = L6_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.hp_plus_image
  L5_2.value = A1_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.hp_enhance
  L6_2 = G
  L6_2 = L6_2.UIColorUtils
  L6_2 = L6_2.GetColor
  L7_2 = L8_1
  L6_2 = L6_2(L7_2)
  L5_2.color = L6_2
end
L2_1.set_preview_reduce_hp = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if A2_2 ~= nil and A2_2 < A1_2 then
    L4_2 = A0_2
    L3_2 = A0_2.set_preview_reduce_hp
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2.set_preview_add_hp
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
  if A1_2 ~= A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.ani_blood_under
    L4_2 = L3_2
    L3_2 = L3_2.Play
    L3_2(L4_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.ani_blood_under
    L4_2 = L3_2
    L3_2 = L3_2.Stop
    L3_2(L4_2)
  end
end
L2_1.set_preview_blood = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.ani_panel
  L4_2 = L3_2
  L3_2 = L3_2.Play
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 ~= nil then
    A0_2._anim_end_callback = A2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.ani_panel
    L4_2 = L3_2
    L3_2 = L3_2.WaitAnimationEnd
    L5_2 = A0_2._on_anim_end
    L6_2 = A0_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L2_1.play_effect = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_select_anim_enable = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.ani_panel
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AvatarItemIcon_Eff_Normal"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._anim_end_callback
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2._anim_end_callback
    L1_2(L2_2)
  end
end
L2_1._on_anim_end = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_icon
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#6F6F6F79"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.img_icon
    L3_2 = G
    L3_2 = L3_2.UIColorUtils
    L3_2 = L3_2.GetColor
    L4_2 = "#FFFFFFFF"
    L3_2 = L3_2(L4_2)
    L2_2.color = L3_2
  end
end
L2_1.set_icon_gray = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_black_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_black_mask = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  if A2_2 == nil then
    L3_2 = 0
    A2_2 = L3_2 or A2_2
    if not L3_2 then
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.satiety_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = math
  L3_2 = L3_2.min
  L4_2 = math
  L4_2 = L4_2.max
  L5_2 = math
  L5_2 = L5_2.floor
  L6_2 = A2_2 * 100
  L6_2 = L6_2 / 25
  L5_2 = L5_2(L6_2)
  L6_2 = 0
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = 3
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = 3
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = A0_2._binder
    L9_2 = "satiety_full_panel"
    L10_2 = L7_2
    L9_2 = L9_2 .. L10_2
    L8_2 = L8_2[L9_2]
    L9_2 = A0_2._binder
    L10_2 = "satiety_full_image"
    L11_2 = L7_2
    L10_2 = L10_2 .. L11_2
    L9_2 = L9_2[L10_2]
    if L8_2 ~= nil then
      L11_2 = L8_2
      L10_2 = L8_2.SafeSetActive
      L12_2 = A1_2 or L12_2
      L12_2 = A1_2 and L3_2 == L7_2
      L10_2(L11_2, L12_2)
    end
    if L9_2 ~= nil and L3_2 == L7_2 then
      L9_2.fillAmount = A2_2
    end
  end
end
L2_1.set_satiety_progress = L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.mask_hint_panel
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  if A2_2 == nil or A2_2 == "" then
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mask_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mask_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_mask_hint
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A2_2
    L3_2(L4_2, L5_2)
  end
end
L2_1.set_mask_hint = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_check_frame
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_check_frame = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_assist_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_assist_mark = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2._is_bind_red_dot
  if not L2_2 then
    return
  end
  L2_2 = A1_2.IsAssistAvatar
  if L2_2 then
    return
  else
    L2_2 = A1_2.IsTrialPlayer
    if L2_2 then
      L2_2 = G
      L2_2 = L2_2.RedDotModule
      L2_2 = L2_2.Instance
      L3_2 = L2_2
      L2_2 = L2_2.bind_reddot
      L4_2 = "AvatarSideIcon"
      L5_2 = A1_2.TrialPlayerID
      L6_2 = A0_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.go_reddot
      L7_2 = L7_2.transform
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    else
      L2_2 = G
      L2_2 = L2_2.RedDotModule
      L2_2 = L2_2.Instance
      L3_2 = L2_2
      L2_2 = L2_2.bind_reddot
      L4_2 = "AvatarSideIcon"
      L5_2 = A1_2.ID
      L6_2 = A0_2
      L7_2 = A0_2._binder
      L7_2 = L7_2.go_reddot
      L7_2 = L7_2.transform
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L2_1._bind_red_dot = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._avatar_data
  L1_2.IsNew = false
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.ReddotRefreshAvatarSideID
  L3_2 = A0_2._avatar_data
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._btn_click_callback
  if L1_2 then
    L1_2 = A0_2._btn_click_callback
    L2_2 = A0_2._event_listener
    L3_2 = A0_2._avatar_data
    L4_2 = A0_2
    L5_2 = A0_2._index
    L1_2(L2_2, L3_2, L4_2, L5_2)
  end
end
L2_1._on_btn_root_click = L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_minus
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L2_1.setup_minus_btn = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  return L1_2(L2_2)
end
L2_1.reset_navi_selected = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.reset_navi_selected
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.play_effect
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_assist_mark
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_check_frame
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_minus_btn
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_black_mask
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_icon_gray
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_select_anim_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_blood_hp
  L3_2 = 1.0
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_dead_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.satiety_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mask_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_mask_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_order
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_index
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_team_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_name_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_blood_up
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L3_1
  L2_2 = L2_2(L3_2)
  L1_2.color = L2_2
end
L2_1._reset_ui_view = L9_1
function L9_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._reset_ui_view
  L1_2(L2_2)
end
L2_1._on_unload = L9_1
function L9_1(A0_2)
  local L1_2
  A0_2._avatar_data = nil
  A0_2._btn_click_callback = nil
end
L2_1._on_dispose = L9_1
return L2_1
