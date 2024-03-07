local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = 2730
L1_1 = 2740
L2_1 = 2750
L3_1 = CS
L3_1 = L3_1.RPG
L3_1 = L3_1.Client
L3_1 = L3_1.ActivityAlley
L3_1 = L3_1.AlleyPackController
L3_1 = L3_1.AlleyJoyStickState
L4_1 = {}
L5_1 = L3_1.UINavigation
L4_1[L5_1] = 137
L5_1 = L3_1.GoodOperation
L4_1[L5_1] = 138
L5_1 = L3_1.CursorSelection
L4_1[L5_1] = 139
L5_1 = G
L5_1 = L5_1.StaticClass
L6_1 = "AlleyPackUtils"
L5_1 = L5_1(L6_1)
function L6_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyShipType
  L1_2 = L1_2.Small
  if A0_2 == L1_2 then
    L1_2 = L0_1
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyShipType
  L1_2 = L1_2.Medium
  if A0_2 == L1_2 then
    L1_2 = L1_1
    return L1_2
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyShipType
  L1_2 = L1_2.Large
  if A0_2 == L1_2 then
    L1_2 = L2_1
    return L1_2
  end
end
L5_1.get_ship_video_id = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 ~= nil then
    L1_2 = #A0_2
    if not (L1_2 <= 1) then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = L5_1._compare_good_item
    L3_3 = A0_3
    L4_3 = A1_3
    return L2_3(L3_3, L4_3)
  end
  L1_2(L2_2, L3_2)
end
L5_1.sort_alley_goods = L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.GoodsType
  L2_2 = #L2_2
  L3_2 = A1_2.GoodsType
  L3_2 = #L3_2
  if L2_2 ~= L3_2 then
    L4_2 = L2_2 > L3_2
    return L4_2
  end
  L4_2 = L5_1._get_anchor_sort_value
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L5_1._get_anchor_sort_value
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  if L4_2 ~= L5_2 then
    L6_2 = L4_2 > L5_2
    return L6_2
  end
  L6_2 = A0_2.GoodsID
  L7_2 = A1_2.GoodsID
  L6_2 = L6_2 > L7_2
  return L6_2
end
L5_1._compare_good_item = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2.PackGoodItemConfig
  if L1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = L1_2.BottomAnchors
  if L2_2 == nil then
    L3_2 = 0
    return L3_2
  end
  L3_2 = L2_2.AnchorNumX
  L4_2 = L2_2.AnchorNumY
  if L3_2 > L4_2 then
    L3_2 = L2_2.AnchorNumX
    L3_2 = L3_2 * 10
    L4_2 = L2_2.AnchorNumY
    L3_2 = L3_2 + L4_2
    return L3_2
  end
  L3_2 = L2_2.AnchorNumX
  L4_2 = L2_2.AnchorNumY
  L4_2 = L4_2 * 10
  L3_2 = L3_2 + L4_2
  return L3_2
end
L5_1._get_anchor_sort_value = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 == nil then
    L1_2 = G
    L1_2 = L1_2.SuperDebug
    L1_2 = L1_2.LogErrorFormat
    L2_2 = "\230\178\161\230\156\137\232\174\162\229\141\149\229\143\175\231\148\168!!!"
    L1_2(L2_2)
    L1_2 = {}
    return L1_2
  end
  L1_2 = {}
  L2_2 = A0_2.OrderGoods
  L3_2 = 0
  L4_2 = L2_2.Length
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L2_2[L6_2]
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.AlleyGoodData
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  return L1_2
end
L5_1.get_good_data_from_order = L6_1
function L6_1(A0_2)
  local L1_2
  L1_2 = L4_1[A0_2]
  if not L1_2 then
    L1_2 = L3_1.UINavigation
    L1_2 = L4_1[L1_2]
  end
  return L1_2
