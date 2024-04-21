local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.Challenge.FantasticStoryChallengeLevelTabItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "FantasticStoryChallengeLevelTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1[1] = "1"
L1_1[2] = "2"
L1_1[3] = "3"
L1_1[4] = "4"
L1_1[5] = "5"
L1_1[6] = "6"
L1_1[7] = "7"
L1_1[8] = "8"
L1_1[9] = "9"
function L2_1(A0_2, A1_2)
  A0_2._paragraph_data = A1_2
end
L0_1.setup_paragraph_data = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
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
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.ParagraphID
  L3_2 = L1_1[L3_2]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2.refresh
  L1_2(L2_2)
end
L0_1._on_added = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.complete
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.IsFinish
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._paragraph_data
  L3_2 = L3_2.IsUnlock
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
end
L0_1.refresh = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.tab_btn
  L1_2 = L1_2.gameObject
  return L1_2
end
L0_1.get_navigation_btn_gameobject = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_cbk
  if L1_2 then
    L1_2 = A0_2._click_cbk_owner
    if L1_2 then
      L1_2 = A0_2._click_cbk
      L2_2 = A0_2._click_cbk_owner
      L3_2 = A0_2._paragraph_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_select = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_cbk = A1_2
  A0_2._click_cbk_owner = A2_2
end
L0_1.register_click_callback = L2_1
return L0_1
