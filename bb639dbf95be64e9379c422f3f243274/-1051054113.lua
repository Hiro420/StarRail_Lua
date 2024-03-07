local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.Bartend.DrinkMakerBartendResultDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerBartendResultDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.DrinkMakerModule
L2_1 = "UIText_DrinkMaker_PlayerCustomDrinkName"
L3_1 = "UIText_DrinkMaker_PlayerCustomDrinkDesc"
L4_1 = 16
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendResultDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.DrinkMakerBartendUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._bartend_ui3d = L1_2
  A0_2._pause_game = true
  A0_2._enable_exit = false
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2
  A0_2._open_mode = A1_2
  A0_2._request = A2_2
  A0_2._drink_data = A3_2
  A0_2._comments = A4_2
  L5_2 = L1_1.DrinkMakerBar
  L5_2 = L5_2.CurGuestRow
  A0_2._cur_guest_row = L5_2
end
L0_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_close
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_skip
  L4_2 = A0_2._on_btn_skip_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_empty_close
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.SetTimer
  L3_2 = A0_2._on_timeline_end
  L4_2 = A0_2
  L5_2 = L4_1
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.Reset
  L1_2(L2_2)
end
L0_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_tag_list
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A0_2._drink_data
  L5_2 = L4_2
  L4_2 = L4_2.GetAllVisibleTags
  L4_2, L5_2 = L4_2(L5_2)
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._bartend_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_drink_begin
  L1_2(L2_2)
  L1_2 = A0_2._request
  L1_2 = L1_2.TargetDrink
  A0_2._select_drink = L1_2
  L1_2 = A0_2._open_mode
  L2_2 = DrinkMakerBartendMode
  L2_2 = L2_2.FreeMode
  if L1_2 == L2_2 then
    L1_2 = A0_2._request
    L1_2 = L1_2.IsSaveOnServer
    if L1_2 then
      L1_2 = L1_1.DrinkMakerBar
      L1_2 = L1_2.CustomDrink
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_drink_name
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.Name
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.text_drink_desc
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L1_2.Desc
      L2_2(L3_2, L4_2)
    else
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_drink_name
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_drink_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = L3_1
      L1_2(L2_2, L3_2)
    end
  else
    L1_2 = A0_2._open_mode
    L2_2 = DrinkMakerBartendMode
    L2_2 = L2_2.DrinkMenuMode
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_drink_name
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._select_drink
      L3_2 = L3_2.Name
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.text_drink_desc
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetTextID
      L3_2 = A0_2._select_drink
      L3_2 = L3_2.Desc
      L1_2(L2_2, L3_2)
    else
      L1_2 = A0_2._open_mode
      L2_2 = DrinkMakerBartendMode
      L2_2 = L2_2.ChallengeMode
      if L1_2 == L2_2 then
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_drink_name
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = A0_2._select_drink
        L3_2 = L3_2.Name
        L1_2(L2_2, L3_2)
        L1_2 = A0_2._binder
        L1_2 = L1_2.text_drink_desc
        L2_2 = L1_2
        L1_2 = L1_2.SafeSetTextID
        L3_2 = A0_2._select_drink
        L3_2 = L3_2.Desc
        L1_2(L2_2, L3_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_comments
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_count_down_timer
  L3_2 = A0_2._on_timer_out
  L4_2 = G
  L4_2 = L4_2.ConstValueUtils
  L4_2 = L4_2.get_uint_value
  L5_2 = "DrinkMaker_DrinkPerformanceCanSkipTime"
  L4_2, L5_2 = L4_2(L5_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2._timer = L1_2
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.reset
  L1_2(L2_2)
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.start
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L1_2.IsPause = false
end
L0_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if not L1_2 then
    return
  end
  L1_2 = A0_2._bartend_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.show_drink_finish
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.DrinkMakerOnResultDialogClose
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._in_control_exit_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.CleanTimer
  L1_2(L2_2)
end
L0_1._on_dispose = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._comments
  L1_2 = #L1_2
  if L1_2 == 0 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_comments_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_comments_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = 1
  L2_2 = 3
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = A0_2._comments
    L5_2 = L5_2[L4_2]
    if L5_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.list_comments
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.setup_view
      L8_2 = A0_2._cur_guest_row
      L9_2 = L5_2
      L6_2(L7_2, L8_2, L9_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.list_comments
      L6_2 = L6_2[L4_2]
      L7_2 = L6_2
      L6_2 = L6_2.safe_set_active
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._setup_comments = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_skip_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_exit
  if not L1_2 then
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_btn_empty_close_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._timer
  L2_2 = L1_2
  L1_2 = L1_2.stop
  L1_2(L2_2)
  A0_2._enable_exit = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_empty_close
  L1_2 = L1_2.transform
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_skip
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1._on_timer_out = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_timer
  L2_2 = L1_2
  L1_2 = L1_2.Reset
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._in_control_exit_click
  L1_2(L2_2)
end
L0_1._on_timeline_end = L5_1
return L0_1
