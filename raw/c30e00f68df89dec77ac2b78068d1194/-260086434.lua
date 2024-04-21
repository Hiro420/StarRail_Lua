local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dimensions.Components.ChessRogueDimensionEffectItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDimensionEffectItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  A0_2._data = A1_2
  A0_2._is_unlocked = A2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.locked_infos
  A0_2._infos = L3_2
  L3_2 = A0_2._is_unlocked
  if L3_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.unlock_infos
    A0_2._infos = L3_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.locked_infos
  L3_2 = L3_2.root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlocked
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.unlock_infos
  L3_2 = L3_2.root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlocked
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.locked_line_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlocked
  L5_2 = not L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.unlock_line_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = A0_2._is_unlocked
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._infos
  L3_2 = L3_2.value_required
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = A0_2._data
  L5_2 = L5_2.UnlockAeonDimensionPoint
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._infos
  L3_2 = L3_2.eff_title
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._data
  L5_2 = L5_2.EffectTitle
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._infos
  L3_2 = L3_2.eff_desc
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._data
  L5_2 = L5_2.EffectDesc
  L6_2 = table
  L6_2 = L6_2.unpack
  L7_2 = G
  L7_2 = L7_2.Utils
  L7_2 = L7_2.create_lua_table_from_cs_array
  L8_2 = A0_2._data
  L8_2 = L8_2.EffectDescParamList
  L7_2, L8_2 = L7_2(L8_2)
  L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = A0_2._infos
  L5_2 = L5_2.eff_icon
  L6_2 = A0_2._data
  L6_2 = L6_2.TalentIcon
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = G
  L3_2 = L3_2.RedDotModule
  L3_2 = L3_2.Instance
  L4_2 = L3_2
  L3_2 = L3_2.bind_reddot
  L5_2 = "ChessRogueDimensionTalentNew"
  L6_2 = A0_2._data
  L6_2 = L6_2.AeonTalentID
  L7_2 = A0_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_reddot
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.transform
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if A2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.rect_mask
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector4
    L5_2 = 0
    L6_2 = 80
    L7_2 = 0
    L8_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2.padding = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.rect_mask
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector4
    L5_2 = 0
    L6_2 = 80
    L7_2 = 0
    L8_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2.softness = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.rect_mask
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.RectMask2D
    L4_2 = L4_2.SoftType
    L4_2 = L4_2.Bottom
    L3_2.softType = L4_2
  else
    L3_2 = A0_2._binder
    L3_2 = L3_2.rect_mask
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.Vector4
    L5_2 = 0
    L6_2 = 0
    L7_2 = 0
    L8_2 = 0
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L3_2.softness = L4_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.rect_mask
    L4_2 = CS
    L4_2 = L4_2.UnityEngine
    L4_2 = L4_2.UI
    L4_2 = L4_2.RectMask2D
    L4_2 = L4_2.SoftType
    L4_2 = L4_2.All
    L3_2.softType = L4_2
    if A1_2 then
      L3_2 = A0_2._binder
      L3_2 = L3_2.rect_mask
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector4
      L5_2 = 0
      L6_2 = 0
      L7_2 = 0
      L8_2 = 40
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.padding = L4_2
    else
      L3_2 = A0_2._binder
      L3_2 = L3_2.rect_mask
      L4_2 = CS
      L4_2 = L4_2.UnityEngine
      L4_2 = L4_2.Vector4
      L5_2 = 0
      L6_2 = 0
      L7_2 = 0
      L8_2 = 0
      L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
      L3_2.padding = L4_2
    end
  end
end
L0_1.setup_rect_mask = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_top_line
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_top_line = L1_1
return L0_1
