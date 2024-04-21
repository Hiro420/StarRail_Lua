local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Billboard.TextNPCNamePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Billboard.HeartDialBillboardPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "TextNPCNamePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2
  A0_2._Name = ""
  A0_2._is_active = false
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.TextNPCNamePanelBinder
  L1_2 = L1_2(L2_2)
  A0_2._binder = L1_2
  A0_2._heart_dial_panel = nil
  A0_2._heart_dial_entity = nil
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._heart_dial_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._heart_dial_panel
    L2_2 = L1_2
    L1_2 = L1_2.dispose
    L1_2(L2_2)
    A0_2._heart_dial_panel = nil
    A0_2._heart_dial_entity = nil
  end
end
L0_1._on_dispose = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetLightWeightActive
  L3_2 = A0_2._is_active
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._Refresh
  L1_2(L2_2)
end
L0_1._setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.TextName
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._Name
  if L1_2 ~= nil then
    L1_2 = A0_2._Name
    if L1_2 ~= "" then
      goto lbl_18
    end
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.TextName
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = ""
  L1_2(L2_2, L3_2)
  goto lbl_23
  ::lbl_18::
  L1_2 = A0_2._binder
  L1_2 = L1_2.TextName
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._Name
  L1_2(L2_2, L3_2)
  ::lbl_23::
  L2_2 = A0_2
  L1_2 = A0_2._refresh_heart_dial
  L1_2(L2_2)
end
L0_1._Refresh = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._heart_dial_entity
  if L1_2 == nil then
    L1_2 = A0_2._heart_dial_panel
    if L1_2 ~= nil then
      L1_2 = A0_2._heart_dial_panel
      L2_2 = L1_2
      L1_2 = L1_2.SetupHeartDial
      L3_2 = nil
      L1_2(L2_2, L3_2)
    end
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._heart_dial_panel
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.instantiate_object
    L3_2 = A0_2._binder
    L3_2 = L3_2.prefab_heart_dial
    L3_2 = L3_2.Prefab
    L4_2 = A0_2._binder
    L4_2 = L4_2.prefab_heart_dial
    L4_2 = L4_2.transform
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    L2_2 = G
    L2_2 = L2_2.new
    L3_2 = G
    L3_2 = L3_2.HeartDialBillboardPanel
    L2_2 = L2_2(L3_2)
    A0_2._heart_dial_panel = L2_2
    L2_2 = A0_2._heart_dial_panel
    L3_2 = L2_2
    L2_2 = L2_2.bind
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._heart_dial_panel
  L2_2 = L1_2
  L1_2 = L1_2.set_light_weight_active
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._heart_dial_panel
  L2_2 = L1_2
  L1_2 = L1_2.SetupHeartDial
  L3_2 = A0_2._heart_dial_entity
  L1_2(L2_2, L3_2)
end
L0_1._refresh_heart_dial = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._Name = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._Refresh
  L2_2(L3_2)
end
L0_1.SetupName = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._heart_dial_entity = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_heart_dial
  L2_2(L3_2)
end
L0_1.setup_heart_dial = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.set_light_weight_active = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root
  if L1_2 ~= nil then
    L2_2 = A0_2
    L1_2 = A0_2.set_light_weight_active
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._heart_dial_panel
    if L1_2 ~= nil then
      L1_2 = A0_2._heart_dial_panel
      L2_2 = L1_2
      L1_2 = L1_2.Close
      L1_2(L2_2)
    end
  end
end
L0_1.Close = L1_1
function L1_1(A0_2, A1_2)
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
L0_1.adjust_hierarchy = L1_1
return L0_1
