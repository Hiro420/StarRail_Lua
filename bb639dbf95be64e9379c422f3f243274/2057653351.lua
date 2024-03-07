local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAreaTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._rogue_area_data = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_area_data
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RogueUtils
    L1_2 = L1_2._get_resident_rogue_doing_area_data
    L1_2 = L1_2()
    L2_2 = L1_2 == nil
    return L2_2
  end
  L1_2 = true
  return L1_2
end
L0_1._is_enable = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = "UIText_Rogue_EnterPage_Tip_2"
  L1_2(L2_2, L3_2)
end
L0_1._on_select_when_disable = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._click_call_back
  if L1_2 then
    L1_2 = A0_2._click_call_back_self
    if L1_2 then
      L1_2 = A0_2._click_call_back
      L2_2 = A0_2._click_call_back_self
      L3_2 = A0_2._rogue_area_data
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_call_back = A2_2
  A0_2._click_call_back_self = A1_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_locked
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_unlock
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "FarmLevelTabUnlock"
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = 1
  L2_2 = A0_2._rogue_area_data
  L2_2 = L2_2.RogueAreaRow
  if L2_2 ~= nil then
    L2_2 = A0_2._rogue_area_data
    L2_2 = L2_2.RogueAreaRow
    L1_2 = L2_2.Difficulty
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = G
  L4_2 = L4_2.UITextUtils
  L4_2 = L4_2.GetRomanNumberTextID
  L5_2 = L1_2
  L4_2, L5_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_area_data
  L1_2 = L1_2.RogueAreaStatus
  L2_2 = CS
  L2_2 = L2_2.AOLNJCNICEG
  L2_2 = L2_2.PALNCCGNNAH
  L1_2 = L1_2 == L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_complete
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_locked_hint
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._refresh_status = L1_1
return L0_1
