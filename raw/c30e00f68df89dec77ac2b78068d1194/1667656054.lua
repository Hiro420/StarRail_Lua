local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.MazeBuffSelect.MazeBuffDetailInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.MazeBuffSelect.MazeBuffRarityBannerPanel"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MazeBuffDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = G
L1_1 = L1_1.TextExtensions
L2_1 = G
L2_1 = L2_1.ComponentExtensions
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._callback_func = nil
end
L0_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_selected
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = A1_2.BuffID
  mazeBuffID = L3_2
  L3_2 = mazeBuffID
  if L3_2 == 0 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.root
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = false
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = 1
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_lv
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetText
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.BuffUtils
  L4_2 = L4_2.GetMazeBuffData
  L5_2 = mazeBuffID
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 == nil then
    return
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_title
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BuffName
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._async_load_sprite_to
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_icon
  L8_2 = L4_2.BuffIcon
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.text_desc
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetTextID
  L7_2 = L4_2.BuffDesc
  L8_2 = G
  L8_2 = L8_2.UITextUtils
  L8_2 = L8_2.GetSkillParams
  L9_2 = L4_2.ParamList
  L8_2, L9_2 = L8_2(L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.Wrap
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_desc
  L5_2(L6_2)
  A0_2._callback_func = A2_2
  L6_2 = A0_2
  L5_2 = A0_2._bind_btn_callback
  L7_2 = A0_2._binder
  L7_2 = L7_2.btn_root
  L8_2 = L0_1.on_click
  L9_2 = mazeBuffID
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._callback_func
  if nil ~= L2_2 then
    L2_2 = A0_2._callback_func
    L3_2 = A1_2
    L2_2(L3_2)
  end
end
L0_1.on_click = L3_1
return L0_1
