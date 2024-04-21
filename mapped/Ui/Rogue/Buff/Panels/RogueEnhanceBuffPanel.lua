local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEnhanceBuffPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "UIText_Rogue_BuffLevelUp_Btn"
L3_1 = "UIText_Rogue_BuffLevelUp_Hint5"
L4_1 = "UIText_Rogue_BuffLevelUp_Hint4"
function L5_1(A0_2)
  local L1_2
  A0_2._enhance_disabled = false
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_buff_data
    L2_2 = L1_2
    L1_2 = L1_2.GetExtraEffectRowIDs
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.Length
    if 0 < L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.panel_current_desc
      L3_2 = L2_2
      L2_2 = L2_2.get_first_selected_object
      return L2_2(L3_2)
    end
  end
  L1_2 = nil
  return L1_2
end
L0_1.get_first_selected_object = L5_1
function L5_1(A0_2, A1_2)
  A0_2._enhance_disabled = A1_2
end
L0_1.disable_enhance = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_handler = A2_2
end
L0_1.replace_click_callback = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2._rogue_buff_data = A1_2
  L3_2 = A1_2
  L2_2 = A1_2.GetMazeBuffRow
  L2_2 = L2_2(L3_2)
  if L2_2 == nil then
    return
  end
  L4_2 = A1_2
  L3_2 = A1_2.GetRogueBuffRarity
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._async_load_sprite_to
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_buff_icon
  L7_2 = L2_2.BuffIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.BuffName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_buff_type
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L7_2 = A1_2
  L6_2 = A1_2.GetRogueBuffTypeRow
  L6_2 = L6_2(L7_2)
  L6_2 = L6_2.RogueBuffTypeTextmapID
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_buff_rarity
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_bg_normal_table
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_line_rarity
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetColor
  L6_2 = G
  L6_2 = L6_2.RogueUtils
  L6_2 = L6_2.get_rogue_buff_rarity_color
  L7_2 = L3_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_level
  L4_2(L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_cur_desc
  L6_2 = L2_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_next_desc
  L6_2 = L2_2
  L7_2 = A1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L4_2 = A0_2
  L3_2 = A0_2._show_level
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._show_level
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = A0_2._rogue_buff_data
    L2_2 = L1_2
    L1_2 = L1_2.GetMazeBuffRow
    L1_2 = L1_2(L2_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_level
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = "UIText_Rogue_Aeon_Level_Tip_1"
    L5_2 = L1_2.Lv
    L5_2 = L5_2 - 1
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.node_level_max
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = L1_2.Lv
    L5_2 = L1_2.LvMax
    L4_2 = L4_2 == L5_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._setup_level = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_buff_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMazeBuffRow
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Lv
  L2_2 = 1 < L2_2
  return L2_2
end
L0_1._show_level = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_current_desc
  L4_2 = L3_2
  L3_2 = L3_2.setup_desc
  L5_2 = A1_2
  L6_2 = false
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_current_desc
  L4_2 = L3_2
  L3_2 = L3_2.setup_btn_enable
  L6_2 = A2_2
  L5_2 = A2_2.GetExtraEffectRowIDs
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.Length
  L5_2 = 0 < L5_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_current_desc
  L4_2 = L3_2
  L3_2 = L3_2.register_callback
  L5_2 = A0_2._on_btn_desc_detail
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_cur_desc = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L4_2 = A2_2
  L3_2 = A2_2.IsLevelMax
  L3_2 = L3_2(L4_2)
  L4_2 = not L3_2
  L5_2 = A0_2._enhance_disabled
  L5_2 = not L3_2 and L5_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_arrow
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_next_desc
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_hint_lv_max
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.panel_btn_confirm
  L7_2 = L6_2
  L6_2 = L6_2.safe_set_active
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    if L3_2 then
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_hint
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = A1_2.LvMax
      if L8_2 == 1 then
        L8_2 = L3_1
        if L8_2 then
          goto lbl_45
        end
      end
      L8_2 = L4_1
      ::lbl_45::
      L6_2(L7_2, L8_2)
    else
      L6_2 = A0_2._binder
      L6_2 = L6_2.text_hint
      L7_2 = L6_2
      L6_2 = L6_2.SafeSetTextID
      L8_2 = "UIText_ActivityRogueEndless_Shop_Limit_Tips"
      L6_2(L7_2, L8_2)
    end
  end
  if L4_2 then
    L6_2 = G
    L6_2 = L6_2.BuffUtils
    L6_2 = L6_2.GetMazeBuffData
    L7_2 = A2_2.BuffID
    L8_2 = A2_2.Level
    L8_2 = L8_2 + 1
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_next_desc
    L8_2 = L7_2
    L7_2 = L7_2.setup_desc
    L9_2 = L6_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_next_desc
    L8_2 = L7_2
    L7_2 = L7_2.setup_btn_enable
    L10_2 = A2_2
    L9_2 = A2_2.GetExtraEffectRowIDs
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2.Length
    L9_2 = 0 < L9_2
    L10_2 = false
    L7_2(L8_2, L9_2, L10_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.panel_next_desc
    L8_2 = L7_2
    L7_2 = L7_2.register_callback
    L9_2 = A0_2._on_btn_desc_detail
    L10_2 = A0_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._get_rogue_buff_enhance_cost
    L9_2 = A2_2.BuffID
    L7_2, L8_2 = L7_2(L8_2, L9_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_btn_confirm
    L10_2 = L9_2
    L9_2 = L9_2.setup_btn_text
    L11_2 = L2_1
    L9_2(L10_2, L11_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_btn_confirm
    L10_2 = L9_2
    L9_2 = L9_2.setup_cost
    L11_2 = L7_2
    L12_2 = L8_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A0_2._binder
    L9_2 = L9_2.panel_btn_confirm
    L10_2 = L9_2
    L9_2 = L9_2.register_callback
    L11_2 = A0_2._on_btn_enhance
    L12_2 = A0_2
    L9_2(L10_2, L11_2, L12_2)
  end
end
L0_1._setup_next_desc = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetCurModeRogueBuffInfo
  L2_2 = L2_2()
  L4_2 = L2_2
  L3_2 = L2_2.GetRogueBuffEnhanceItem
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = nil
  L5_2 = nil
  if L3_2 ~= nil then
    L6_2 = L3_2.ItemCostList
    costList = L6_2
    L6_2 = costList
    if L6_2 ~= nil then
      L6_2 = costList
      L6_2 = L6_2.Count
      if 0 < L6_2 then
        L6_2 = costList
        L6_2 = L6_2[0]
        L4_2 = L6_2.ItemID
        L6_2 = costList
        L6_2 = L6_2[0]
        L5_2 = L6_2.ItemNum
      end
    end
  end
  L6_2 = L4_2
  L7_2 = L5_2
  return L6_2, L7_2
end
L0_1._get_rogue_buff_enhance_cost = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._rogue_buff_data
  L2_2 = L1_2
  L1_2 = L1_2.GetExtraEffectRowIDs
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Length
  if 0 < L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_async_show
    L3_2 = "Ui.Common.ExtraDesc.ExtraDescListDialog"
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_btn_desc_detail = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_buff_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._click_callback
  if L1_2 ~= nil then
    L1_2 = G
    L1_2 = L1_2.Utils
    L1_2 = L1_2.invoke_callback
    L2_2 = A0_2._click_callback
    L3_2 = A0_2._click_handler
    L4_2 = A0_2._rogue_buff_data
    L4_2 = L4_2.BuffID
    L1_2(L2_2, L3_2, L4_2)
    return
  end
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetCurModeRogueBuffInfo
  L1_2 = L1_2()
  if L1_2 ~= nil then
    L2_2 = L1_2.SendPacketCmd
    if L2_2 ~= nil then
      L2_2 = L1_2.SendPacketCmd
      L3_2 = L2_2
      L2_2 = L2_2.SendEnhanceRogueBuffCsReq
      L4_2 = A0_2._rogue_buff_data
      L4_2 = L4_2.BuffID
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._on_btn_enhance = L5_1
return L0_1
