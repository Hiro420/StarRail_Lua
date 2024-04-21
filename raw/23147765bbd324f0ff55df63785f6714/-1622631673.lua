local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionMonsterItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionMonsterItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  A0_2._collection_row = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._get_unlock_status
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_normal
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_unknown
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonsterExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._collection_row
  L4_2 = L4_2.ID
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterTemplateExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.MonsterTemplateID
  L4_2 = L4_2(L5_2)
  if L2_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.txt_monster_name
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L3_2.MonsterName
    L5_2(L6_2, L7_2)
    L6_2 = A0_2
    L5_2 = A0_2._async_load_sprite_to
    L7_2 = A0_2._binder
    L7_2 = L7_2.img_monster
    L8_2 = L4_2.ManikinImagePath
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.QuestDataExcelTable
    L5_2 = L5_2.GetData
    L6_2 = A0_2._collection_row
    L6_2 = L6_2.UnlockQuest
    L5_2 = L5_2(L6_2)
    if L5_2 ~= nil then
      L6_2 = A0_2._binder
      L6_2 = L6_2.txt_unlock_desc
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = L5_2.QuestTitle
      L6_2(L7_2, L8_2)
    else
      L6_2 = G
      L6_2 = L6_2.SuperDebug
      L6_2 = L6_2.LogFormat
      L7_2 = "[hwx] Quest\228\184\141\229\173\152\229\156\168\239\188\140QuestID:"
      L8_2 = tostring
      L9_2 = A0_2._collection_row
      L9_2 = L9_2.UnlockQuest
      L8_2 = L8_2(L9_2)
      L7_2 = L7_2 .. L8_2
      L6_2(L7_2)
    end
    L7_2 = A0_2
    L6_2 = A0_2._async_load_sprite_to
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_unknown_monster
    L9_2 = L4_2.ManikinImagePath
    L6_2(L7_2, L8_2, L9_2)
  end
  A0_2.is_unlock = L2_2
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._collection_row
  L1_2 = L1_2.UnlockQuest
  if L1_2 == 0 then
    L1_2 = true
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._collection_row
  L3_2 = L3_2.UnlockQuest
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  return L2_2
end
L0_1._get_unlock_status = L1_1
return L0_1
