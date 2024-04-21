local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Billboard.HeartDialBillboardPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.HeartDialModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "HeartDialBillboardPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIContextAssetLoader
  L1_2 = L1_2()
  A0_2._AssetLoader = L1_2
  A0_2._icon_path = ""
  A0_2._is_active = false
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.HeartDialBillboardPanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshBillboard
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialChangeEmoType
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.add_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialStepMove
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._AssetLoader
  if L1_2 ~= nil then
    L1_2 = A0_2._AssetLoader
    L2_2 = L1_2
    L1_2 = L1_2.ReleaseAll
    L1_2(L2_2)
    A0_2._AssetLoader = nil
  end
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIRefreshBillboard
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialChangeEmoType
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.remove_notify_handler
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyGroup
  L2_2 = L2_2.UI
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.HeartDialStepMove
  L4_2 = A0_2._refresh
  L5_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L1_1._on_dispose = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._npc_entity
  if L1_2 == nil then
    L1_2 = A0_2._binder
    L1_2 = L1_2.root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetLightWeightActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._npc_entity
  L1_2 = L1_2.RuntimeID
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetHeartDialStepByRuntimeID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  A0_2._step_type = L2_2
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetHeartDialEmoByRuntimeID
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.HeartDialBillboardExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A0_2._step_type
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.MapIconID
  if L4_2 == 0 then
    L5_2 = A0_2
    L4_2 = A0_2.set_light_weight_active
    L6_2 = false
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.MiniMapIconExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2.MapIconID
  L4_2 = L4_2(L5_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.BillboardIconConfigExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L4_2.BillboardIcon
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.BillboardIconPath
  A0_2._icon_path = L6_2
  L6_2 = L0_1
  L7_2 = L6_2
  L6_2 = L6_2.IsChangeEmotionUnlock
  L8_2 = A0_2._npc_entity
  L6_2 = L6_2(L7_2, L8_2)
  A0_2._is_heartdial_open = L6_2
  L7_2 = A0_2
  L6_2 = A0_2.set_light_weight_active
  L8_2 = A0_2._is_heartdial_open
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.root
  if L6_2 ~= nil then
    L6_2 = A0_2._binder
    L6_2 = L6_2.img_icon
    if L6_2 ~= nil then
      goto lbl_69
    end
  end
  do return end
  ::lbl_69::
  L6_2 = A0_2._icon_path
  if L6_2 ~= nil then
    L6_2 = A0_2._AssetLoader
    L7_2 = L6_2
    L6_2 = L6_2.AsyncLoadSpriteTo
    L8_2 = A0_2._binder
    L8_2 = L8_2.img_icon
    L9_2 = A0_2._icon_path
    L6_2(L7_2, L8_2, L9_2)
  end
end
L1_1._refresh = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._npc_entity = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L1_1.SetupHeartDial = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._is_active = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetLightWeightActive
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.set_light_weight_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
  end
end
L1_1.Close = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.root
    L3_2 = L2_2
    L2_2 = L2_2.SetSiblingIndex
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.adjust_hierarchy = L2_1
return L1_1
