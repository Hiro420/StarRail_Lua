local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveDetailPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.ArchiveFilterItemListDialog"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterArchiveUI3DPage"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterFilterItemPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Archive.MonsterArchive.MonsterFilterItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MonsterArchiveDetailPage"
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
  L3_2 = L3_2.MonsterArchiveDetailPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  L2_2 = A0_2
  L1_2 = A0_2.fetch_ui3d
  L3_2 = G
  L3_2 = L3_2.MonsterArchiveUI3DPage
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._monster_ui3d = L1_2
  A0_2._allow_camera_zoom_rotation_by_mouse = true
  A0_2._allow_camera_zoom_by_gamepad = true
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  A0_2._entry = A1_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_back
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_3d
  L4_2 = A0_2._on_btn_3d
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_filter
  L4_2 = A0_2._on_btn_filter
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._entry
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._monster_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.switch_monster
  L3_2 = A0_2._entry
  L3_2 = L3_2.Row
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._entry = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1._on_entry_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_3d_mode
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  A0_2._is_in_3d_mode = true
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_3d = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_in_3d_mode
  if not L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_in_3d_mode = false
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_filter
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.setup_short_cut_hint_panel
  L3_2 = 33
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.ArchiveFilterItemListDialog
  L1_2 = L1_2(L2_2)
  L3_2 = L1_2
  L2_2 = L1_2.init
  L4_2 = G
  L4_2 = L4_2.MonsterFilterItemPanel
  L5_2 = G
  L5_2 = L5_2.MonsterFilterItemPanelBinder
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.ArchiveType
  L6_2 = L6_2.Monster
  L7_2 = A0_2._entry
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L3_2 = L1_2
  L2_2 = L1_2.register_click_callback
  L4_2 = A0_2._on_entry_click
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_prefab_index
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_lock_hint
  L4_2 = "UIText_MonsterAtlas_NotObtained"
  L2_2(L3_2, L4_2)
  L3_2 = L1_2
  L2_2 = L1_2.set_exit_callback
  L4_2 = A0_2._on_filter_dialog_exit
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.show
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._on_filter_dialog_show
  L2_2(L3_2)
end
L0_1._on_btn_filter = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeIn"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._monster_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_anim_trigger
  L3_2 = "FilterOn"
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_show = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_filter
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "DataBankFilterFadeOut"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._monster_ui3d
  L2_2 = L1_2
  L1_2 = L1_2.set_anim_trigger
  L3_2 = "FilterOff"
  L1_2(L2_2, L3_2)
end
L0_1._on_filter_dialog_exit = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._is_in_3d_mode
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_root
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_exit
    L1_2(L2_2)
  end
end
L0_1._in_control_exit_click = L1_1
return L0_1
