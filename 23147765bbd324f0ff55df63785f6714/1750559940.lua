local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGridContentItem3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGridContentMonster3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UI3DSystem.TreasureDungeon.TreasureDungeonGridContentMonsterTrotter3DPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.TreasureDungeon.TreasureDungeonUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TreasureDungeonGridContent3DPanel"
L2_1 = G
L2_1 = L2_1.BaseUI3DPanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2)
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.PrefabLoadMeta
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._prefab_loader = L1_2
  L1_2 = {}
  A0_2._type_panels = L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._type_panels
  L3_2 = A0_2._type_id
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.set_mask
    if L3_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.set_mask
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.set_mask = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._grid_data = A1_2
  A0_2._level_data = A2_2
  L3_2 = A0_2._grid_data
  L3_2 = L3_2.GridIndex
  A0_2._index = L3_2
  L3_2 = G
  L3_2 = L3_2.TreasureDungeonUtils
  L3_2 = L3_2.get_content_type_id
  L4_2 = A0_2._grid_data
  L3_2 = L3_2(L4_2)
  A0_2._type_id = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_type_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._refresh_content_view
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._prefab_loader
    L3_2 = L3_2.MultiPrefabList
    L4_2 = A0_2._type_id
    L3_2 = L3_2[L4_2]
    L4_2 = A0_2._prefab_loader
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2._type_id
    L1_2.name = L2_2
    L2_2 = nil
    L3_2 = G
    L3_2 = L3_2.TreasureDungeonUtils
    L3_2 = L3_2.is_content_type_item
    L4_2 = A0_2._type_id
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = A0_2
      L3_2 = A0_2.create_panel
      L5_2 = G
      L5_2 = L5_2.TreasureDungeonGridContentItem3DPanel
      L6_2 = tostring
      L7_2 = A0_2._type_id
      L6_2, L7_2, L8_2 = L6_2(L7_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
      L2_2 = L3_2
    else
      L3_2 = G
      L3_2 = L3_2.TreasureDungeonUtils
      L3_2 = L3_2.is_content_type_trotter
      L4_2 = A0_2._type_id
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = A0_2
        L3_2 = A0_2.create_panel
        L5_2 = G
        L5_2 = L5_2.TreasureDungeonGridContentMonsterTrotter3DPanel
        L6_2 = tostring
        L7_2 = A0_2._type_id
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L2_2 = L3_2
      else
        L4_2 = A0_2
        L3_2 = A0_2.create_panel
        L5_2 = G
        L5_2 = L5_2.TreasureDungeonGridContentMonster3DPanel
        L6_2 = tostring
        L7_2 = A0_2._type_id
        L6_2, L7_2, L8_2 = L6_2(L7_2)
        L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
        L2_2 = L3_2
      end
    end
    L3_2 = A0_2._type_panels
    L4_2 = A0_2._type_id
    L3_2[L4_2] = L2_2
  end
  L1_2 = pairs
  L2_2 = A0_2._type_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_active
    L8_2 = A0_2._type_id
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
end
L0_1._refresh_type_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.setup_view
    L4_2 = A0_2._grid_data
    L5_2 = A0_2._level_data
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._refresh_content_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.play_fade_in
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.play_fade_in
      L2_2(L3_2)
    end
  end
end
L0_1.play_fade_in = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._type_panels
  L3_2 = A0_2._type_id
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.play_fade_out
    if L3_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.play_fade_out
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.play_fade_out = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._type_panels
  L3_2 = A0_2._type_id
  L2_2 = L2_2[L3_2]
  if L2_2 ~= nil then
    L3_2 = L2_2.play_switch_out
    if L3_2 ~= nil then
      L4_2 = L2_2
      L3_2 = L2_2.play_switch_out
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L0_1.play_switch_out = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.play_door_opened
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.play_door_opened
      L2_2(L3_2)
    end
  end
end
L0_1.play_door_opened = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.play_enhance
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.play_enhance
      L2_2(L3_2)
    end
  end
end
L0_1.play_enhance = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.play_weaken
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.play_weaken
      L2_2(L3_2)
    end
  end
end
L0_1.play_weaken = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.play_summon
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.play_summon
      L2_2(L3_2)
    end
  end
end
L0_1.play_summon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_panels
  L2_2 = A0_2._type_id
  L1_2 = L1_2[L2_2]
  if L1_2 ~= nil then
    L2_2 = L1_2.play_bomb
    if L2_2 ~= nil then
      L3_2 = L1_2
      L2_2 = L1_2.play_bomb
      L2_2(L3_2)
    end
  end
end
L0_1.play_bomb = L1_1
return L0_1
