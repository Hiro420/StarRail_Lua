local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Museum.MuseumNewPhaseDialogBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumNewPhaseDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 2
L2_1 = "UIText_ActivityMuseum_NewPhase"
L3_1 = "UIText_ActivityMuseum_P5Title"
L4_1 = "UIText_ActivityMuseum_P5PicName"
L5_1 = "SpriteOutput/Quest/Museum/MuseumAreaHintIcon/MuseumAreaHintIcon5.png"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_AboveDialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.MuseumNewPhaseDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._is_special_above_dialog = true
end
L0_1.ctor = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumPhaseExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A0_2._phase_row = L2_2
end
L0_1.init = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_empty_close
  L4_2 = A0_2._on_btn_empty_close_click
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.show_full_screen_block
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L6_1
function L6_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_phase_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_area_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_fund_info
  L1_2(L2_2)
end
L0_1._setup_view = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.phase_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._phase_row
  L1_2(L2_2, L3_2)
end
L0_1._setup_phase_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._phase_row
  L1_2 = L1_2.UnlockAreaID
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_area_index
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_area_text_dash
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = 0 < L1_2
  L2_2(L3_2, L4_2)
  if L1_2 == 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_area_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_unlock_hint
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
    L3_2 = A0_2
    L2_2 = A0_2.async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_area
    L5_2 = L5_1
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MuseumAreaConfigExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_area_index
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = "0"
  L6_2 = L1_2
  L5_2 = L5_2 .. L6_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_area_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.MuseumAreaName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_unlock_hint
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_1
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_area
  L6_2 = L2_2.MuseumAreaHintIcon
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_area_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_fund_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._phase_row
  L3_2 = L3_2.PhaseFund
  L3_2 = 0 < L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._phase_row
  L1_2 = L1_2.PhaseFund
  if L1_2 == 0 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_fund_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._phase_row
  L3_2 = L3_2.PhaseFund
  L1_2(L2_2, L3_2)
end
L0_1._setup_fund_info = L6_1
function L6_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_empty_close_click = L6_1
return L0_1
