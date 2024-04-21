local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.StaticClass
L1_1 = "SpaceZooUtils"
L0_1 = L0_1(L1_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.SpaceZooModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MappingInfoExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.MapEntryExcelTable
  L2_2 = L2_2.dataDict
  L3_2 = 0
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  for L7_2, L8_2 in L4_2, L5_2, L6_2 do
    L9_2 = CS
    L9_2 = L9_2.RPG
    L9_2 = L9_2.Client
    L9_2 = L9_2.BigMapUtils
    L9_2 = L9_2.IsShowAreaMap
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = L1_2.FloorID
      L10_2 = L8_2.FloorID
      if L9_2 == L10_2 then
        L3_2 = L8_2.ID
        break
      end
    end
  end
  if L3_2 == 0 then
    return
  end
  L4_2 = G
  L4_2 = L4_2.GotoManager
  L4_2 = L4_2.GotoByType
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.GotoType
  L5_2 = L5_2.AreaSwitch
  L5_2 = #L5_2
  L6_2 = {}
  L7_2 = L3_2
  L8_2 = A0_2
  L6_2[1] = L7_2
  L6_2[2] = L8_2
  L4_2(L5_2, L6_2)
end
L0_1.goto_area_switch = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooFeatureConfigExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.SpaceZooCatData
  L3_2 = L3_2.GetDefaultFeatureID
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  while true do
    L5_2 = L2_2
    L4_2 = L2_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L2_2.Current
    L5_2 = L4_2.FeatureID
    L5_2 = L5_2 - L3_2
    L6_2 = L4_2.Channel
    if L6_2 == A0_2 and L5_2 ~= 0 then
      L6_2 = table
      L6_2 = L6_2.insert
      L7_2 = L1_2
      L8_2 = L4_2.FeatureID
      L6_2(L7_2, L8_2)
    end
  end
  return L1_2
end
L0_1.get_node_features = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = 1000
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.SpaceZooChannelConfigExcelTable
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.SpaceZooNewFeatures
  L4_2 = L2_2
  L3_2 = L2_2.GetEnumerator
  L3_2 = L3_2(L4_2)
  while L3_2 do
    L5_2 = L3_2
    L4_2 = L3_2.MoveNext
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      break
    end
    L4_2 = L3_2.Current
    L5_2 = L1_1.SpaceZooData
    L6_2 = L5_2
    L5_2 = L5_2.GetFeatureData
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L5_2 = L5_2.SpaceZooFeatureConfigRow
    L5_2 = L5_2.Channel
    L6_2 = L1_2.GetData
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L6_2 = L6_2.HandbookTag
    L7_2 = math
    L7_2 = L7_2.min
    L8_2 = L0_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L0_2 = L7_2
  end
  L4_2 = L0_2 or L4_2
  if L0_2 == 1000 or not L0_2 then
    L4_2 = nil
  end
  return L4_2
end
L0_1.get_new_feature_handbook_tag = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = false
  L2_2 = nil
  L3_2 = nil
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.SpaceZooSpecialCatExcelTable
  L4_2 = L4_2.GetEnumerator
  L4_2 = L4_2()
  while true do
    L6_2 = L4_2
    L5_2 = L4_2.MoveNext
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      break
    end
    L5_2 = L4_2.Current
    L6_2 = L5_2.SpecialCatID
    if L6_2 == A0_2 then
      L1_2 = true
    else
      L6_2 = L1_1.SpaceZooData
      L7_2 = L6_2
      L6_2 = L6_2.GetSpecialEventData
      L8_2 = L5_2.SpecialCatID
      L6_2 = L6_2(L7_2, L8_2)
      L6_2 = L6_2.State
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.SpaceZooSpicalEventState
      L7_2 = L7_2.Unlock
      if L6_2 == L7_2 then
        if not L1_2 and L2_2 == nil then
          L2_2 = L5_2.SpecialCatID
        elseif L1_2 and L3_2 == nil then
          L3_2 = L5_2.SpecialCatID
        end
      end
    end
  end
  L5_2 = L3_2 or L5_2
  if L3_2 == nil or not L3_2 then
    L5_2 = L2_2
  end
  return L5_2
end
L0_1.get_first_unlock_ssr_cat = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = nil
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.SpaceZooSpecialCatExcelTable
  L2_2 = L2_2.GetEnumerator
  L2_2 = L2_2()
  while true do
    L4_2 = L2_2
    L3_2 = L2_2.MoveNext
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      break
    end
    L3_2 = L2_2.Current
    L4_2 = L1_1.SpaceZooData
    L5_2 = L4_2
    L4_2 = L4_2.GetSpecialEventData
    L6_2 = L3_2.SpecialCatID
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = L4_2.State
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.GameCore
    L5_2 = L5_2.SpaceZooSpicalEventState
    L5_2 = L5_2.Lock
    if L4_2 ~= L5_2 then
      if L1_2 == A0_2 then
        L5_2 = L3_2.SpecialCatID
        return L5_2
      end
      L1_2 = L3_2.SpecialCatID
    end
  end
  L3_2 = L0_1.get_first_ssr_cat_id
  return L3_2()
end
L0_1.get_next_ssr_cat = L2_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.GameCore
  L0_2 = L0_2.SpaceZooSpecialCatExcelTable
  L0_2 = L0_2.GetEnumerator
  L0_2 = L0_2()
  while true do
    L2_2 = L0_2
    L1_2 = L0_2.MoveNext
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      break
    end
    L1_2 = L0_2.Current
    L2_2 = L1_1.SpaceZooData
    L3_2 = L2_2
    L2_2 = L2_2.GetSpecialEventData
    L4_2 = L1_2.SpecialCatID
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2.State
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.SpaceZooSpicalEventState
    L3_2 = L3_2.Lock
    if L2_2 ~= L3_2 then
      L3_2 = L1_2.SpecialCatID
      return L3_2
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_ssr_cat_id = L2_1
return L0_1
