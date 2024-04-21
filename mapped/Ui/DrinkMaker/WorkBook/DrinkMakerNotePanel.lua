local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.DrinkMaker.DrinkMakerBarUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerNotePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 100
L2_1 = "UIText_DrinkMaker_WorkBook_VisitFaith"
L3_1 = "UIText_DrinkMaker_WorkBook_VisitDay"
L4_1 = "DrinkMakerVisitHistoryInfoRow_Active"
function L5_1(A0_2)
  local L1_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._guest_data = A1_2
  A0_2._day = A2_2
  L3_2 = A0_2._day
  L4_2 = A0_2._guest_data
  L4_2 = L4_2.DayCount
  L3_2 = L3_2 > L4_2
  A0_2._is_lock = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh
  L3_2(L4_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._is_lock
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_lock_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_unlock_view
    L1_2(L2_2)
  end
  L1_2 = CS
  L1_2 = L1_2.UnityEngine
  L1_2 = L1_2.UI
  L1_2 = L1_2.LayoutRebuilder
  L1_2 = L1_2.ForceRebuildLayoutImmediate
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  A0_2._is_lock = true
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1.wait_unlock_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  A0_2._is_lock = false
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  return L1_2
end
L0_1.get_root_transform = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_lock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_lock = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L3_1
  L2_2 = A0_2._day
  L1_2 = L1_2 .. L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.GuestRow
  L2_2 = L2_2.MaxFaith
  if L2_2 == 0 then
    L3_2 = 0
    if L3_2 then
      goto lbl_18
    end
  end
  L3_2 = 1 / L2_2
  ::lbl_18::
  L4_2 = math
  L4_2 = L4_2.floor
  L5_2 = L1_1
  L5_2 = L3_2 * L5_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_trust_lock
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L2_1
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._setup_lock_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L3_1
  L2_2 = A0_2._day
  L1_2 = L1_2 .. L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_note_list
  L2_2(L3_2)
end
L0_1._setup_unlock_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.DrinkMakerNoteExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.GuestID
  L3_2 = A0_2._day
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = G
  L2_2 = L2_2.Utils
  L2_2 = L2_2.create_lua_table_from_cs_array
  L3_2 = L1_2.DrinkMakerNoteList
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.note_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = A0_2._binder
    L7_2 = L7_2.note_list
    L8_2 = L7_2
    L7_2 = L7_2.get_panel_by_index
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.show_line
      L10_2 = #L2_2
      L10_2 = L6_2 ~= L10_2
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_note_list = L5_1
return L0_1
