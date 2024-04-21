local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearDetailPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildGearDetailInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.Select.BattleEvolveBuildSelectGearTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildGearDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 1
L2_1 = 2
L3_1 = 3
function L4_1(A0_2)
  local L1_2
end
L0_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_self = A2_2
end
L0_1.register_on_btn_root_callback = L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A0_2._detail_info_panel
  if L3_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.EvolveBuildGearDetailInfoPanel
    L6_2 = G
    L6_2 = L6_2.EvolveBuildGearDetailInfoPanelBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._detail_info_panel = L3_2
    L3_2 = A0_2._detail_info_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.node_detail
    L3_2(L4_2, L5_2)
  end
  L3_2 = false
  if A2_2 then
    L3_2 = true
  end
  L4_2 = A0_2._detail_info_panel
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_state
  L6_2 = L1_1
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L4_2 = L2_1
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.EvolveGearTypeConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.imge_empty
  L6_2 = L2_2.TypeImg
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.EvolveGearType
  L3_2 = L3_2.Tool
  if A1_2 == L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_empty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_EvolveBuild_WeaponUnlock"
    L3_2(L4_2, L5_2)
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_empty
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_EvolveBuild_JewelryUnlock"
    L3_2(L4_2, L5_2)
  end
end
L0_1.setup_empty = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_state
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1.setup_locked = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_empty_close
  L1_2(L2_2)
end
L0_1.trigger_empty_close = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_empty
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L2_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L3_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_detail
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_1
  L4_2 = A1_2 == L4_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_short_cut_hint_panel
  L4_2 = 33
  L5_2 = A0_2._binder
  L5_2 = L5_2.scroll_rect_content
  L6_2 = "Root/DialogPanel/Root"
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_state = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._on_btn_root_callback
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._on_btn_root_callback
    L3_2 = A0_2._on_btn_root_callback_self
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2.set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_empty_close = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._detail_info_panel
  if L1_2 then
    L1_2 = A0_2._detail_info_panel
    L2_2 = L1_2
    L1_2 = L1_2.setup_buff_desc
    L1_2(L2_2)
  end
end
L0_1.setup_buff_desc = L4_1
return L0_1
