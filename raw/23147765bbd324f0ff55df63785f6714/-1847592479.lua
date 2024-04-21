local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.PhotoGraph.RubbingPageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RubbingPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RubbingPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.water_mark_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.load_photograph_meta
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.load_photograph_meta
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.PhotoGraphShot
  L5_2 = A0_2._on_shot
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._add_notify_handler
  L4_2 = G
  L4_2 = L4_2.CS
  L4_2 = L4_2.NotifyType
  L4_2 = L4_2.UIHideRubbingPage
  L5_2 = A0_2.exit
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.set_billboard_show_type
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.BillboardShowType
  L3_2 = L3_2.AllClose
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.PhotoGraphUtils
  L2_2 = L2_2.get_cur_frame_texture
  L2_2 = L2_2()
  L3_2 = G
  L3_2 = L3_2.new
  L4_2 = "Ui.PhotoGraph.PhotoResultDialog"
  L3_2 = L3_2(L4_2)
  L5_2 = L3_2
  L4_2 = L3_2.hide_btn_panel
  L4_2(L5_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_result_texture
  L6_2 = L2_2
  L4_2(L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.set_exit_callback
  function L6_2()
    local L0_3, L1_3
    L0_3 = G
    L0_3 = L0_3.PhotoGraphUtils
    L0_3 = L0_3.set_billboard_show_type
    L1_3 = CS
    L1_3 = L1_3.RPG
    L1_3 = L1_3.Client
    L1_3 = L1_3.BillboardShowType
    L1_3 = L1_3.Warning
    L0_3(L1_3)
  end
  L7_2 = A0_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = L3_2
  L4_2 = L3_2.async_show
  L4_2(L5_2)
end
L0_1._on_shot = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.PhotoGraphUtils
  L1_2 = L1_2.reopen_waypoint_billboard
  L1_2()
end
L0_1._on_dispose = L1_1
return L0_1
