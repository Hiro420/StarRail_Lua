local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueDLCEntrancePatternBgPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.MainPage.Components.RogueDLCEntrancePatternBgPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueDLCEntrancePatternBgListPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2
  L3_2 = {}
  A0_2._bg_panels = L3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.RogueDLCEntranceExcelTable
  L1_2 = L1_2.GetEnumerator
  L1_2 = L1_2()
  while true do
    L3_2 = L1_2
    L2_2 = L1_2.MoveNext
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      break
    end
    L2_2 = L1_2.Current
    if L2_2 ~= nil then
      L3_2 = L2_2.PatternBgPath
      if L3_2 ~= nil then
        L3_2 = L2_2.PatternBgPath
        if L3_2 ~= "" then
          goto lbl_21
        end
      end
    end
    do return end
    ::lbl_21::
    L4_2 = A0_2
    L3_2 = A0_2.sync_load_prefab
    L5_2 = L2_2.PatternBgPath
    L6_2 = A0_2._binder
    L6_2 = L6_2.root
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    L4_2 = L3_2.transform
    L5_2 = string
    L5_2 = L5_2.gsub
    L6_2 = L3_2.transform
    L6_2 = L6_2.name
    L7_2 = "%(Clone%)"
    L8_2 = ""
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2.name = L5_2
    L5_2 = A0_2
    L4_2 = A0_2.create_panel
    L6_2 = G
    L6_2 = L6_2.RogueDLCEntrancePatternBgPanel
    L7_2 = G
    L7_2 = L7_2.RogueDLCEntrancePatternBgPanelBinder
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
    L6_2 = L4_2
    L5_2 = L4_2.setup_view
    L5_2(L6_2)
    L5_2 = A0_2._bg_panels
    L6_2 = L2_2.SubType
    L5_2[L6_2] = L4_2
  end
  L3_2 = L1_2
  L2_2 = L1_2.Dispose
  L2_2(L3_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 ~= nil then
    L2_2 = A0_2._cur_pattern_bg_sub_mode
    if A1_2 ~= L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = A0_2._cur_pattern_bg_sub_mode
  if L2_2 ~= nil then
    L2_2 = A0_2._bg_panels
    L3_2 = A0_2._cur_pattern_bg_sub_mode
    L2_2 = L2_2[L3_2]
    if L2_2 ~= nil then
      L2_2 = A0_2._bg_panels
      L3_2 = A0_2._cur_pattern_bg_sub_mode
      L2_2 = L2_2[L3_2]
      L3_2 = L2_2
      L2_2 = L2_2.hide
      L2_2(L3_2)
    end
  end
  L2_2 = A0_2._bg_panels
  L2_2 = L2_2[A1_2]
  if L2_2 ~= nil then
    L2_2 = A0_2._bg_panels
    L2_2 = L2_2[A1_2]
    L3_2 = L2_2
    L2_2 = L2_2.show
    L2_2(L3_2)
  end
  A0_2._cur_pattern_bg_sub_mode = A1_2
end
L0_1.switch_pattern_bg = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._bg_panels
  L2_2 = A0_2._cur_pattern_bg_sub_mode
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L1_2 = A0_2._bg_panels
    L2_2 = A0_2._cur_pattern_bg_sub_mode
    L1_2 = L1_2[L2_2]
    L2_2 = L1_2
    L1_2 = L1_2.hide
    L1_2(L2_2)
  end
  A0_2._cur_pattern_bg_sub_mode = nil
end
L0_1.hide_all_pattern_bgs = L1_1
return L0_1
