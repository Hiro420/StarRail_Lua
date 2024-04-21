local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.ActivityClockPark.Entrance.ActivityClockParkTalentBtnPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.ActivityClockParkModule
L1_1 = "UIText_ClockPark_Talent_Unlock_Cost"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "ActivityClockParkTalentBtnPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  A0_2._talent_id = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.ClockParkTalentExcelTable
  L4_2 = L4_2.GetData
  L5_2 = A0_2._talent_id
  L4_2 = L4_2(L5_2)
  A0_2._row = L4_2
  A0_2._callback = A2_2
  A0_2._callback_self = A3_2
end
L2_1.init_data = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._talent_id
  L2_2 = L2_2 == A1_2
  A0_2._selected = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L0_1
  L2_2 = L1_2
  L1_2 = L1_2.IsClockParkTalentUnlock
  L3_2 = A0_2._talent_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_active
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_icon
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_select
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._selected
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = A0_2._row
  L5_2 = L5_2.ImgPath
  L2_2(L3_2, L4_2, L5_2)
  if not L1_2 then
    L2_2 = A0_2._row
    L2_2 = L2_2.TalentUnlockCost
    L2_2 = L2_2.ItemID
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_talent_coin
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = L1_1
    L6_2 = A0_2._row
    L6_2 = L6_2.TalentUnlockCost
    L6_2 = L6_2.Count
    L3_2(L4_2, L5_2, L6_2)
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.ItemExcelTable
    L3_2 = L3_2.GetData
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 ~= nil then
      L5_2 = A0_2
      L4_2 = A0_2._async_load_sprite_to
      L6_2 = A0_2._binder
      L6_2 = L6_2.img_talent_coin
      L7_2 = L3_2.ItemIconPath
      L4_2(L5_2, L6_2, L7_2)
    end
  end
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._callback
  L2_2 = A0_2._callback_self
  L3_2 = A0_2._talent_id
  L1_2(L2_2, L3_2)
end
L2_1._on_btn_root = L3_1
return L2_1
