local L0_1, L1_1, L2_1, L3_1
L0_1 = "Root/TextPanel/Text"
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "TravelBrochurePasterContentPanel"
L3_1 = G
L3_1 = L3_1.BasePanel
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2
  L1_2 = {}
  A0_2._id_to_obj = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._paster_data = A1_2
  L3_2 = A2_2 == true
  A0_2._locked = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L1_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_image
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._id_to_obj
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._paster_data
    L8_2 = L8_2.ID
    L8_2 = L4_2 == L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._paster_data
  L1_2 = L1_2.Type
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.TravelBrochurePasterType
  L2_2 = L2_2.Image
  if L1_2 == L2_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.node_image
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = pairs
    L2_2 = A0_2._binder
    L2_2 = L2_2.imgs
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = A0_2
      L6_2 = A0_2._async_load_sprite_to
      L8_2 = L5_2
      L9_2 = A0_2._paster_data
      L9_2 = L9_2.PasterImage
      L6_2(L7_2, L8_2, L9_2)
    end
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_img_name
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = A0_2._locked
    if L3_2 then
      L3_2 = "UIText_TravelBrochure_PasterNotObtained"
      if L3_2 then
        goto lbl_63
      end
    end
    L3_2 = A0_2._paster_data
    L3_2 = L3_2.ItemRow
    L3_2 = L3_2.ItemName
    ::lbl_63::
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._paster_data
    L1_2 = L1_2.Type
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.TravelBrochurePasterType
    L2_2 = L2_2.Text
    if L1_2 == L2_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.node_text
      L2_2 = L1_2
      L1_2 = L1_2.SafeSetActive
      L3_2 = true
      L1_2(L2_2, L3_2)
      L2_2 = A0_2
      L1_2 = A0_2._safe_create_text_obj
      L1_2 = L1_2(L2_2)
      L2_2 = G
      L2_2 = L2_2.ComponentExtensions
      L2_2 = L2_2.SafeGetCmpt
      L3_2 = typeof
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.LocalizedText
      L3_2 = L3_2(L4_2)
      L4_2 = L1_2.transform
      L5_2 = L0_1
      L2_2 = L2_2(L3_2, L4_2, L5_2)
      L4_2 = L2_2
      L3_2 = L2_2.SafeSetTextID
      L5_2 = A0_2._paster_data
      L5_2 = L5_2.PasterText
      L3_2(L4_2, L5_2)
    end
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_locked
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._paster_data
    L8_2 = L8_2.IsUnlocked
    L8_2 = not L8_2
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.nodes_unlocked
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = A0_2._paster_data
    L8_2 = L8_2.IsUnlocked
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.txts_source
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetTextID
    L8_2 = A0_2._paster_data
    L8_2 = L8_2.UnlockHint
    L6_2(L7_2, L8_2)
  end
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.txts_desc
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetTextID
    L8_2 = A0_2._paster_data
    L8_2 = L8_2.ItemRow
    L8_2 = L8_2.ItemBGDesc
    L6_2(L7_2, L8_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_increase
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._paster_data
  L3_2 = L3_2.IsUnlocked
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._paster_data
  L1_2 = L1_2.IsUnlocked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.txt_increase
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetTextID
    L3_2 = "UIText_TravelBrochure_PasterIncreaseCompletionNum"
    L4_2 = A0_2._paster_data
    L4_2 = L4_2.ProgressCount
    L1_2(L2_2, L3_2, L4_2)
  end
end
L1_1._refresh_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._paster_data
  L1_2 = L1_2.ID
  L2_2 = A0_2._paster_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.TextPasterPrefab
  L3_2 = A0_2._id_to_obj
  L3_2 = L3_2[L1_2]
  if L3_2 == nil then
    L5_2 = A0_2
    L4_2 = A0_2.sync_load_prefab
    L6_2 = L2_2
    L7_2 = A0_2._binder
    L7_2 = L7_2.node_load_text
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L3_2 = L4_2
    L4_2 = A0_2._id_to_obj
    L4_2[L1_2] = L3_2
  end
  return L3_2
end
L1_1._safe_create_text_obj = L2_1
return L1_1
