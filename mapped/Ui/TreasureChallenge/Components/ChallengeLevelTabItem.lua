local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengeLevelTabItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.TreasureChallenge.Components.ChallengeTabStarPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChallengeLevelTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RaidModule
L2_1 = {}
L2_1[0] = "I"
L2_1[1] = "II"
L2_1[2] = "III"
L2_1[3] = "IV"
L2_1[4] = "V"
L2_1[5] = "VI"
L2_1[6] = "VII"
L2_1[7] = "VIII"
L2_1[8] = "IX"
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  A0_2._raid_ID = A3_2
  A0_2._world_Lv = A4_2
  A0_2._is_Locked = false
  A0_2._is_completed = false
  A0_2._index = A5_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
end
L0_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unlock_effect
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._world_Lv
  L3_2 = L2_1[L3_2]
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.star_list_view
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_star_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._on_added = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._update_states
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_completed
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_locked
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsTreasureChallengeLevelLocked
  L3_2 = A0_2._raid_ID
  L4_2 = A0_2._world_Lv
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._is_locked = L1_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.IsTreasureChallengeCompleted
  L3_2 = A0_2._raid_ID
  L4_2 = A0_2._world_Lv
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._is_completed = L1_2
end
L0_1._update_states = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_cbk_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_cbk_owner
      L3_2 = A0_2._world_Lv
      L4_2 = A0_2._is_locked
      L5_2 = A0_2._is_completed
      L6_2 = A0_2._index
      L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    end
  end
end
L0_1._on_select = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_select
  L1_2(L2_2)
end
L0_1.refresh_by_timeout = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A2_2
  A0_2._click_cbk_owner = A1_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetTreasureChallengeStatus
  L3_2 = A0_2._raid_ID
  L4_2 = A0_2._world_Lv
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if L1_2 == nil then
    return
  end
  L2_2 = L1_2.FinishedCount
  A0_2._target_finish_count = L2_2
  L2_2 = L1_2.TotalCount
  A0_2._target_ttl_count = L2_2
  L2_2 = A0_2._target_ttl_count
  if L2_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.star_list_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._target_ttl_count
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.star_list_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.CoroutineUtils
  L2_2 = L2_2.InvokeNextFrame
  function L3_2()
    local L0_3, L1_3
    L0_3 = A0_2._binder
    if L0_3 == nil then
      return
    end
    L0_3 = CS
    L0_3 = L0_3.UnityEngine
    L0_3 = L0_3.UI
    L0_3 = L0_3.LayoutRebuilder
    L0_3 = L0_3.ForceRebuildLayoutImmediate
    L1_3 = A0_2._binder
    L1_3 = L1_3.star_list_view
    L1_3 = L1_3.transform
    L0_3(L1_3)
  end
  L2_2(L3_2)
end
L0_1._setup_star_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.ChallengeTabStarPanel
    L8_2 = G
    L8_2 = L8_2.ChallengeTabStarPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_active
  L7_2 = A0_2._target_finish_count
  L7_2 = A2_2 < L7_2
  L5_2(L6_2, L7_2)
  return L3_2
end
L0_1._on_item_changed = L3_1
return L0_1
