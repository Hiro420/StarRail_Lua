local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.GamePlayRaid.ClockParkRaidTabItemBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "UIText_ClockPark_Recover_Progress"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ClockParkRaidTabItem"
L4_1 = G
L4_1 = L4_1.TabItem
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2
end
L2_1._on_dispose = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_navi
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.force_set_first_navigation_target
  L1_2(L2_2)
end
L2_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = G
  L1_2 = L1_2.CS
  L1_2 = L1_2.EventSystem
  L1_2 = L1_2.current
  L1_2 = L1_2.currentSelectedGameObject
  A0_2._last_selected_object = L1_2
end
L2_1._on_unselect = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = L0_1.Progress
  L1_2 = L1_2 / 100
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_1
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.img_progress
  L3_2 = L0_1.Progress
  L3_2 = L3_2 / 10000
  L2_2.fillAmount = L3_2
  L2_2 = 0
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ClockParkRaidExcelTable
  L3_2 = L3_2.dataDict
  L4_2 = 1
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  for L8_2, L9_2 in L5_2, L6_2, L7_2 do
    L10_2 = A0_2._binder
    L10_2 = L10_2.panels_raid_item
    L10_2 = L10_2[L4_2]
    L11_2 = L10_2
    L10_2 = L10_2.setup_view
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = L9_2.RaidUnlockProgress
    L10_2 = L10_2 / 100
    if L1_2 > L10_2 then
      L11_2 = A0_2._binder
      L11_2 = L11_2.slider_progresses
      L11_2 = L11_2[L4_2]
      L11_2.value = 1
    else
      L11_2 = A0_2._binder
      L11_2 = L11_2.slider_progresses
      L11_2 = L11_2[L4_2]
      L12_2 = L1_2 - L2_2
      L13_2 = L10_2 - L2_2
      L12_2 = L12_2 / L13_2
      L11_2.value = L12_2
    end
    L2_2 = L10_2
    L4_2 = L4_2 + 1
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.slider_progresses
  L5_2 = L5_2[L4_2]
  L6_2 = L1_2 - L2_2
  L7_2 = 100 - L2_2
  L6_2 = L6_2 / L7_2
  L5_2.value = L6_2
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2
end
L2_1._refresh_navi = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._last_selected_object
  if L1_2 ~= nil then
    L1_2 = A0_2._last_selected_object
    return L1_2
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.panels_raid_item
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_btn
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.gameObject
  return L1_2
end
L2_1.get_first_selected_object = L3_1
return L2_1
