local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Buff.RogueSelectBuffPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueDropBuffPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectBuffPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = false
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  if A2_2 == true then
    L3_2 = G
    L3_2 = L3_2.ImportCsToLua
    L3_2 = L3_2.CS_RPG_Client_UILayer_Dialog
    A0_2._ui_layer = L3_2
  end
  A0_2._rogue_buff_drop_action = A1_2
  L3_2 = {}
  A0_2._buffs = L3_2
  A0_2._discard_buff_id = 0
  A0_2._select_index = 0
  L4_2 = A0_2
  L3_2 = A0_2._get_pref_short_desc
  L3_2 = L3_2(L4_2)
  A0_2._is_short_desc = L3_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_rogue_triggered_action_id
  L2_2 = A0_2._rogue_buff_drop_action
  L1_2(L2_2)
  A0_2._rogue_buff_drop_action = nil
  A0_2._buffs = nil
  A0_2._select_index = nil
  A0_2._is_short_desc = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_reset
  L2_2 = L1_2
  L1_2 = L1_2.safe_set_active
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_page
  L4_2 = L0_1._on_btn_buff_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_toggle_switch
  L4_2 = L0_1._on_btn_switch_desc
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_res_bar
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.TopBarAreaPanel
  L4_2 = G
  L4_2 = L4_2.TopBarAreaPanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.bind
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_top_bar
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.setup_view
  L4_2 = "RogueSelectBuffPage"
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_page_button
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnRogueActionRsp
  L4_2 = L0_1._on_rogue_action_rsp
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_discard_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_avatars
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._try_close_if_empty
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._buffs
  if L1_2 ~= nil then
    L1_2 = A0_2._buffs
    L1_2 = #L1_2
    if 0 < L1_2 then
      return
    end
  end
  L1_2 = A0_2._native
  if L1_2 ~= nil then
    L1_2 = A0_2._native
    L1_2 = L1_2.flagCallback
    if L1_2 ~= nil then
      L1_2 = A0_2._native
      L1_2 = L1_2.flagCallback
      L1_2()
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._try_close_if_empty = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_content_canvas_sorting_order
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_lost_focus = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._set_content_canvas_sorting_order
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_got_focus = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._binder
  if L2_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.canvas_content
    if L2_2 then
      L2_2 = A0_2._ui_layer
      L3_2 = G
      L3_2 = L3_2.ImportCsToLua
      L3_2 = L3_2.CS_RPG_Client_UILayer_Dialog
      if L2_2 == L3_2 then
        L2_2 = A0_2._binder
        L2_2 = L2_2.canvas_content
        L2_2.overrideSorting = A1_2
      end
    end
  end
end
L0_1._set_content_canvas_sorting_order = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._rogue_buff_drop_action
  L2_2 = L2_2.CanDropBuffs
  L1_2 = L1_2(L2_2)
  A0_2._buffs = L1_2
end
L0_1._refresh_discard_data = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_discard
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_discard_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_discard_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_select_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L5_2 = A0_2
  L4_2 = A0_2._is_has_select_buff
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._show_nodes = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._select_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._refresh_discard_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_content
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_select_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_nodes
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_page_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Buff_Discard"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.text_discard_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_Rogue_Buff_Discard_Hint"
  L1_2(L2_2, L3_2)
end
L0_1._setup_discard_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animation
    if L1_2 then
      L1_2 = CS
      L1_2 = L1_2.RPG
      L1_2 = L1_2.Client
      L1_2 = L1_2.UIAnimationUtils
      L1_2 = L1_2.PlayFromBegin
      L2_2 = A0_2._binder
      L2_2 = L2_2.animation
      L3_2 = "RogueSelectBuffCardFlip"
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._play_buff_card_flip_animation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = {}
  L3_2 = 1
  L4_2 = 3
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panels_buff_row
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._buffs
    L8_2 = L8_2[L6_2]
    L9_2 = L8_2 ~= nil
    L11_2 = L7_2
    L10_2 = L7_2.safe_set_active
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    if L9_2 then
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L13_2 = L7_2
      L12_2 = L7_2.get_navi_btn
      L12_2, L13_2 = L12_2(L13_2)
      L10_2(L11_2, L12_2, L13_2)
    end
  end
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_buff_content
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L2_2
  L6_2 = NavigationType
  L6_2 = L6_2.Horizontal
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = 1
  L4_2 = 3
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.panels_buff_row
    L7_2 = L7_2[L6_2]
    L8_2 = A0_2._buffs
    L8_2 = L8_2[L6_2]
    if L8_2 ~= nil then
      L9_2 = L8_2.BuffID
      if L9_2 ~= 0 then
        L10_2 = L7_2
        L9_2 = L7_2.set_short_desc
        L11_2 = A0_2._is_short_desc
        L9_2(L10_2, L11_2)
        L10_2 = L7_2
        L9_2 = L7_2.setup_origin_view
        L11_2 = L8_2
        L12_2 = false
        L9_2(L10_2, L11_2, L12_2)
        L10_2 = L7_2
        L9_2 = L7_2.set_call_back
        L11_2 = L6_2
        L12_2 = A0_2._on_btn_buff
        L13_2 = A0_2
        L9_2(L10_2, L11_2, L12_2, L13_2)
      end
    end
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_handbook_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
end
L0_1._setup_buff_content = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2._buffs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff_row
    L6_2 = L6_2[L4_2]
    if L6_2 ~= nil then
      L7_2 = A0_2._select_index
      L7_2 = L4_2 == L7_2
      L9_2 = L6_2
      L8_2 = L6_2.set_selected
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._show_select_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 ~= nil
  return L1_2
