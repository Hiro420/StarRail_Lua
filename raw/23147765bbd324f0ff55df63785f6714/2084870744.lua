local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.Collection.EvolveBuildCollectionGearItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "EvolveBuildCollectionGearItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_root
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.trigger_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._on_btn_root_callback = A1_2
  A0_2._on_btn_root_callback_self = A2_2
end
L0_1.register_on_btn_root_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2.collection_gear = A1_2
  L2_2 = A0_2.collection_gear
  L2_2 = L2_2.GearType
  A0_2.type = L2_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_state
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_root
  L1_2(L2_2)
end
L0_1.trigger_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = A0_2.collection_gear
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_unknown_icon
  L4_2 = A0_2.collection_gear
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_not_got_icon
  L4_2 = A0_2.collection_gear
  L4_2 = L4_2.IconPath
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_unknown
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.collection_gear
  L3_2 = L3_2.IsUnlocked
  L3_2 = not L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_icon
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.collection_gear
  L3_2 = L3_2.IsUnlocked
  if L3_2 then
    L3_2 = A0_2.collection_gear
    L3_2 = L3_2.IsCollected
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_not_got
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.collection_gear
  L3_2 = L3_2.IsUnlocked
  if L3_2 then
    L3_2 = A0_2.collection_gear
    L3_2 = L3_2.IsCollected
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_forge_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.collection_gear
  L3_2 = L3_2.GearType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_normal_bg
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2.collection_gear
  L3_2 = L3_2.GearType
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.EvolveGearType
  L4_2 = L4_2.Forge
  L3_2 = L3_2 ~= L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_state = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  return L1_2
end
L0_1.get_navigation_btn = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._on_btn_root_callback
  L3_2 = A0_2._on_btn_root_callback_self
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_root = L1_1
return L0_1
