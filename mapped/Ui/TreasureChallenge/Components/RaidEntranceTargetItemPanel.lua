local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.RaidEntranceTargetItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RaidEntranceTargetItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "Pending"
L2_1 = "Succeed"
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_data
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_desc
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_display_reward
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_status
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  A0_2._data = A1_2
end
L0_1._setup_data = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.TextmapStatic
  L1_2 = L1_2.GetText
  L2_2 = A0_2._data
  L2_2 = L2_2.TextID
  L3_2 = A0_2._data
  L3_2 = L3_2.DescParam1
  L4_2 = A0_2._data
  L4_2 = L4_2.DescParam2
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = L1_2
  L3_2 = A0_2._data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TreasureChallengeTargetStatus
  L4_2 = L4_2.Finished
  if L3_2 == L4_2 then
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"#DCC291FF\">%s</color>"
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  else
    L3_2 = string
    L3_2 = L3_2.format
    L4_2 = "<color=\"#FFFFFFC8\">%s</color>"
    L5_2 = L1_2
    L3_2 = L3_2(L4_2, L5_2)
    L2_2 = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.desc
  L4_2 = L3_2
  L3_2 = L3_2.SetCustomizedText
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_desc = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ItemExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._data
  L2_2 = L2_2.RewardDisplayData
  L2_2 = L2_2.ConfigID
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.reward_icon
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2._load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.reward_icon_get
  L5_2 = L1_2.ItemIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._data
  L2_2 = L2_2.Status
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TreasureChallengeTargetStatus
  L3_2 = L3_2.Finished
  if L2_2 == L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.reward_root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.get_mark
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.get_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_num
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._data
  L4_2 = L4_2.RewardDisplayData
  L4_2 = L4_2.Count
  L2_2(L3_2, L4_2)
end
L0_1._setup_display_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TreasureChallengeTargetStatus
  L2_2 = L2_2.Doing
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_state
    L2_2 = L1_2
    L1_2 = L1_2.ResetTrigger
    L3_2 = L2_1
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator_state
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.Status
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.TreasureChallengeTargetStatus
    L2_2 = L2_2.Finished
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.animator_state
      L2_2 = L1_2
      L1_2 = L1_2.ResetTrigger
      L3_2 = L1_1
      L1_2(L2_2, L3_2)
      L1_2 = A0_2._binder
      L1_2 = L1_2.animator_state
      L2_2 = L1_2
      L1_2 = L1_2.SetTrigger
      L3_2 = L2_1
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._setup_status = L3_1
return L0_1
