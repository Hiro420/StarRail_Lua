local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.TreasureChallengeListTargetsPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureChallengeListTargetsPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.RaidConfigExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._row = L4_2
  L4_2 = G
  L4_2 = L4_2.RaidUtils
  L4_2 = L4_2.get_format_treasure_challenge_targets
  L5_2 = A0_2._row
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  A0_2._datas = L4_2
  L4_2 = A0_2._binder
  L4_2 = L4_2.list_view
  L5_2 = L4_2
  L4_2 = L4_2.SetListItemCount
  L6_2 = A0_2._datas
  L6_2 = #L6_2
  L4_2(L5_2, L6_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.TreasureChallengeTargetItemPanel
    L8_2 = G
    L8_2 = L8_2.TreasureChallengeTargetItemPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._datas
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  return L3_2
end
L0_1._on_item_changed = L1_1
return L0_1
