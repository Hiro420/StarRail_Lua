local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "PlayerHeroPathDetailSingleInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_HeroPath_NoEffect"
function L2_1(A0_2)
  local L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._dimension_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._set_dimension_data
  L1_2(L2_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._dimension_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_dimension_icon
  L5_2 = L1_2.BaseTypeIcon
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_dimension_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.BaseTypeText
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_dimension_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = A0_2._dimension_data
  L4_2 = L4_2.Level
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._dimension_data
  L2_2 = L2_2.Level
  L3_2 = A0_2._dimension_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.MaxLevel
  if L2_2 ~= L3_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_exp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = true
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_current_exp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.Exp
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_total_exp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.ExpRequire
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._dimension_data
    L2_2 = L2_2.Row
    L2_2 = L2_2.ExpRequire
    if L2_2 ~= 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.slider_progress_exp
      L3_2 = A0_2._dimension_data
      L3_2 = L3_2.Exp
      L4_2 = A0_2._dimension_data
      L4_2 = L4_2.Row
      L4_2 = L4_2.ExpRequire
      L3_2 = L3_2 / L4_2
      L2_2.value = L3_2
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.slider_progress_exp
      L2_2.value = 1
    end
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_exp
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.text_dimension_appraise
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._dimension_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.LevelComment
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._dimension_data
  L2_2 = L2_2.Level
  if L2_2 ~= 0 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_dimension_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = A0_2._dimension_data
    L4_2 = L4_2.Row
    L4_2 = L4_2.Desc
    L5_2 = A0_2._dimension_data
    L5_2 = L5_2.Row
    L5_2 = L5_2.Value
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_dimension_desc
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_1
    L2_2(L3_2, L4_2)
  end
end
L0_1._set_dimension_data = L2_1
function L2_1(A0_2)
  local L1_2
end
L0_1._on_dispose = L2_1
return L0_1
