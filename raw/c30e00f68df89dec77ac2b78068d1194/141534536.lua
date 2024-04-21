local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Tutorial.ChallengeInfoDialogBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.CommonBossIconPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeInfoDialog"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Dialog
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ChallengeInfoDialogBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2, A1_2)
  local L2_2
  L2_2 = A1_2.ChallengeData
  A0_2._challenge_data = L2_2
end
L0_1.init = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.exit_btn
  L4_2 = A0_2._exit
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.monster_listview
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = 0
  L4_2 = A0_2._on_monster_item_change
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._challenge_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.dialog_title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._challenge_data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_targets
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_monsters
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_propose_element
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.CommonBossIconPanel
    L8_2 = G
    L8_2 = L8_2.CommonBossIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._monster_table
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.MonsterID
  L9_2 = L5_2.Level
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = L4_2
  L6_2 = L4_2.setup_fellow_monsters
  L8_2 = A0_2._monster_ids
  L9_2 = A2_2 + 1
  L6_2(L7_2, L8_2, L9_2)
  return L3_2
end
L0_1._on_monster_item_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.GetChallengeTargetDataList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.challenge_target_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_targets = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._challenge_data
  L2_2 = L1_2
  L1_2 = L1_2.GetAllMonsterData
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  A0_2._monster_table = L2_2
  L3_2 = L1_2
  L2_2 = L1_2.GetEnumerator
  L2_2 = L2_2(L3_2)
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._monster_table
    L5_2 = A0_2._monster_table
    L5_2 = #L5_2
    L5_2 = L5_2 + 1
    L6_2 = L2_2.Current
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = table
  L3_2 = L3_2.sort
  L4_2 = A0_2._monster_table
  function L5_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3
    L2_3 = string
    L2_3 = L2_3.sub
    L3_3 = A0_3.MonsterID
    L4_3 = 4
    L5_3 = 4
    L2_3 = L2_3(L3_3, L4_3, L5_3)
    L3_3 = string
    L3_3 = L3_3.sub
    L4_3 = A1_3.MonsterID
    L5_3 = 4
    L6_3 = 4
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    L4_3 = L2_3 < L3_3
    return L4_3
  end
  L3_2(L4_2, L5_2)
  L3_2 = {}
  A0_2._monster_ids = L3_2
  L3_2 = 1
  L4_2 = A0_2._monster_table
  L4_2 = #L4_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._monster_ids
    L9_2 = A0_2._monster_table
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.ID
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_listview
  L4_2 = L3_2
  L3_2 = L3_2.SetListItemCount
  L5_2 = A0_2._monster_table
  L5_2 = #L5_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.monster_listview
  L4_2 = L3_2
  L3_2 = L3_2.RefreshAllShownItem
  L3_2(L4_2)
end
L0_1._setup_monsters = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._challenge_data
  L1_2 = L1_2.Element
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = #L2_2
    L9_2 = L9_2 + 1
    L10_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2, L10_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.damage_type_panel
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_propose_element = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._exit = L1_1
return L0_1
