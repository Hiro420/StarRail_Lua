local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.ChallengeStory.Common.ChallengeStoryBuffDetailDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Challenge.ChallengeUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeStoryBuffDetailDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 20
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.ScheduleModule
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeStoryBuffDetailDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._challenge_group_data = A1_2
  A0_2.cur_buff_id = A2_2
  A0_2.buff_rect = A3_2
end
L0_1.init = L3_1
function L3_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2.last_select_panel
  L1_2 = L1_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_bg_close
  L4_2 = A0_2._on_exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = A0_2.buff_rect
  L2_2 = L2_2.anchorMin
  L1_2.anchorMin = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = A0_2.buff_rect
  L2_2 = L2_2.anchorMax
  L1_2.anchorMax = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = A0_2.buff_rect
  L2_2 = L2_2.position
  L1_2.position = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff_panel
  L2_2 = A0_2.buff_rect
  L2_2 = L2_2.sizeDelta
  L1_2.sizeDelta = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._challenge_group_data
  L1_2 = L1_2.OptionalBuffList
  A0_2.buff_list = L1_2
  L1_2 = {}
  A0_2.param_table = L1_2
  L1_2 = 0
  L2_2 = A0_2.buff_list
  L2_2 = L2_2.Length
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = A0_2.param_table
    L7_2 = {}
    L8_2 = A0_2.buff_list
    L8_2 = L8_2[L4_2]
    L7_2.buff_id = L8_2
    L8_2 = A0_2._on_buff_click
    L7_2.click_callback = L8_2
    L7_2.callback_listener = A0_2
    L5_2(L6_2, L7_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.buff_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2.param_table
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2.buff_list
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.buff_panel
    L6_2 = L6_2._node_panel_list
    L7_2 = L5_2 + 1
    L6_2 = L6_2[L7_2]
    L6_2 = L6_2._binder
    L6_2 = L6_2.btn_root
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2.buff_list
    L7_2 = L7_2[L5_2]
    L8_2 = A0_2.cur_buff_id
    if L7_2 == L8_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.buff_panel
      L7_2 = L7_2._node_panel_list
      L8_2 = L5_2 + 1
      L7_2 = L7_2[L8_2]
      A0_2.last_select_panel = L7_2
      L7_2 = A0_2.last_select_panel
      if L7_2 == nil then
        return
      end
      L7_2 = A0_2.last_select_panel
      L8_2 = L7_2
      L7_2 = L7_2.set_select
      L9_2 = true
      L7_2(L8_2, L9_2)
      L7_2 = A0_2.last_select_panel
      L8_2 = L7_2
      L7_2 = L7_2.set_popup_active
      L9_2 = true
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2.setup_navigation
  L4_2 = L1_2
  L5_2 = NavigationType
  L5_2 = L5_2.Horizontal
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_buff = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2.cur_buff_id
  if A2_2 == L3_2 then
    return
  end
  A0_2.cur_buff_id = A2_2
  L3_2 = A0_2.last_select_panel
  if L3_2 ~= nil then
    L3_2 = A0_2.last_select_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_select
    L5_2 = false
    L3_2(L4_2, L5_2)
    L3_2 = A0_2.last_select_panel
    L4_2 = L3_2
    L3_2 = L3_2.set_popup_active
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L4_2 = A1_2
  L3_2 = A1_2.set_select
  L5_2 = true
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.set_popup_active
  L5_2 = true
  L3_2(L4_2, L5_2)
  A0_2.last_select_panel = A1_2
end
L0_1._on_buff_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_exit = L3_1
return L0_1
