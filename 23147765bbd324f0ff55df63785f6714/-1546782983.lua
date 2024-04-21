local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Rogue.Handbook.Components.RogueHandbookAeonRewardPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueHandbookAeonRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueHandbookModule
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.GameCore
L2_1 = L2_1.RogueAeonLevelConfigExcelTable
L3_1 = {}
L3_1[0] = "0"
L3_1[1] = "I"
L3_1[2] = "II"
L3_1[3] = "III"
L3_1[4] = "IV"
L3_1[5] = "V"
L3_1[6] = "VI"
L3_1[7] = "VII"
L3_1[8] = "VIII"
L3_1[9] = "IX"
L3_1[10] = "X"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.get_reward_btn
  L4_2 = A0_2._on_get_reward_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2
  A0_2._data = A1_2
  A0_2._lv = A2_2
  A0_2._index = A3_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.lv_tx
  L6_2 = L5_2
  L5_2 = L5_2.SetCustomizedText
  L7_2 = A0_2._lv
  L7_2 = L3_1[L7_2]
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.rewards
  L5_2 = L5_2[1]
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.rewards
  L5_2 = L5_2[2]
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._data
  L5_2 = L5_2.AeonRewardsTakenStatus
  L6_2 = A0_2._lv
  L5_2 = L5_2[L6_2]
  if L5_2 == true then
    L5_2 = A0_2._binder
    L5_2 = L5_2.reward_taken_root
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = true
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.reward_not_get_root
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.get_reward_btn
    L5_2 = L5_2.transform
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetActive
    L7_2 = false
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._lv
    L6_2 = A0_2._data
    L6_2 = L6_2.AeonResonanceLv
    if L5_2 <= L6_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.reward_taken_root
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.reward_not_get_root
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.get_reward_btn
      L5_2 = L5_2.transform
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
    else
      L5_2 = A0_2._binder
      L5_2 = L5_2.reward_taken_root
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.reward_not_get_root
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = true
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.get_reward_btn
      L5_2 = L5_2.transform
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetActive
      L7_2 = false
      L5_2(L6_2, L7_2)
    end
  end
  L5_2 = L2_1.GetData
  L6_2 = A0_2._data
  L6_2 = L6_2.Row
  L6_2 = L6_2.AeonID
  L7_2 = A0_2._lv
  L5_2 = L5_2(L6_2, L7_2)
  A0_2._lv_row = L5_2
  L6_2 = A0_2
  L5_2 = A0_2._setup_rewards
  L7_2 = A4_2
  L5_2(L6_2, L7_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateRewardItemTableSorted
  L3_2 = A0_2._lv_row
  L3_2 = L3_2.Reward
  L2_2 = L2_2(L3_2)
  A0_2._reward_list = L2_2
  L2_2 = {}
  A0_2._common_reward_list = L2_2
  L2_2 = 1
  L3_2 = ipairs
  L4_2 = A0_2._reward_list
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = L7_2.ItemID
    L9_2 = A0_2._lv_row
    L9_2 = L9_2.KeyPointRewardItemID
    if L8_2 ~= L9_2 and (L2_2 == 1 or L2_2 == 2) then
      L8_2 = table
      L8_2 = L8_2.insert
      L9_2 = A0_2._common_reward_list
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      L9_2 = A0_2
      L8_2 = A0_2.create_panel
      L10_2 = G
      L10_2 = L10_2.RewardItemIconLite
      L11_2 = G
      L11_2 = L11_2.RewardItemIconLiteBinder
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = A0_2._binder
      L9_2 = L9_2.rewards
      L9_2 = L9_2[L2_2]
      L10_2 = L9_2
      L9_2 = L9_2.SafeSetActive
      L11_2 = true
      L9_2(L10_2, L11_2)
      L10_2 = L8_2
      L9_2 = L8_2.bind
      L11_2 = A0_2._binder
      L11_2 = L11_2.rewards
      L11_2 = L11_2[L2_2]
      L9_2(L10_2, L11_2)
      L2_2 = L2_2 + 1
      L10_2 = L8_2
      L9_2 = L8_2.setup_view
      L11_2 = L7_2.ItemID
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = A0_2._lv_row
  L3_2 = L3_2.KeyPointRewardItemID
  if L3_2 ~= 0 then
    A0_2._special_reward = 1
    L3_2 = A0_2._binder
    L3_2 = L3_2.special_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.special_root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L4_2 = A0_2
    L3_2 = A0_2.create_panel
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLite
    L6_2 = G
    L6_2 = L6_2.RewardItemIconLiteBinder
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    A0_2._special_panel = L3_2
    L3_2 = A0_2._special_panel
    L4_2 = L3_2
    L3_2 = L3_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.special_reward
    L3_2(L4_2, L5_2)
    L3_2 = A0_2._special_panel
    L4_2 = L3_2
    L3_2 = L3_2.setup_view
    L5_2 = A0_2._lv_row
    L5_2 = L5_2.KeyPointRewardItemID
    L3_2(L4_2, L5_2)
    A0_2._has_special = true
    if not A1_2 or A1_2 == true then
    end
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.special_bg
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
end
L0_1._setup_rewards = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_NetworkManager
  L2_2 = L1_2
  L1_2 = L1_2.HCIHLAOEHHE
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AeonID
  L4_2 = A0_2._lv
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_get_reward_btn_clicked = L4_1
function L4_1(A0_2, A1_2, A2_2)
  A0_2._cbk_owner = A1_2
  A0_2._special_cbk = A2_2
end
L0_1.register_reward_cbk = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._has_special
  return L1_2
end
L0_1.is_special_reward_panel = L4_1
function L4_1(A0_2)
  local L1_2
  L1_2 = A0_2._lv
  return L1_2
end
L0_1.get_lv = L4_1
return L0_1
