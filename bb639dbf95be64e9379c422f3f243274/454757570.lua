local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.RogueCommon.RandomEvent.RogueCommonDropDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueCommonDropDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_RogueDLC_DialogEvent_Lose_Buff"
L2_1 = "UIText_RogueDLC_DialogEvent_Lose_Miracle"
L3_1 = "UIText_RogueDLC_DialogEvent_Lose_Item"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueCommonDropDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._display_data = nil
end
L0_1.ctor = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._display_data = A1_2
  A0_2._customized_title_text_id = A2_2
end
L0_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_buff_display_data
  L2_2 = A0_2._display_data
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_buff_view
    L1_2(L2_2)
  else
    L1_2 = A0_2._is_miracle_display_data
    L2_2 = A0_2._display_data
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2._setup_miracle_view
      L1_2(L2_2)
    else
      L1_2 = A0_2._is_item_display_data
      L2_2 = A0_2._display_data
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = A0_2
        L1_2 = A0_2._setup_item_view
        L1_2(L2_2)
      else
        L1_2 = G
        L1_2 = L1_2.SuperDebug
        L1_2 = L1_2.LogErrorFormat
        L2_2 = "[RogueCommonDisplay] \228\184\141\230\148\175\230\140\129\231\154\132RogueCommonDisplayData\230\149\176\230\141\174"
        L1_2(L2_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_after_seconds_callback
  L2_2 = A0_2._rebuild_ray_cast_filter
  L3_2 = A0_2
  L5_2 = A0_2
  L4_2 = A0_2.get_native
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetEntranceBlockTime
  L4_2, L5_2 = L4_2(L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rpg_animation_event
  L2_2 = L1_2
  L1_2 = L1_2.AddAnimationEventByClip
  L3_2 = A0_2._binder
  L3_2 = L3_2.rpg_fade_animation
  L3_2 = L3_2.EntranceAnimationClip
  function L4_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._rebuild_ray_cast_filter
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._customized_title_text_id
  if L1_2 == nil then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._customized_title_text_id
  L1_2(L2_2, L3_2)
  L1_2 = true
  return L1_2
end
L0_1._try_setup_customized_title = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active_in_hierarchy
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.rebuild_ray_cast_filter
    L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.miracle_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_active_in_hierarchy
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.miracle_panel
      L2_2 = L1_2
      L1_2 = L1_2.rebuild_ray_cast_filter
      L1_2(L2_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.item_panel
      L2_2 = L1_2
      L1_2 = L1_2.is_active_in_hierarchy
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.item_panel
        L2_2 = L1_2
        L1_2 = L1_2.rebuild_ray_cast_filter
        L1_2(L2_2)
      end
    end
  end
end
L0_1._rebuild_ray_cast_filter = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.DisplayBuffList
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_buff_display_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_customized_title
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._display_data
  L3_2 = L3_2.DisplayBuffList
  L1_2(L2_2, L3_2)
end
L0_1._setup_buff_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.DisplayMiracleList
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_miracle_display_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_customized_title
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.miracle_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._display_data
  L3_2 = L3_2.DisplayMiracleList
  L1_2(L2_2, L3_2)
end
L0_1._setup_miracle_view = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2.DisplayItemList
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_item_display_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._try_setup_customized_title
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = L3_1
    L1_2(L2_2, L3_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._display_data
  L3_2 = L3_2.DisplayItemList
  L1_2(L2_2, L3_2)
end
L0_1._setup_item_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_navigation = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_first_selected_object
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.is_active
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.buff_panel
    L2_2 = L1_2
    L1_2 = L1_2.get_first_selected_object
    return L1_2(L2_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.miracle_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.miracle_panel
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  if A3_2 == nil then
    A3_2 = 1
  end
  if not (A3_2 < 1) then
    L4_2 = A0_2._binder
    L4_2 = L4_2.extra_mono_in_ctrl_tip
    L4_2 = #L4_2
    if not (A3_2 > L4_2) then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L4_2 = A0_2._binder
  L4_2 = L4_2.extra_mono_in_ctrl_tip
  L4_2 = L4_2[A3_2]
  L5_2 = L4_2
  L4_2 = L4_2.SetInControlTipKey
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.extra_key_map_hint_txt
  L4_2 = L4_2[A3_2]
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = A2_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_extra_key_map_info = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 == nil then
    A2_2 = 1
  end
  if not (A2_2 < 1) then
    L3_2 = A0_2._binder
    L3_2 = L3_2.extra_mono_in_ctrl_tip
    L3_2 = #L3_2
    if not (A2_2 > L3_2) then
      goto lbl_12
    end
  end
  do return end
  ::lbl_12::
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_mono_in_ctrl_tip
  L3_2 = L3_2[A2_2]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_key_map_hint_txt
  L3_2 = L3_2[A2_2]
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
end
L0_1.set_extra_key_map_info_active = L4_1
return L0_1
