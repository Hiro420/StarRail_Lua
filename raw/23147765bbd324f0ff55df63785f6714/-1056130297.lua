local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.ChessRogue.Dice.ChessRogueUnderLinePanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ChessRogueDiceSurfaceInfoItemPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  function L2_2()
    local L0_3, L1_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_root_select
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_btn_root_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._display_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_icon
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_text
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_extra_desc
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_tags
  L2_2(L3_2)
end
L0_1.setup_view = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._underline_panel
  if L1_2 ~= nil then
    L1_2 = A0_2._underline_panel
    L2_2 = L1_2
    L1_2 = L1_2.is_extra_info_available
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = A0_2
      L1_2 = A0_2.setup_short_cut_hint_panel
      L3_2 = {}
      L4_2 = "ActionGroup_BuffDetail"
      L5_2 = "ActionGroup_Return"
      L3_2[1] = L4_2
      L3_2[2] = L5_2
      L1_2(L2_2, L3_2)
  end
  else
    L2_2 = A0_2
    L1_2 = A0_2.setup_short_cut_hint_panel
    L3_2 = {}
    L4_2 = "ActionGroup_Return"
    L3_2[1] = L4_2
    L1_2(L2_2, L3_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_root_select = L1_1
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.is_gamepad_input
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = A0_2._underline_panel
    if L1_2 ~= nil then
      L1_2 = A0_2._underline_panel
      L2_2 = L1_2
      L1_2 = L1_2.is_extra_info_available
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_16
      end
    end
  end
  do return end
  ::lbl_16::
  L1_2 = A0_2._underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.show_extra_info
  L1_2(L2_2)
end
L0_1._on_btn_root_click = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_surface_active_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_surface_inactive_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_active_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.aeon_inactive_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.dice_surface_active_rarity_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._display_data
  L3_2 = L3_2.Rarity
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.dice_surface_active_icon
  L4_2 = A0_2._display_data
  L4_2 = L4_2.DiceSurfaceIcon
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._display_data
  L1_2 = L1_2.IconNeedSetColor
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.dice_surface_active_icon
    L2_2 = L1_2
    L1_2 = L1_2.SafeSetColor
    L3_2 = G
    L3_2 = L3_2.RogueNousUtils
    L3_2 = L3_2.get_color_by_surface_rarity
    L4_2 = A0_2._display_data
    L4_2 = L4_2.Rarity
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
end
L0_1._setup_icon = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.title
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._display_data
  L3_2 = L3_2.DiceSurfaceName
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._display_data
  L2_2 = L2_2.DescParam
  L1_2 = L1_2(L2_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._display_data
  L4_2 = L4_2.DiceSurfaceDesc
  L5_2 = table
  L5_2 = L5_2.unpack
  L6_2 = L1_2
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.dice_surface_active_rarity_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_name_color
  L4_2 = A0_2._binder
  L4_2 = L4_2.title
  L5_2 = A0_2._display_data
  L5_2 = L5_2.Rarity
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._setup_text = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = A0_2._display_data
  L1_2 = L1_2.SurfaceTags
  if L1_2 ~= nil then
    L2_2 = L1_2.Length
    if L2_2 ~= 0 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L2_2 = 1
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_surface_tag_root
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2._binder
    L6_2 = L6_2.node_surface_tag_root
    L6_2 = L6_2[L5_2]
    L7_2 = A0_2._binder
    L7_2 = L7_2.txt_surface_tag
    L7_2 = L7_2[L5_2]
    L8_2 = L1_2.Length
    if L5_2 <= L8_2 then
      L8_2 = A0_2._display_data
      L8_2 = L8_2.SurfaceTags
      L9_2 = L5_2 - 1
      L8_2 = L8_2[L9_2]
      L8_2 = #L8_2
      L9_2 = CS
      L9_2 = L9_2.RPG
      L9_2 = L9_2.GameCore
      L9_2 = L9_2.RogueNousSurfaceTagExcelTable
      L9_2 = L9_2.GetData
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 ~= nil then
        L11_2 = L6_2
        L10_2 = L6_2.SafeSetActive
        L12_2 = true
        L10_2(L11_2, L12_2)
        L11_2 = L7_2
        L10_2 = L7_2.SafeSetTextID
        L12_2 = L9_2.TagName
        L10_2(L11_2, L12_2)
      end
    else
      L9_2 = L6_2
      L8_2 = L6_2.SafeSetActive
      L10_2 = false
      L8_2(L9_2, L10_2)
    end
  end
end
L0_1._setup_tags = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_panel
  L3_2 = G
  L3_2 = L3_2.ChessRogueUnderLinePanel
  L4_2 = G
  L4_2 = L4_2.ChessRogueUnderLinePanelBinder
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2._underline_panel = L1_2
  L1_2 = A0_2._underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.bind
  L3_2 = A0_2._binder
  L3_2 = L3_2.extra_info_btn
  L3_2 = L3_2.transform
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._underline_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = A0_2._display_data
  L3_2 = L3_2.ExtraEffect
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.root_btn
  L2_2 = L1_2
  L1_2 = L1_2.ClearAnimationState
  L1_2(L2_2)
end
L0_1._setup_extra_desc = L1_1
return L0_1