end
L5_1.get_action_op_set_id_by_state = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetAdventureAudioManager
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.GlobalVars
    L2_2 = L2_2.s_AudioManager
    L2_2 = L2_2.AudioConfig
    L2_2 = L2_2.MenuBGMStates
    L3_2 = L2_2
    L2_2 = L2_2.get_Item
    L4_2 = "StateAlleyPack"
    L2_2 = L2_2(L3_2, L4_2)
    L4_2 = L1_2
    L3_2 = L1_2.SwitchUIMenuBGM
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L5_1.start_alley_pack_bgm = L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.GlobalVars
  L0_2 = L0_2.s_GamePhaseManager
  L1_2 = L0_2
  L0_2 = L0_2.GetCurrentPhase
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2 or L1_2
  if L0_2 then
    L2_2 = L0_2
    L1_2 = L0_2.GetAdventureAudioManager
    L1_2 = L1_2(L2_2)
  end
  if L1_2 ~= nil then
    L3_2 = L1_2
    L2_2 = L1_2.StopUIMenuBGM
    L2_2(L3_2)
  end
end
L5_1.stop_alley_pack_bgm = L6_1
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = false
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.AlleyPackVerticalPerspectShipIDs
  if L2_2 ~= nil then
    L4_2 = L2_2
    L3_2 = L2_2.Contains
    L5_2 = A0_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L1_2 = true
    end
  end
  L3_2 = 1
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.AlleyPackFovRatio
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.ContainsKey
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L3_2 = L4_2[A0_2]
    end
  end
  L5_2 = L1_2
  L6_2 = L3_2
  return L5_2, L6_2
end
L5_1.get_last_perspect_fov = L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.Prefs
  L3_2 = L3_2.User
  L3_2 = L3_2.AlleyPackVerticalPerspectShipIDs
  if L3_2 ~= nil then
    if A1_2 then
      L5_2 = L3_2
      L4_2 = L3_2.Contains
      L6_2 = A0_2
      L4_2 = L4_2(L5_2, L6_2)
      if not L4_2 then
        L5_2 = L3_2
        L4_2 = L3_2.Add
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
      end
    else
      L5_2 = L3_2
      L4_2 = L3_2.Contains
      L6_2 = A0_2
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L5_2 = L3_2
        L4_2 = L3_2.Remove
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
      end
    end
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.Prefs
  L4_2 = L4_2.User
  L4_2 = L4_2.AlleyPackFovRatio
  if L4_2 ~= nil then
    L6_2 = L4_2
    L5_2 = L4_2.ContainsKey
    L7_2 = A0_2
    L5_2 = L5_2(L6_2, L7_2)
    if L5_2 then
      L4_2[A0_2] = A2_2
    else
      L6_2 = L4_2
      L5_2 = L4_2.Add
      L7_2 = A0_2
      L8_2 = A2_2
      L5_2(L6_2, L7_2, L8_2)
    end
  end
end
L5_1.save_last_perspect_fov = L6_1
L6_1 = "#CAAB7C"
L7_1 = "#72d287"
function L8_1(A0_2)
  local L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AlleyPackGoodsTypeEnum
  L1_2 = L1_2.Small
  if A0_2 == L1_2 then
    L1_2 = L7_1
    return L1_2
  end
  L1_2 = L6_1
  return L1_2
end
L5_1.get_good_type_color = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.AlleyModule
  L2_2 = L1_2
  L1_2 = L1_2.GetAlleyPackGoodItemConfig
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.GoodsType
    return L2_2
  end
end
L5_1.get_good_type = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = CS
  L0_2 = L0_2.RPG
  L0_2 = L0_2.Client
  L0_2 = L0_2.AlleyPackStatistics
  L0_2 = L0_2()
  L5_1._pack_statistics = L0_2
  L0_2 = L5_1._pack_statistics
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowMsTimeStamp
  L0_2.BeginTimeStamp = L1_2
end
L5_1.create_pack_statistics = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = null
  L5_1._pack_statistics = L0_2
end
L5_1.clear_pack_statistics = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = L5_1._pack_statistics
  if L0_2 == nil then
    L0_2 = G
    L0_2 = L0_2.SuperDebug
    L0_2 = L0_2.LogErrorFormat
    L1_2 = "M._pack_statistics is null"
    L0_2(L1_2)
  end
  L0_2 = L5_1._pack_statistics
  return L0_2
end
L5_1.get_pack_statistics = L8_1
function L8_1()
  local L0_2, L1_2
  L0_2 = L5_1._pack_statistics
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.TimeManager
  L1_2 = L1_2.Instance
  L1_2 = L1_2.NowMsTimeStamp
  L0_2.EndTimeStamp = L1_2
end
L5_1.record_end_time = L8_1
return L5_1
