local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.LogicUtils.InventoryUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "DrinkMakerWorkBookRewardPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_DrinkMaker_WorkBook_RewardHint"
L2_1 = "UIText_DrinkMaker_WorkBook_RewardGet"
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._guest_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_item
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_status
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_get
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1.wait_unlock_anim = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._guest_data
  L2_2 = L1_2
  L1_2 = L1_2.TryGetFinishReward
  L1_2 = L1_2(L2_2)
  if L1_2 ~= nil then
    L2_2 = G
    L2_2 = L2_2.RewardUtils
    L2_2 = L2_2.show_reward_dialog
    L3_2 = L1_2
    L2_2(L3_2)
  end
  L3_2 = A0_2
  L2_2 = A0_2._setup_reward_status
  L2_2(L3_2)
end
L0_1.try_get_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.GuestRow
  L1_2 = L1_2.MaxFaithReward
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RewardExcelTable
  L2_2 = L2_2.GetData
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L3_2 = L2_2.ItemID_1
  A0_2._reward_item_id = L3_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ItemExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._reward_item_id
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_reward
  L7_2 = L3_2.ItemIconPath
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._setup_reward_item = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._guest_data
  L1_2 = L1_2.GuestRow
  L1_2 = L1_2.MaxFaith
  L2_2 = A0_2._guest_data
  L2_2 = L2_2.Faith
  L3_2 = L1_2 <= L2_2
  if L3_2 then
    L4_2 = L2_1
    if L4_2 then
      goto lbl_16
    end
  end
  L4_2 = L1_1
  ::lbl_16::
  L5_2 = A0_2._binder
  L5_2 = L5_2.txt_status
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_get
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
end
L0_1._setup_reward_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._reward_item_id
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.InventoryUtils
    L1_2 = L1_2.show_item_detail
    L2_2 = A0_2._reward_item_id
    L1_2(L2_2)
  end
end
L0_1._on_btn_root = L3_1
return L0_1
