local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.SpaceAnchor.AvatarItemIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarItemIconPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceAnchorModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_single_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_press_repeated
  L3_2 = A0_2._binder
  L3_2 = L3_2.button
  L4_2 = A0_2._on_long_press
  L5_2 = nil
  L6_2 = 0.5
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.NIJNBICAPPA
  L3_2 = L3_2.AEBHCDMGOKH
  L4_2 = A0_2._on_heal_rsp
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.hp_bar
  L1_2 = L1_2.transform
  L1_2 = L1_2.parent
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_in_control_btn
    L0_3.enabled = true
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.button
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    A0_2._is_selected = true
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.button
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2._binder
    L0_3 = L0_3.mono_in_control_btn
    L0_3.enabled = false
    A0_2._is_selected = false
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_control_btn
  L1_2.enabled = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.hide_node
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_recovery_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_dead_view
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 then
    A0_2._data = A1_2
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.hp_bar
  L3_2 = A1_2.LeftHPRatio
  L4_2 = L3_2
  L3_2 = L3_2.ToFloat
  L3_2 = L3_2(L4_2)
  L2_2.value = L3_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.level_text
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_ItemCommonIcon_Level"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.level_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.AvatarData
  L4_2 = L4_2.Level
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.icon
  L5_2 = A1_2.AvatarData
  L5_2 = L5_2.DefaultAvatarHeadIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_recovery_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_bar
  L4_2 = L4_2.value
  L4_2 = L4_2 < 1
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A0_2._data
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.Row
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rarity_frame
  L6_2 = L2_2.FrameItemRarityPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.rairty_bg
  L6_2 = L2_2.FrameItemRarityBgPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.UIColorUtils
  L3_2 = L3_2.GetColor
  L4_2 = L2_2.LineItemRarityColor
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.rairty_line
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UIColorUtils
  L5_2 = L5_2.GetColorWithOriginAlpha
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.rairty_line
  L7_2 = L7_2.color
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.color = L5_2
  L5_2 = A0_2
  L4_2 = A0_2._try_add_trial_mark
  L4_2(L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
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
L0_1.setup_dead_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._data = A1_2
  L2_2 = A0_2._data
  L2_2 = L2_2.LeftHPRatio
  L3_2 = L2_2
  L2_2 = L2_2.ToFloat
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.hp_bar
  L3_2 = L3_2.value
  L2_2 = L2_2 - L3_2
  if L2_2 < 0.001 then
    A0_2.time = 0
    L3_2 = A0_2
    L2_2 = A0_2._add_tick
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.hp_bar
    L3_2 = A0_2._data
    L3_2 = L3_2.LeftHPRatio
    L4_2 = L3_2
    L3_2 = L3_2.ToFloat
    L3_2 = L3_2(L4_2)
    L2_2.value = L3_2
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_recovery_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = A0_2._binder
    L4_2 = L4_2.hp_bar
    L4_2 = L4_2.value
    L4_2 = L4_2 < 1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.play_heal_effect
    L2_2(L3_2)
  end
end
L0_1.refresh_hp = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2.time
  if 1 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._remove_tick
    L2_2(L3_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.hp_bar
    L2_2 = L2_2.value
    L3_2 = A0_2._data
    L3_2 = L3_2.LeftHPRatio
    L4_2 = L3_2
    L3_2 = L3_2.ToFloat
    L3_2 = L3_2(L4_2)
    if L2_2 < L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.hp_bar
      L3_2 = A0_2._data
      L3_2 = L3_2.LeftHPRatio
      L4_2 = L3_2
      L3_2 = L3_2.ToFloat
      L3_2 = L3_2(L4_2)
      L2_2.value = L3_2
      L2_2 = A0_2._binder
      L2_2 = L2_2.node_recovery_hint
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = A0_2._binder
      L4_2 = L4_2.hp_bar
      L4_2 = L4_2.value
      L4_2 = L4_2 < 1
      L2_2(L3_2, L4_2)
      L3_2 = A0_2
      L2_2 = A0_2.play_heal_effect
      L2_2(L3_2)
      L3_2 = A0_2
      L2_2 = A0_2._remove_tick
      L2_2(L3_2)
    end
    L2_2 = A0_2.time
    L2_2 = L2_2 + A1_2
    A0_2.time = L2_2
  end
end
L0_1._on_tick = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_panel
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "AvatarItemIcon_Eff_Heal"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.ani_panel
  L2_2 = L1_2
  L1_2 = L1_2.WaitAnimationEnd
  L3_2 = A0_2._on_anim_end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1.play_heal_effect = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.IsTrialPlayer
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._data
  L1_2 = L1_2.AvatarData
  L1_2 = L1_2.IsTrialPlayer
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_trial_mark
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = G
    L3_2 = L3_2.AvatarUtils
    L3_2 = L3_2.get_special_avatar_hint
    L4_2 = A0_2._data
    L4_2 = L4_2.AvatarData
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_story_trial_mark
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._data
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.IsPlotTrialPlayer
  L1_2(L2_2, L3_2)
end
L0_1._try_add_trial_mark = L2_1
function L2_1(A0_2)
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
end
L0_1._on_anim_end = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._is_selected
    if not L1_2 then
      return
    end
  end
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.hp_bar
  L1_2 = L1_2.value
  if L1_2 == 1.0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "HealPool_FullHP_Tips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._send_recover_req
    L3_2 = false
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._is_selected
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._send_recover_req
      L3_2 = false
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_single_click = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._is_selected
    if not L1_2 then
      return
    end
  end
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.hp_bar
  L1_2 = L1_2.value
  if L1_2 == 1.0 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "HealPool_FullHP_Tips"
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if not L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._send_recover_req
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._is_selected
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._send_recover_req
      L3_2 = true
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_long_press = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = nil
  L3_2 = A0_2._data
  L3_2 = L3_2.AvatarData
  L3_2 = L3_2.IsTrialPlayer
  if L3_2 == true then
    L3_2 = CS
    L3_2 = L3_2.LHLCMODLJCB
    L2_2 = L3_2.JPLBJNAMNBC
    L3_2 = L1_1
    L4_2 = L3_2
    L3_2 = L3_2.SendSpringRecoverSingleAvatarCsReq
    L5_2 = L2_2
    L6_2 = A0_2._data
    L6_2 = L6_2.AvatarData
    L6_2 = L6_2.TrialPlayerID
    L7_2 = A1_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = A0_2._data
    L3_2 = L3_2.AvatarData
    L3_2 = L3_2.IsAssistAvatar
    if L3_2 then
      L3_2 = CS
      L3_2 = L3_2.LHLCMODLJCB
      L2_2 = L3_2.HKJOACLIKIA
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.SendSpringRecoverSingleAvatarCsReq
      L5_2 = L2_2
      L6_2 = A0_2._data
      L6_2 = L6_2.AvatarData
      L6_2 = L6_2.ID
      L7_2 = A1_2
      L3_2(L4_2, L5_2, L6_2, L7_2)
    else
      L3_2 = CS
      L3_2 = L3_2.LHLCMODLJCB
      L2_2 = L3_2.DGJBAMOFJJK
      L3_2 = L1_1
      L4_2 = L3_2
      L3_2 = L3_2.SendSpringRecoverSingleAvatarCsReq
      L5_2 = L2_2
      L6_2 = A0_2._data
      L6_2 = L6_2.AvatarData
      L6_2 = L6_2.ID
      L7_2 = A1_2
      L3_2(L4_2, L5_2, L6_2, L7_2)
    end
  end
end
L0_1._send_recover_req = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = G
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.get_packet
  L3_2 = "SpringRecoverSingleAvatarScRsp"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.Retcode
  if L3_2 ~= 0 then
    return
  end
  L3_2 = L2_2.Id
  L4_2 = A0_2._data
  L4_2 = L4_2.AvatarData
  L4_2 = L4_2.ID
  if L3_2 ~= L4_2 then
    L3_2 = L2_2.Id
    L4_2 = A0_2._data
    L4_2 = L4_2.AvatarData
    L4_2 = L4_2.TrialPlayerID
    if L3_2 ~= L4_2 then
      return
    end
  end
  L3_2 = L2_2.Hp
  L3_2 = L3_2 / 10000
  L4_2 = A0_2._binder
  L4_2 = L4_2.hp_bar
  L4_2 = L4_2.value
  if L3_2 > L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.hp_bar
    L4_2.value = L3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_recovery_hint
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = A0_2._binder
    L6_2 = L6_2.hp_bar
    L6_2 = L6_2.value
    L6_2 = L6_2 < 1
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2.play_heal_effect
    L4_2(L5_2)
  end
end
L0_1._on_heal_rsp = L2_1
return L0_1
