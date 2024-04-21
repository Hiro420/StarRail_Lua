local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Maze.MazeShortCutHintPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Maze.MazeShortCutHintPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueBossBuffItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_deselect
    L0_3(L1_3)
  end
  L1_2.onDeselectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueDLCBossDecayExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.image_icon
  L6_2 = L2_2.DecayIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BossDecayName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L2_2.BossDecayDesc
  L6_2 = G
  L6_2 = L6_2.UITextUtils
  L6_2 = L6_2.GetSkillParams
  L7_2 = L2_2.DescParam
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = L2_2.BossDecayComeFrom
  if L3_2 ~= nil then
    L3_2 = L2_2.BossDecayComeFrom
    L4_2 = L3_2
    L3_2 = L3_2.IsEmpty
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.text_tip
      L4_2 = L3_2
      L3_2 = L3_2.SafeSetTextID
      L5_2 = L2_2.BossDecayComeFrom
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_tip
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetText
    L5_2 = ""
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.underline_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2.ExtraDesc
  L6_2 = true
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_short_cut_hint_panel
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_first_selected_object = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L4_2 = A0_2
  L3_2 = A0_2.get_first_selected_object
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_ctrl_button
  L1_2.ActionEnabled = true
  L1_2 = A0_2._short_cut_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._short_cut_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = true
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.mono_in_ctrl_button
  L1_2.ActionEnabled = false
  L1_2 = A0_2._short_cut_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._short_cut_panel
    L2_2 = L1_2
    L1_2 = L1_2.safe_set_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L0_1._on_btn_root_deselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_pc_or_ps_or_mobile_gamepad_mode
  L1_2 = L1_2()
  if not L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.underline_panel
  L3_2 = L2_2
  L2_2 = L2_2.is_extra_info_available
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = "ActionGroup_BuffDetail"
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_short_cut_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = #L1_2
  L4_2 = 0 < L4_2
  L2_2(L3_2, L4_2)
  L2_2 = #L1_2
  if L2_2 == 0 then
    return
  end
  L2_2 = A0_2._short_cut_panel
  if L2_2 == nil then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.MazeShortCutHintPanel
    L5_2 = G
    L5_2 = L5_2.MazeShortCutHintPanelBinder
    L6_2 = L1_2
    L7_2 = nil
    L8_2 = false
    L9_2 = A0_2._binder
    L9_2 = L9_2.short_cut_panel_load_meta
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    A0_2._short_cut_panel = L2_2
    L2_2 = A0_2._short_cut_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_short_cut_panel
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._short_cut_panel
    L3_2 = L2_2
    L2_2 = L2_2.setup_short_cut_hint_view
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._short_cut_panel
  L3_2 = L2_2
  L2_2 = L2_2.safe_set_active
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._setup_short_cut_hint_panel = L1_1
return L0_1
