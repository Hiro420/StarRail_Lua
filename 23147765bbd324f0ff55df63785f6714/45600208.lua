local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookMainPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookMainPagePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookAeonPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookBuffPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.RogueHandbookMiraclePage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookMainPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueHandbookModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueHandbookTypeExcelTable
function L3_1(A0_2)
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
  L3_2 = L3_2.RogueHandbookMainPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
  A0_2._pause_game = true
  A0_2._is_resp_esc = true
  A0_2._handbook_type_aeon = 2
  A0_2._handbook_type_buff = 1
  A0_2._handbook_type_miracle = 3
  A0_2._handbook_type_event = 4
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 32
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_exit
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_aeon
  L4_2 = A0_2._on_btn_aeon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_btn_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_miracle
  L4_2 = A0_2._on_btn_miracle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_aeon_go
  L4_2 = A0_2._on_btn_aeon
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff_go
  L4_2 = A0_2._on_btn_buff
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_miracle_go
  L4_2 = A0_2._on_btn_miracle
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_evt_btn
  L4_2 = A0_2._on_btn_event_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_evt_go_btn
  L4_2 = A0_2._on_btn_event_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_aeon
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_aeon
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_buff
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_miracle
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_miracle
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.random_evt_btn
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.random_evt_btn
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.TryGetCurrentRogueVersionData
  L1_2(L2_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueHandbookDataSynced
  L4_2 = A0_2._on_rogue_handbook_data_synced
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._add_handlers = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_aeon_view
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_event_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_navigation
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_aeon_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_event_view
  L1_2(L2_2)
end
L0_1._setup_view_on_data_synced = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L2_1.GetData
  L3_2 = A0_2._handbook_type_aeon
  L2_2 = L2_2(L3_2)
  L3_2 = L1_1.UnlockAeonsNum
  L4_2 = L1_1.AeonsMap
  L4_2 = L4_2.Count
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_aeon_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L2_2.RogueHandBookType
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_aeon_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L2_2.RogueHandBookDesc
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_aeon_num
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = L3_2
  L8_2 = "/"
  L9_2 = L4_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RedDotModule
  L5_2 = L5_2.Instance
  L6_2 = L5_2
  L5_2 = L5_2.bind_reddot
  L7_2 = "RogueHandbookAeonEntrance"
  L8_2 = nil
  L9_2 = A0_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.node_aeon_red_dot
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  if A1_2 then
    L6_2 = A0_2
    L5_2 = A0_2.async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_aeon_bg
    L8_2 = L1_1
    L9_2 = L8_2
    L8_2 = L8_2.GetRandomUnlockAeonImg
    L8_2, L9_2, L10_2 = L8_2(L9_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
end
L0_1._setup_aeon_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L2_1.GetData
  L2_2 = A0_2._handbook_type_buff
  L1_2 = L1_2(L2_2)
  L2_2 = L1_1.UnlockBuffNum
  L3_2 = L1_1.AvailableBuffNum
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2.RogueHandBookType
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L1_2.RogueHandBookDesc
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_num
  L5_2 = L4_2
  L4_2 = L4_2.SetCustomizedText
  L6_2 = L2_2
  L7_2 = "/"
  L8_2 = L3_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RedDotModule
  L4_2 = L4_2.Instance
  L5_2 = L4_2
  L4_2 = L4_2.bind_reddot
  L6_2 = "RogueHandbookBuffReward"
  L7_2 = nil
  L8_2 = A0_2
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_buff_red_dot
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._setup_buff_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L2_1.GetData
  L2_2 = A0_2._handbook_type_miracle
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_miracle_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueHandBookType
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RogueUtils
  L2_2 = L2_2.is_rogue_handbook_miacle_unlock
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_miracle_num
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_miracle_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_miracle_locked
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_miracle_go
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = L1_1.UnlockMiracleNum
    L4_2 = L1_1.AvailableMiracleNum
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_miracle_desc
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L1_2.RogueHandBookDesc
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_miracle_num
    L6_2 = L5_2
    L5_2 = L5_2.SetCustomizedText
    L7_2 = L3_2
    L8_2 = "/"
    L9_2 = L4_2
    L7_2 = L7_2 .. L8_2 .. L9_2
    L5_2(L6_2, L7_2)
  end
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "RogueHandbookMiracleReward"
  L6_2 = nil
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_miracle_red_dot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_miracle_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L2_1.GetData
  L2_2 = A0_2._handbook_type_event
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueHandBookType
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.RogueHandBookDesc
  L2_2(L3_2, L4_2)
  L2_2 = G
  L2_2 = L2_2.RogueUtils
  L2_2 = L2_2.is_rogue_handbook_event_unlock
  L2_2 = L2_2()
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_evt_num_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_evt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_evt_lock_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_evt_go_btn
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = L1_1.UnlockEventNum
  L4_2 = L1_1.AvailableEventNum
  L5_2 = A0_2._binder
  L5_2 = L5_2.random_evt_num
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = L3_2
  L8_2 = "/"
  L9_2 = L4_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RedDotModule
  L5_2 = L5_2.Instance
  L6_2 = L5_2
  L5_2 = L5_2.bind_reddot
  L7_2 = "RogueHandbookEventMain"
  L8_2 = nil
  L9_2 = A0_2
  L10_2 = A0_2._binder
  L10_2 = L10_2.random_evt_red_dot
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L0_1._setup_event_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_aeon
  L1_2 = L1_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_aeon
  L2_2.navigation = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_btn
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_miracle
  L1_2.selectOnDown = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_btn
  L2_2.navigation = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_aeon
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.random_evt_btn
  L1_2.selectOnRight = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_miracle
  L1_2.selectOnDown = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L2_2.navigation = L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_miracle
  L1_2 = L2_2.navigation
  L2_2 = CS
  L2_2 = L2_2.UnityEngine
  L2_2 = L2_2.UI
  L2_2 = L2_2.Navigation
  L2_2 = L2_2.Mode
  L2_2 = L2_2.Explicit
  L1_2.mode = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_aeon
  L1_2.selectOnLeft = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L1_2.selectOnUp = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_miracle
  L2_2.navigation = L1_2
end
L0_1._setup_btn_navigation = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshScheduleStatusAndUnlockNum
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_aeon_view
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_event_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.Rogue.Handbook.RogueHandbookAeonPage"
  L3_2 = true
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.SetUnlockedAeonReaded
  L1_2(L2_2)
end
L0_1._on_btn_aeon = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_handbook_buff_unlock
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Rogue.Handbook.RogueHandbookBuffPage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Rogue_HandBook_Lock_Hint1"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_buff = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_handbook_miacle_unlock
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Rogue.Handbook.RogueHandbookMiraclePage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Rogue_HandBook_Lock_Hint2"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_miracle = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.is_rogue_handbook_event_unlock
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Rogue.Handbook.RogueHandbookEventPage"
    L1_2(L2_2)
  else
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "UIText_Rogue_HandBook_Lock_Hint2"
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_event_clicked = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_view_on_data_synced
  L1_2(L2_2)
end
L0_1._on_rogue_handbook_data_synced = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L3_1
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
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_aeon
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.btn_aeon
      L1_2 = L1_2.gameObject
      return L1_2
    end
  end
end
L0_1.get_first_selected_object = L3_1
return L0_1
