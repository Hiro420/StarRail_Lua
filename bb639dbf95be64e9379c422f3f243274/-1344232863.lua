local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Common.AvatarItemIconLitePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarItemIconLitePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._btn_click_callback = A1_2
  A0_2._event_listener = A2_2
  A0_2._index = A3_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._trigger_callback = A1_2
  A0_2._trigger_listener = A2_2
end
L0_1.register_select_trigger_callback = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.set_is_bind_red_dot = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_black_mask
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_black_mask_enable = L1_1
function L1_1(A0_2, A1_2)
  if A1_2 == nil then
    A0_2._is_auto_click = true
  else
    A0_2._is_auto_click = A1_2
  end
end
L0_1.setup_auto_click = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
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
  L6_2 = A0_2._binder
  L6_2 = L6_2.btn_root
  L7_2 = L6_2
  L6_2 = L6_2.ClearAnimationState
  L6_2(L7_2)
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
  L6_2 = L6_2.DamageTypeExcelTable
  L6_2 = L6_2.GetData
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.Row
  L7_2 = L7_2.DamageType
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._async_load_sprite_to
  L9_2 = A0_2._binder
  L9_2 = L9_2.img_damage_type
  L10_2 = L6_2.IconNatureColor
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2.setup_level
  L9_2 = true
  L10_2 = A0_2._avatar_data
  L10_2 = L10_2.Level
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_team_mark
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._is_in_team
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_trial_mark
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = A0_2._avatar_data
  L9_2 = L9_2.IsTrialPlayer
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._is_multi_select
  if not L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.btn_root
    L8_2 = L7_2
    L7_2 = L7_2.SetChecked
    L9_2 = A3_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = A0_2._avatar_data
  L7_2 = L7_2.IsTrialPlayer
  if L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_trial_mark
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = G
    L9_2 = L9_2.AvatarUtils
    L9_2 = L9_2.get_special_avatar_hint
    L10_2 = A0_2._avatar_data
    L9_2, L10_2, L11_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2, L11_2)
  end
  L7_2 = CS
  L7_2 = L7_2.RPG
  L7_2 = L7_2.Client
  L7_2 = L7_2.InventoryModule
  L7_2 = L7_2.GetItemRarityConfig
  L8_2 = A0_2._avatar_data
  L8_2 = L8_2.Row
  L8_2 = L8_2.Rarity
  L8_2 = #L8_2
  L7_2 = L7_2(L8_2)
  L9_2 = A0_2
  L8_2 = A0_2._async_load_sprite_to
  L10_2 = A0_2._binder
  L10_2 = L10_2.img_rarity
  L11_2 = L7_2.FrameIconRarityPath
  L8_2(L9_2, L10_2, L11_2)
  L9_2 = A0_2
  L8_2 = A0_2._bind_red_dot
  L10_2 = A1_2
  L8_2(L9_2, L10_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_damage_type_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_damage_type = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_hp_bar
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_show_hp = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_hp_bar
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.set_blood_hp = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.setup_dead_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.prefab_effect
  L3_2 = L3_2.MultiPrefabList
  L3_2 = L3_2[0]
  L4_2 = A0_2._binder
  L4_2 = L4_2.prefab_effect
  L4_2 = L4_2.transform
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AvatarItemIcon_Eff_Heal"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_panel
  L2_2 = L1_2
  L1_2 = L1_2.WaitAnimationEnd
  L3_2 = A0_2._on_anim_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.play_heal_effect = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_order
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_check
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1.setup_order = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_order
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_order
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_check
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_checked = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
L0_1.setup_level = L1_1
function L1_1(A0_2, A1_2, A2_2)
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
L0_1.set_mask_hint = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_assist_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_assist_mark = L1_1
function L1_1(A0_2, A1_2)
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
L0_1._bind_red_dot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.anim_panel
    if L1_2 ~= nil then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AvatarItemIcon_Eff_Normal"
  L1_2(L2_2, L3_2)
end
L0_1._on_anim_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2._is_multi_select
    if not L0_3 then
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
L0_1._on_load = L1_1
function L1_1(A0_2)
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
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2.setup_dead_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
return L0_1
