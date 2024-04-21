local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSurfacePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceSurfacePanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._surface_data = A1_2
  A0_2._locked = A2_2
  L3_2 = A0_2._surface_data
  L4_2 = L3_2
  L3_2 = L3_2.UpdateNewStatus
  L3_2(L4_2)
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.IsFirstTimeUnlock
  if L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.RogueNousSeenDiceSurfaceRedDot
    L4_2 = L3_2
    L3_2 = L3_2.Add
    L5_2 = A0_2._surface_data
    L5_2 = L5_2.SurfaceID
    L3_2(L4_2, L5_2)
  end
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_text
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.LayoutRebuilder
  L3_2 = L3_2.ForceRebuildLayoutImmediate
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_bind_red_dot
  L3_2(L4_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = G
  L2_2 = L2_2.RogueNousUtils
  L2_2 = L2_2.get_sorted_tag_table_by_surface_row
  L3_2 = A0_2._surface_data
  L2_2 = L2_2(L3_2)
  L3_2 = ipairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L8_2 = {}
    L8_2.path = "TxtAct"
    L9_2 = L7_2.TagName
    L8_2.text_id = L9_2
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.tag_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L0_1.show_tag = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.set_mark_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  A0_2._equipped = A1_2
end
L0_1.set_equipped = L1_1
function L1_1(A0_2)
  local L1_2
  L1_2 = A0_2._equipped
  return L1_2
end
L0_1.is_equipped = L1_1
function L1_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._locked
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.normal_icon_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_icon_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.normal_icon_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = true
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.locked_icon_root
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetActive
    L3_2 = false
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._surface_data
    L1_2 = L1_2.Icon
    if L1_2 ~= nil then
      L1_2 = A0_2._surface_data
      L1_2 = L1_2.Icon
      if L1_2 ~= "" then
        goto lbl_34
      end
    end
    do return end
    ::lbl_34::
    L2_2 = A0_2
    L1_2 = A0_2._load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.icon
    L4_2 = A0_2._surface_data
    L4_2 = L4_2.Icon
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetColor
    L3_2 = G
    L3_2 = L3_2.RogueNousUtils
    L3_2 = L3_2.get_color_by_surface_rarity
    L4_2 = A0_2._surface_data
    L4_2 = L4_2.Rarity
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    L1_2 = ipairs
    L2_2 = A0_2._binder
    L2_2 = L2_2.rarity_bg
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    for L4_2, L5_2 in L1_2, L2_2, L3_2 do
      L7_2 = L5_2
      L6_2 = L5_2.SafeSetActive
      L8_2 = A0_2._surface_data
      L8_2 = L8_2.Rarity
      L8_2 = L4_2 == L8_2
      L6_2(L7_2, L8_2)
    end
  end
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceName
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.RogueNousUtils
  L1_2 = L1_2.set_title_color
  L2_2 = A0_2._binder
  L2_2 = L2_2.title
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.Rarity
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._surface_data
  L3_2 = L3_2.SurfaceDesc
  L4_2 = table
  L4_2 = L4_2.unpack
  L5_2 = G
  L5_2 = L5_2.Utils
  L5_2 = L5_2.create_lua_table_from_cs_array
  L6_2 = A0_2._surface_data
  L6_2 = L6_2.DescParam
  L5_2, L6_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "RogueNousSurfaceNew"
  L4_2 = A0_2._surface_data
  L4_2 = L4_2.SurfaceID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.red_dot_root
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  A0_2._red_dot_inited = true
end
L0_1._try_bind_red_dot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._click_listener
  if L1_2 then
    L1_2 = A0_2._click_callback
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L3_2 = A0_2._surface_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_root_btn_clicked = L1_1
return L0_1
