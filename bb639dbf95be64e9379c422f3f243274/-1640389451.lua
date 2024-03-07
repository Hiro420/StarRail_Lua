local L0_1, L1_1, L2_1, L3_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.ConstValueRogueExcelTable
L0_1 = L0_1.GetData
L1_1 = "Rogue_2D_Image_Path"
L0_1 = L0_1(L1_1)
L0_1 = L0_1.ConstValue
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueTalkBgPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  A0_2._talk_bg_id = nil
  A0_2._bg_path = nil
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2
end
L1_1._on_load = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_bg
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L1_1._on_show_rogue_talk_bg = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._talk_bg_id
  if L1_2 ~= nil then
    L1_2 = A0_2._bg_path
    if L1_2 ~= nil then
      goto lbl_10
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_bg
  L3_2 = nil
  L1_2(L2_2, L3_2)
  ::lbl_10::
end
L1_1.setup_bg_view_if_empty = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == 0 then
    L3_2 = A0_2
    L2_2 = A0_2._setup_bg
    L4_2 = nil
    L2_2(L3_2, L4_2)
  else
    L3_2 = A0_2
    L2_2 = A0_2._setup_bg
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1.setup_simple_talk_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = A0_2._talk_bg_id
  if L2_2 ~= nil then
    L2_2 = A0_2._talk_bg_id
    if L2_2 == A1_2 then
      return
    end
  end
  A0_2._talk_bg_id = A1_2
  L2_2 = nil
  if A1_2 ~= nil and A1_2 ~= 0 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.RogueTalkNameConfigExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  if L2_2 ~= nil then
    L3_2 = L2_2.Name
    if L3_2 then
      goto lbl_28
    end
  end
  L3_2 = nil
  ::lbl_28::
  L5_2 = A0_2
  L4_2 = A0_2._setup_text
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_name
  L8_2 = A0_2._binder
  L8_2 = L8_2.txt_name
  L4_2(L5_2, L6_2, L7_2, L8_2)
  if L2_2 ~= nil then
    L4_2 = L2_2.SubName
    if L4_2 then
      goto lbl_41
    end
  end
  L4_2 = nil
  ::lbl_41::
  L6_2 = A0_2
  L5_2 = A0_2._setup_text
  L7_2 = L4_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.node_sub_info
  L9_2 = A0_2._binder
  L9_2 = L9_2.txt_sub_name
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = nil
  if L2_2 then
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RogueImageExcelTable
    L6_2 = L6_2.GetData
    L7_2 = L2_2.ImageID
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  if L2_2 ~= nil then
    L6_2 = L2_2.IconPath
    if L6_2 then
      goto lbl_65
    end
  end
  L6_2 = nil
  ::lbl_65::
  L7_2 = G
  L7_2 = L7_2.StrExt
  L7_2 = L7_2.IsNullOrEmpty
  L8_2 = L6_2
  L7_2 = L7_2(L8_2)
  L7_2 = L6_2 ~= nil and L7_2
  L8_2 = A0_2._binder
  L8_2 = L8_2.img_icon
  L9_2 = L8_2
  L8_2 = L8_2.SafeSetActive
  L10_2 = L7_2
  L8_2(L9_2, L10_2)
  if L7_2 then
    L9_2 = A0_2
    L8_2 = A0_2._async_load_sprite_to
    L10_2 = A0_2._binder
    L10_2 = L10_2.img_icon
    L11_2 = L6_2
    L8_2(L9_2, L10_2, L11_2)
  end
  L8_2 = nil
  if L5_2 ~= nil then
    L8_2 = L5_2.ImagePath
  end
  if L8_2 ~= nil then
    L9_2 = G
    L9_2 = L9_2.StrExt
    L9_2 = L9_2.IsNullOrEmpty
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      goto lbl_102
    end
  end
  L8_2 = L0_1
  ::lbl_102::
  L9_2 = A0_2._binder
  L9_2 = L9_2.node_bg
  L10_2 = L9_2
  L9_2 = L9_2.SafeSetActive
  L11_2 = true
  L9_2(L10_2, L11_2)
  L9_2 = A0_2._bg_path
  if L9_2 ~= L8_2 then
    L10_2 = A0_2
    L9_2 = A0_2._async_load_sprite_to
    L11_2 = A0_2._binder
    L11_2 = L11_2.img_bg
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    A0_2._bg_path = L8_2
  end
end
L1_1._setup_bg = L2_1
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L5_2 = A1_2
  L4_2 = A1_2.IsEmpty
  L4_2 = L4_2(L5_2)
  L4_2 = A1_2 ~= nil and L4_2
  L6_2 = A2_2
  L5_2 = A2_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L6_2 = A3_2
    L5_2 = A3_2.SafeSetTextID
    L7_2 = A1_2
    L5_2(L6_2, L7_2)
  end
end
L1_1._setup_text = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.RogueAeonExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A1_2
  L4_2 = 1
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_bg
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_sub_info
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetRogueAeonDisplayRow
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.RogueAeonName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_sub_name
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L3_2.RogueAeonPathName
  L4_2(L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_bg
  L7_2 = L3_2.AeonImage
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_icon
  L7_2 = L3_2.AeonIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = L3_2.AeonImage
  A0_2._bg_path = L4_2
end
L1_1.setup_aeon_view = L2_1
return L1_1
