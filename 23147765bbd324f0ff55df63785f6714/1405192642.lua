local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.TravelBrochure.TravelBrochureFirstPageBinder"
L0_1(L1_1)
L0_1 = "4025"
L1_1 = "4017"
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.TravelBrochureModule
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "TravelBrochureFirstPage"
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
  L3_2 = L3_2.TravelBrochureFirstPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._is_invitation_on = true
  L1_2 = {}
  L2_2 = 101
  L3_2 = 102
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  A0_2._introduction_ids = L1_2
  A0_2._introduction_index = 1
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1.SeenBrochureIndex
  L1_2 = L1_2 < 1
  A0_2._is_invitation_on = L1_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = 1
  L3_2 = L2_1.SeenBrochureIndex
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._introduction_index = L1_2
  L1_2 = math
  L1_2 = L1_2.min
  L2_2 = A0_2._introduction_ids
  L2_2 = #L2_2
  L3_2 = A0_2._introduction_index
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._introduction_index = L1_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_invitation_off
  L4_2 = A0_2._on_btn_invitation
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_introduction_off
  L4_2 = A0_2._on_btn_introduction
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_last
  L4_2 = A0_2._on_btn_last
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_next
  L4_2 = A0_2._on_btn_next
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_intro
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.RemoveAllListeners
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_intro
  L1_2 = L1_2.onValueChanged
  L2_2 = L1_2
  L1_2 = L1_2.AddListener
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_scroll_rect_intro_changed
    L0_3(L1_3)
  end
  L1_2(L2_2, L3_2)
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L3_1._on_dispose = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitation_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_introduction_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_seen_index
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 8
  L1_2(L2_2, L3_2)
end
L3_1._setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_invitation_on
  if L1_2 then
    return
  end
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.RecordBrochureSeen
  L3_2 = A0_2._introduction_index
  L1_2(L2_2, L3_2)
end
L3_1._record_seen_index = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_invitation
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_invitation_on
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_introduction
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_invitation_on
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L3_1._refresh_invitation_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_introduction_off
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._introduction_index
  L4_2 = A0_2._introduction_ids
  L4_2 = #L4_2
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._introduction_ids
  L2_2 = A0_2._introduction_index
  L1_2 = L1_2[L2_2]
  L2_2 = L2_1
  L3_2 = L2_2
  L2_2 = L2_2.GetDiaryData
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_intro
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L6_2 = A0_2._introduction_index
  L3_2(L4_2, L5_2, L6_2)
end
L3_1._refresh_introduction_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._introduction_index
  L1_2 = 1 < L1_2
  L2_2 = A0_2._introduction_index
  L3_2 = A0_2._introduction_ids
  L3_2 = #L3_2
  L2_2 = L2_2 < L3_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_arrow
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1._refresh_arrow_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._introduction_index
  L1_2 = L1_2 - 1
  A0_2._introduction_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_introduction_view
  L1_2(L2_2)
end
L3_1._on_btn_last = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._introduction_index
  L1_2 = L1_2 + 1
  A0_2._introduction_index = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_arrow_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_introduction_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_seen_index
  L1_2(L2_2)
end
L3_1._on_btn_next = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_invitation_on
  if not L1_2 then
    L1_2 = A0_2._introduction_index
    if L1_2 == 1 then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect_intro
  L1_2 = L1_2.verticalNormalizedPosition
  if L1_2 < 0.05 then
    L2_2 = G
    L2_2 = L2_2.NotifyManager
    L2_2 = L2_2.notify
    L3_2 = G
    L3_2 = L3_2.CS
    L3_2 = L3_2.NotifyType
    L3_2 = L3_2.TutorialTaskUnlock
    L4_2 = L0_1
    L2_2(L3_2, L4_2)
  end
end
L3_1._on_scroll_rect_intro_changed = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_invitation_on
  L1_2 = not L1_2
  A0_2._is_invitation_on = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_invitation_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_introduction_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._record_seen_index
  L1_2(L2_2)
end
L3_1._on_btn_invitation = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L3_1._on_btn_introduction = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._in_control_exit_click = L4_1
return L3_1