end
L0_1._is_has_select_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_toggle_switch
  L1_2 = L1_2.isActiveAndEnabled
  if L1_2 == true then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_toggle_switch
    L2_2 = L1_2
    L1_2 = L1_2.SetChecked
    L3_2 = A0_2._is_short_desc
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_switch_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._binder
    L5_2 = L5_2.panels_buff_row
    L5_2 = L5_2[L4_2]
    L7_2 = L5_2
    L6_2 = L5_2.set_short_desc
    L8_2 = A0_2._is_short_desc
    L9_2 = true
    L6_2(L7_2, L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_switch_btn
  L1_2(L2_2)
end
L0_1._refresh_short_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  if L1_2 ~= nil then
    L2_2 = L1_2.RogueSelectBuffShortDesc
    return L2_2
  end
  L2_2 = true
  return L2_2
end
L0_1._get_pref_short_desc = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  if L2_2 ~= nil then
    L2_2.RogueSelectBuffShortDesc = A1_2
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.ForceSave
    L3_2()
  end
end
L0_1._set_pref_short_desc = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_picked_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_avatars
  L1_2(L2_2)
end
L0_1._setup_avatars = L1_1
function L1_1(A0_2)
  local L1_2
  A0_2._is_anim_play_end = true
end
L0_1._on_selected_anim_end = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._try_close = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._rogue_buff_drop_action
  if L2_2 ~= nil then
    L2_2 = A0_2._rogue_buff_drop_action
    L3_2 = L2_2
    L2_2 = L2_2.GetRogueActionID
    L2_2 = L2_2(L3_2)
    if L2_2 ~= A1_2 then
      goto lbl_11
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._try_close
  L2_2(L3_2)
  ::lbl_11::
end
L0_1._on_rogue_action_rsp = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.show_rogue_buff_list_page
  L1_2()
end
L0_1._on_btn_buff_page = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_short_desc
  L1_2 = not L1_2
  A0_2._is_short_desc = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._set_pref_short_desc
  L3_2 = A0_2._is_short_desc
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_short_desc
  L1_2(L2_2)
end
L0_1._on_btn_switch_desc = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._select_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_select_buff
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L5_2 = A0_2
  L4_2 = A0_2._is_has_select_buff
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._rogue_buff_drop_action
  if L1_2 == nil then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._is_has_select_buff
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panels_buff_row
  L3_2 = A0_2._select_index
  L2_2 = L2_2[L3_2]
  L3_2 = L2_2
  L2_2 = L2_2.play_select_anim
  L2_2(L3_2)
  A0_2._is_get_reforge_buff_rsp = false
  A0_2._is_anim_play_end = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowConfirmDialog
  L3_2 = G
  L3_2 = L3_2.ImportCsToLua
  L3_2 = L3_2.CS_RPG_Client_UILayer_AboveDialog
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ConfirmDialogContext
  L6_2 = L6_2.DialogBtnMode
  L6_2 = L6_2.eOkCancel
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      L1_3 = A0_2._buffs
      if L1_3 == nil then
        return
      end
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3.show_full_screen_block_for_packet
      L3_3 = CS
      L3_3 = L3_3.PBIBDHBOIGI
      L3_3 = L3_3.IFEDHHFMONO
      L1_3(L2_3, L3_3)
      L1_3 = CS
      L1_3 = L1_3.RPG
      L1_3 = L1_3.Client
      L1_3 = L1_3.NetworkManager
      L1_3 = L1_3.FFOMLPONIFB
      L2_3 = L1_3
      L1_3 = L1_3.HHLELHLGHJG
      L3_3 = A0_2._buffs
      L4_3 = A0_2._select_index
      L3_3 = L3_3[L4_3]
      L3_3 = L3_3.BuffID
      L1_3(L2_3, L3_3)
    end
  end
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetComponentTitle
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Rogue_Buff_Discard_Title"
  L3_2(L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetComponentContent
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Rogue_Buff_Discard_Desc"
  L6_2 = G
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A0_2._buffs
  L8_2 = A0_2._select_index
  L7_2 = L7_2[L8_2]
  L8_2 = L7_2
  L7_2 = L7_2.GetMazeBuffRow
  L7_2 = L7_2(L8_2)
  L7_2 = L7_2.BuffName
  L6_2, L7_2, L8_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  return
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._on_enter_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  A0_2._select_index = nil
  L2_2 = A0_2
  L1_2 = A0_2._show_select_buff
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_confirm
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L4_2 = A0_2
  L3_2 = A0_2._is_has_select_buff
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_buff_row
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_buff_page_button
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.discard_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.discard_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.confirm_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_in_control_button_enable = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_page_in_control_button
  L2_2.ActionEnabled = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.buff_page_in_control_tip
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff_page_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
end
L0_1._setup_buff_page_button = L1_1
return L0_1
