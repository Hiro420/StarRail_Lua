local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyBuffTipItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyCommonTipItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AlleyModule
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A1_2.grid_id
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.AlleyGridExcelTable
  L3_2 = L3_2.GetData
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.GridTitle
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_shop
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = true
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_buff
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_shop_icon
  L7_2 = L3_2.GridIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_desc
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.GridDesc
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_extra
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = false
  L4_2(L5_2, L6_2)
  if L2_2 < 200 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_shop_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  elseif 200 < L2_2 and L2_2 < 300 then
    L5_2 = A0_2
    L4_2 = A0_2.setup_dock_view
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.grid_id
  L3_2 = G
  L3_2 = L3_2.AlleyTransport
  L3_2 = L3_2.get_trigger_name_by_shop_id
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.animator_root
  L5_2 = L4_2
  L4_2 = L4_2.SetTrigger
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.node_event_tip
  if L4_2 ~= nil then
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_event_tip
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
end
L0_1.setup_shop_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator_root
  L3_2 = L2_2
  L2_2 = L2_2.SetTrigger
  L4_2 = "ColorDefault"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_event_tip
  if L2_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_event_tip
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
end
L0_1.setup_dock_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = G
  L2_2 = L2_2.GotoManager
  L2_2 = L2_2.GotoByType
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.GotoType
  L3_2 = L3_2.AreaSwitch
  L3_2 = #L3_2
  L4_2 = {}
  L5_2 = A1_2.mapEntranceID
  L6_2 = A1_2.mappingInfoID
  L7_2 = nil
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._owner
  L3_2 = L2_2
  L2_2 = L2_2.exit
  L2_2(L3_2)
end
L0_1._on_btn_drop_link_click = L2_1
return L0_1
