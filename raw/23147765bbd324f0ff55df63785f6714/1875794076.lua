local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.Bonus.RogueSelectBonusBuffPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueSelectBonusBuffPage"
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
  L1_2 = L1_2.TransitionStyle_Default
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueSelectBonusBuffPageBinder
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
function L1_1(A0_2, A1_2)
  local L2_2
  A0_2._bonus_select_action = A1_2
  L2_2 = {}
  A0_2._buffs = L2_2
  A0_2._select_index = 0
end
L0_1.init = L1_1
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
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_buff
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_enter_special_zoom = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_in_control_button_enable
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_leave_special_zoom = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.remove_rogue_triggered_action_id
  L2_2 = A0_2._bonus_select_action
  L1_2(L2_2)
  A0_2._buffs = nil
  A0_2._select_index = nil
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.ResBarAreaFactory
  L1_2 = L1_2.CreateResBarArea
  L2_2 = A0_2._binder
  L2_2 = L2_2.prefab_load_res_bar
  L3_2 = "RogueSelectBuffPage"
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = L0_1._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
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
  A0_2._select_index = 0
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
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
  L1_2 = A0_2._bonus_select_action
  L1_2 = L1_2.SelectBonusIDs
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_list
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  A0_2._buffs = L2_2
end
L0_1._refresh_data = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = 3
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._buffs
    L7_2 = L7_2[L5_2]
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._on_btn_buff
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L10_2 = L6_2
    L9_2 = L6_2.setup_view
    L11_2 = L7_2
    L12_2 = L8_2
    L13_2 = L5_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
    if L7_2 ~= 0 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L1_2
      L12_2 = L6_2
      L11_2 = L6_2.get_navi_btn
      L11_2, L12_2, L13_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2, L13_2)
    end
    L10_2 = A0_2
    L9_2 = A0_2.setup_navigation
    L11_2 = L1_2
    L12_2 = NavigationType
    L12_2 = L12_2.Horizontal
    L9_2(L10_2, L11_2, L12_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._show_select_buff
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_confirm_btn
  L2_2(L3_2)
end
L0_1._refresh_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._select_index = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._show_select_buff
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_confirm_btn
  L2_2(L3_2)
end
L0_1._on_btn_buff = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = pairs
  L2_2 = A0_2._buffs
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.panels_buff
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
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 ~= nil
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_confirm
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_confirm_btn = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._select_index
  L1_2 = L1_2 ~= nil
  if L1_2 then
    L3_2 = A0_2
    L2_2 = A0_2.show_full_screen_block_for_packet
    L4_2 = CS
    L4_2 = L4_2.PBIBDHBOIGI
    L4_2 = L4_2.IFEDHHFMONO
    L2_2(L3_2, L4_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.NetworkManager
    L2_2 = L2_2.FFOMLPONIFB
    L3_2 = L2_2
    L2_2 = L2_2.MLANCLGOIIN
    L4_2 = A0_2._buffs
    L5_2 = A0_2._select_index
    L4_2 = L4_2[L5_2]
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_confirm = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._bonus_select_action
  if L2_2 ~= nil then
    L2_2 = A0_2._bonus_select_action
    L3_2 = L2_2
    L2_2 = L2_2.GetRogueActionID
    L2_2 = L2_2(L3_2)
    if L2_2 ~= A1_2 then
      goto lbl_11
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.exit
  L2_2(L3_2)
  ::lbl_11::
end
L0_1._on_rogue_action_rsp = L1_1
return L0_1
