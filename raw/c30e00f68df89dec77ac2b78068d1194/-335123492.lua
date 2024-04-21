local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Monster.MonsterTipPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterDamageTypePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Monster.MonsterDamageTypePanelBinder"
L0_1(L1_1)
L0_1 = {}
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterRank
L1_1 = L1_1.Elite
L0_1[L1_1] = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/IconInLevelTypeElite01.png"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterRank
L1_1 = L1_1.LittleBoss
L0_1[L1_1] = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/IconInLevelTypeElite02.png"
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.GameCore
L1_1 = L1_1.MonsterRank
L1_1 = L1_1.BigBoss
L0_1[L1_1] = "UI/Atlas/AtlasRoot/Battle_UI/MonsterElite/IconInLevelTypeElite03.png"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "MonsterTipPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._weak_types = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._list_view_weak_inited = false
  A0_2._in_aether_divide_mode = false
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2
  A0_2._in_aether_divide_mode = true
end
L1_1.set_use_aether_mode = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A0_2._list_view_weak_inited
  if not L3_2 then
    L3_2 = A0_2._in_aether_divide_mode
    if L3_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_11
      end
    end
    L3_2 = 0
    ::lbl_11::
    L4_2 = A0_2._binder
    L4_2 = L4_2.list_view_weak
    L5_2 = L4_2
    L4_2 = L4_2.init
    L6_2 = A0_2
    L7_2 = 0
    L8_2 = A0_2._on_weak_item_changed
    L9_2 = L3_2
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.MonsterExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MonsterTemplateExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.MonsterTemplateID
  L4_2 = L4_2(L5_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_base_view
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_level_view
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_rank_view
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_weak_view
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._setup_resist_view
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._in_aether_divide_mode
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_title
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = "UIText_AetherDivide_Spirit_Type"
    L3_2(L4_2, L5_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.MonsterName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.MonsterIntroduction
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_story
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A1_2.MonsterIntroduction
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_icon
  L6_2 = A2_2.ManikinImagePath
  L3_2(L4_2, L5_2, L6_2)
end
L1_1._setup_base_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_level_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.Rank
  L3_2 = L0_1[L2_2]
  L4_2 = G
  L4_2 = L4_2.StrExt
  L4_2 = L4_2.IsNullOrEmpty
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_mark_elite
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_mark_elite
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_mark_elite
    L7_2 = L3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L1_1._setup_rank_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._in_aether_divide_mode
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2._get_property_list
    L4_2 = A1_2.MonsterID
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._weak_types = L2_2
  else
    L3_2 = A0_2
    L2_2 = A0_2._get_weak_list
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    A0_2._weak_types = L2_2
  end
  L2_2 = A0_2._weak_types
  L2_2 = #L2_2
  L2_2 = 0 < L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_weak
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_empty_weak
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.list_view_weak
    L4_2 = L3_2
    L3_2 = L3_2.SetListItemCount
    L5_2 = A0_2._weak_types
    L5_2 = #L5_2
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
end
L1_1._setup_weak_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = A1_2.StanceWeakList
  L4_2 = 0
  L5_2 = L3_2.Length
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L2_2
    L10_2 = L3_2[L7_2]
    L8_2(L9_2, L10_2)
  end
  return L2_2
end
L1_1._get_weak_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AetherDivideMonsterExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = #L2_2
    L4_2 = L4_2 + 1
    L5_2 = L3_2.MonsterType
    L2_2[L4_2] = L5_2
  end
  return L2_2
end
L1_1._get_property_list = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.resist_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._setup_resist_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L5_2 = A0_2._in_aether_divide_mode
    if L5_2 then
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = "Ui.AetherDivide.Common.AetherCommonSpiritTypePanel"
      L8_2 = "Ui.AetherDivide.Common.AetherCommonSpiritTypePanelBinder"
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2 = L5_2
    else
      L6_2 = A0_2
      L5_2 = A0_2.create_panel
      L7_2 = G
      L7_2 = L7_2.MonsterDamageTypePanel
      L8_2 = G
      L8_2 = L8_2.MonsterDamageTypePanelBinder
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      L4_2 = L5_2
    end
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._weak_types
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_weak_item_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.resist_list_panel
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L1_1.get_first_selected_object = L2_1
return L1_1
