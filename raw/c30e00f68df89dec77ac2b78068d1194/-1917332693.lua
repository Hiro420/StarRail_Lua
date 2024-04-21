local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Activity.ActivityAlley.Transport.AlleyBuffTipItemPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AlleyBuffTipItemPanel"
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A1_2.alley_map_buff_data
  L3_2 = L2_2.GridID
  L4_2 = G
  L4_2 = L4_2.AlleyTransport
  L4_2 = L4_2.set_buff_item_color_trigger
  L5_2 = A0_2._binder
  L5_2 = L5_2.animator_root
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.GameCore
  L4_2 = L4_2.AlleyGridExcelTable
  L4_2 = L4_2.GetData
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.GridTitle
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_icon
  L8_2 = L4_2.GridIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.GameCore
  L5_2 = L5_2.AlleyMapEffectExcelTable
  L5_2 = L5_2.GetData
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_desc
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2.MapEffectTitle
  L9_2 = L5_2.Param1
  L10_2 = L5_2.Param2
  L11_2 = L5_2.Param3
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L1_1
  L7_2 = L6_2
  L6_2 = L6_2.GetAlleyMapIDByLayer
  L8_2 = G
  L8_2 = L8_2.AlleyTransport
  L8_2 = L8_2.cur_show_layer
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.text_extra
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = false
  L7_2(L8_2, L9_2)
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.CheckAlleyGridCanPopUpTip
  L9_2 = L6_2
  L10_2 = L2_2.GridID
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  if L7_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_event_tip
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_desc
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_title_panel
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.text_desc_event_tip
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetTextID
    L9_2 = L5_2.MapEffectTitle
    L10_2 = L5_2.Param1
    L11_2 = L5_2.Param2
    L12_2 = L5_2.Param3
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L7_2 = L4_2.RelatedEventID
    if 0 < L7_2 then
      L7_2 = CS
      L7_2 = L7_2.RPG
      L7_2 = L7_2.GameCore
      L7_2 = L7_2.AlleyEventExcelTable
      L7_2 = L7_2.GetData
      L8_2 = L4_2.RelatedEventID
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L8_2 = L7_2.MapEntranceID
        if 0 < L8_2 then
          L8_2 = A0_2._binder
          L8_2 = L8_2.text_title_event_tip
          L9_2 = L8_2
          L8_2 = L8_2.SafeSetTextID
          L10_2 = L7_2.EventTitle
          L8_2(L9_2, L10_2)
          L8_2 = L7_2.MappingInfoID
          if 0 < L8_2 then
            L8_2 = L7_2.MappingInfoID
            if L8_2 then
              goto lbl_110
            end
          end
          L8_2 = nil
          ::lbl_110::
          L9_2 = {}
          L10_2 = L7_2.MapEntranceID
          L9_2.mapEntranceID = L10_2
          L9_2.mappingInfoID = L8_2
          L11_2 = A0_2
          L10_2 = A0_2._bind_btn_callback
          L12_2 = A0_2._binder
          L12_2 = L12_2.btn_drop_link
          L13_2 = A0_2._on_btn_drop_link_click
          L14_2 = L9_2
          L10_2(L11_2, L12_2, L13_2, L14_2)
      end
      else
        L8_2 = A0_2._binder
        L8_2 = L8_2.btn_drop_link
        L9_2 = L8_2
        L8_2 = L8_2.SafeSetActive
        L10_2 = false
        L8_2(L9_2, L10_2)
      end
    else
      L7_2 = A0_2._binder
      L7_2 = L7_2.btn_drop_link
      L8_2 = L7_2
      L7_2 = L7_2.SafeSetActive
      L9_2 = false
      L7_2(L8_2, L9_2)
    end
  else
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_event_tip
    L8_2 = L7_2
    L7_2 = L7_2.SafeSetActive
    L9_2 = false
    L7_2(L8_2, L9_2)
  end
end
L0_1.setup_view = L2_1
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
