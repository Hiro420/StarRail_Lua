local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainLeftListItem"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainLeftListItemBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainRightListPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.ActivityAetherDivide.ActivityAetherDivideMainRightListPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ActivityAetherDivideMainTypeGroupTabItem"
L2_1 = G
L2_1 = L2_1.TabItem
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._type_group_data = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_tab_btn_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_reddot
  L1_2(L2_2)
end
L0_1._on_added = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback
  L2_2 = A0_2._callback_self
  L3_2 = A0_2._type_group_data
  L1_2(L2_2, L3_2)
end
L0_1._on_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unselect = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._type_group_data
  L1_2 = L1_2.TypeGroupID
  L2_2 = A0_2._owner
  L2_2 = L2_2.basic_type_group_id
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_ActivityReward_ChampionRoad"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_title
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_AetherDivide_Overview_HyperlinkDuel"
    L1_2(L2_2, L3_2)
  end
end
L0_1._setup_tab_btn_info = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.RedDotModule
    L1_2 = L1_2.Instance
    L2_2 = L1_2
    L1_2 = L1_2.bind_reddot
    L3_2 = "AetherDivideActivityRewardTypeCanTakeGroup"
    L4_2 = A0_2._type_group_data
    L4_2 = L4_2.TypeGroupID
    L5_2 = A0_2
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_tab_reddot
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1._bind_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_finish
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_unload = L1_1
return L0_1
