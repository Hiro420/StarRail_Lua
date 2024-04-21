local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.Entrance.Components.RogueNousPathEchoInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousPathEchoInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  L4_2 = A0_2._binder
  L4_2.type_tag = A3_2
end
L0_1.ctor = L1_1
function L1_1(A0_2)
  local L1_2
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2.TypeTag
  if L2_2 == "Title" then
    L3_2 = A0_2
    L2_2 = A0_2._setup_title_view
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = A1_2.TypeTag
    if L2_2 == "Desc" then
      L3_2 = A0_2
      L2_2 = A0_2._setup_desc_view
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    else
      L2_2 = A1_2.TypeTag
      if L2_2 == "Tips" then
        L3_2 = A0_2
        L2_2 = A0_2._setup_tips_view
        L4_2 = A1_2
        L2_2(L3_2, L4_2)
      else
        L2_2 = A1_2.TypeTag
        if L2_2 == "Buff" then
          L3_2 = A0_2
          L2_2 = A0_2._setup_buff_view
          L4_2 = A1_2
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_entrance_info
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_entrance_info
    L2_2 = L1_2
    L1_2 = L1_2.get_btn_root
    return L1_2(L2_2)
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_btn_root = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_entrance_info
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.panel_entrance_info
    L4_2 = L3_2
    L3_2 = L3_2.register_selected_callback
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1.register_select_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_title
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.DescContent
  L2_2(L3_2, L4_2)
end
L0_1._setup_title_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_desc
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.DescContent
  L2_2(L3_2, L4_2)
end
L0_1._setup_desc_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_tips
  L3_2 = L2_2
  L2_2 = L2_2.SetCustomizedText
  L4_2 = A1_2.DescContent
  L2_2(L3_2, L4_2)
end
L0_1._setup_tips_view = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_entrance_info
  L3_2 = L2_2
  L2_2 = L2_2.setup_entrance_buff_view
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._setup_buff_view = L1_1
return L0_1
