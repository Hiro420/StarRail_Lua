local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeMapNamePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_name
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.PlayerMapTelepotNoSwitchIn
  L4_2 = L0_1._setup_name
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.NotifyManager
  L2_2 = L2_2.notify
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIOnMainPageShow
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_owner_active_change = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AdventureStatic
  L2_2 = L1_2
  L1_2 = L1_2.GetCurrentMapName
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AdventureStatic
  L3_2 = L2_2
  L2_2 = L2_2.GetCurrentGameModeType
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GameCoreConfigManager
  L3_2 = L3_2.MazeConfig
  L3_2 = L3_2.ShowAreaBlackList
  L4_2 = false
  if L3_2 ~= nil then
    L5_2 = 0
    L6_2 = L3_2.Length
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L3_2[L8_2]
      if L2_2 == L9_2 then
        L4_2 = true
        break
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.safe_set_active
  L7_2 = L1_2 ~= nil and L7_2
  L5_2(L6_2, L7_2)
  if L1_2 ~= nil then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_map_name
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = L1_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_name = L1_1
return L0_1
