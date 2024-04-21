local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Challenge.Monster.ChallengeMonsterRowPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeMonsterRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.MonsterID
  A0_2._monster_id = L2_2
  L2_2 = A1_2.Level
  A0_2._level = L2_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MonsterExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._monster_id
  L2_2 = L2_2(L3_2)
  A0_2._monster_row = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_weak_point
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_level
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.setup_boss
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lv
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._level
  L3_2 = L3_2 ~= nil
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._level
  if L1_2 ~= nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.text_level
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetText
    L3_2 = A0_2._level
    L1_2(L2_2, L3_2)
  end
end
L0_1.setup_level = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_boss
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_boss = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MonsterTemplateExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._monster_row
  L2_2 = L2_2.MonsterTemplateID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_monster
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._monster_row
  L4_2 = L4_2.MonsterName
  L2_2(L3_2, L4_2)
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._monster_row
  L1_2 = L1_2.StanceWeakList
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L2_2
    L9_2 = L1_2[L6_2]
    L7_2(L8_2, L9_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_list_weak_point
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_weak_point = L1_1
return L0_1
