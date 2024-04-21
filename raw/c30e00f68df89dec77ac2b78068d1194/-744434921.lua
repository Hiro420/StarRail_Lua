local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Activity.FindTrotter.FindTrotterMainPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.MissionModule
L2_1 = {}
L3_1 = "PesonatIinstrument_Result_1"
L4_1 = "PesonatIinstrument_Result_2"
L5_1 = "PesonatIinstrument_Result_3"
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "FindTrotterMainPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FindTrotterMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._has_searched = false
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_short_down_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_press
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_long_click
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_long_press
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_release
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_start
  L4_2 = A0_2._on_btn_start_release
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_detect_finish
  L2_2 = L1_2
  L1_2 = L1_2.AddActiveListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_start_search
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._has_searched
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
  end
end
L3_1._on_first_child_dialog_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_searched
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UILevelGraphEvent
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.UIEventType
    L3_2 = L3_2.FindTrotter
    L1_2(L2_2, L3_2)
  end
end
L3_1._on_unload = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.GetFindTrotterActivityData
  L1_2 = L1_2(L2_2)
  A0_2._activity_data = L1_2
  L1_2 = A0_2._activity_data
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.exit
    L1_2(L2_2)
    return
  end
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.DataPrepared
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2
  L1_2 = L1_2.ThenLuaAction
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._do_setup_view
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_anim
  L1_2(L2_2)
end
L3_1._do_setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._activity_data
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentFindTrotterData
  L1_2 = L1_2(L2_2)
  A0_2._current_row = L1_2
  L1_2 = A0_2._current_row
  L1_2 = L1_2 == nil
  A0_2._has_direction = L1_2
end
L3_1._refresh_data = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._activity_data
  L3_2 = L3_2.TitleName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_search
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._has_direction
  if not L3_2 then
    L3_2 = A0_2._has_searched
    if not L3_2 then
      goto lbl_19
    end
  end
  L3_2 = "UIText_Activity_FindTrotter_Searched"
  ::lbl_19::
  if not L3_2 then
    L3_2 = "UIText_Activity_FindTrotter_Search"
  end
  L1_2(L2_2, L3_2)
end
L3_1._setup_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "Standby"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "Press"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "LongPress"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetInteger
  L3_2 = "Results"
  L4_2 = A0_2._current_row
  L4_2 = L4_2.Order
  L4_2 = L4_2 - 1
  L4_2 = L4_2 % 3
  L4_2 = L4_2 + 1
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._setup_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "Press"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
end
L3_1._on_btn_start_press = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "LongPress"
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L3_1._on_btn_start_long_press = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.SetBool
  L3_2 = "Press"
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.animator
  L2_2 = L1_2
  L1_2 = L1_2.GetBool
  L3_2 = "LongPress"
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_start
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetInteractable
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
end
L3_1._on_btn_start_release = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._has_direction
  if not L1_2 then
    L1_2 = A0_2._has_searched
    if not L1_2 then
      goto lbl_27
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_hint
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_start
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetInteractable
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Activity_FindTrotter_Searched"
  L1_2(L2_2, L3_2)
  goto lbl_34
  ::lbl_27::
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Activity.FindTrotter.FindTrotterStartDialog"
  L3_2 = A0_2._current_row
  L1_2(L2_2, L3_2)
  A0_2._has_searched = true
  ::lbl_34::
end
L3_1._do_start_search = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._in_control_exit_click = L4_1
return L3_1
