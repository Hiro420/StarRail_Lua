local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.Rogue.RogueUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEnhanceBuffRowPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.InventoryModule
L2_1 = {}
L2_1.White = "#FFFFFF"
L2_1.Red = "#C84A32"
function L3_1(A0_2, A1_2, A2_2)
  A0_2._rogue_buff_data = nil
  A0_2._maze_buff_row = nil
  A0_2._enhance_disabled = false
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_buff
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_buff
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2, A3_2)
  A0_2._callback_listener = A1_2
  A0_2._click_callback = A2_2
  A0_2._click_index = A3_2
end
L0_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2)
  A0_2._enhance_disabled = A1_2
end
L0_1.disable_enhance = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  A0_2._rogue_buff_data = A1_2
  A0_2._extra_effect_id_table = nil
  L4_2 = A0_2
  L3_2 = A0_2._setup_buff_view
  L5_2 = A1_2
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2.setup_selected
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_buff
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.setup_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
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
  L6_2 = L6_2.img_icon
  L7_2 = L2_2.BuffIcon
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.text_title
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetTextID
  L6_2 = L2_2.BuffName
  L4_2(L5_2, L6_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_rarity
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  L4_2 = G
  L4_2 = L4_2.RogueUtils
  L4_2 = L4_2.setup_rogue_buff_bg
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_bg_normal_table
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_bg_up_table
  L7_2 = L3_2
  L8_2 = L2_2.Lv
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_cost
  L6_2 = A1_2
  L7_2 = L2_2.LvMax
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_level
  L4_2(L5_2)
end
L0_1._setup_buff_view = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = A1_2.Level
  L4_2 = false
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_tip_can_enhance
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_cost
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = false
  L5_2(L6_2, L7_2)
  if A2_2 == 1 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cost
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Rogue_BuffLevelUp_Hint3"
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cost
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextColor
    L7_2 = L2_1.White
    L5_2(L6_2, L7_2)
  elseif L3_2 == A2_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cost
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextID
    L7_2 = "UIText_Rogue_BuffLevelUp_Hint2"
    L5_2(L6_2, L7_2)
    L5_2 = A0_2._binder
    L5_2 = L5_2.text_cost
    L6_2 = L5_2
    L5_2 = L5_2.SafeSetTextColor
    L7_2 = L2_1.White
    L5_2(L6_2, L7_2)
  else
    L5_2 = A0_2._enhance_disabled
    if L5_2 then
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_cost
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextID
      L7_2 = "UIText_Rogue_BuffLevelUp_Hint2"
      L5_2(L6_2, L7_2)
      L5_2 = A0_2._binder
      L5_2 = L5_2.text_cost
      L6_2 = L5_2
      L5_2 = L5_2.SafeSetTextColor
      L7_2 = L2_1.White
      L5_2(L6_2, L7_2)
    else
      L6_2 = A0_2
      L5_2 = A0_2._get_cost
      L7_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2)
      if L5_2 == nil then
        return
      end
      L6_2 = L5_2.ItemID
      L7_2 = L5_2.ItemNum
      L8_2 = CS
      L8_2 = L8_2.RPG
      L8_2 = L8_2.GameCore
      L8_2 = L8_2.ItemExcelTable
      L8_2 = L8_2.GetData
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = L1_1
      L10_2 = L9_2
      L9_2 = L9_2.GetItemCountByConfigID
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L4_2 = L7_2 <= L9_2
      L11_2 = A0_2
      L10_2 = A0_2._async_load_sprite_to
      L12_2 = A0_2._binder
      L12_2 = L12_2.img_cost
      L13_2 = L8_2.ItemIconPath
      L10_2(L11_2, L12_2, L13_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.text_cost
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetText
      L12_2 = L7_2
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.text_cost
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetTextColor
      if L7_2 <= L9_2 then
        L12_2 = L2_1.White
        if L12_2 then
          goto lbl_95
        end
      end
      L12_2 = L2_1.Red
      ::lbl_95::
      L10_2(L11_2, L12_2)
      L10_2 = A0_2._binder
      L10_2 = L10_2.img_cost
      L11_2 = L10_2
      L10_2 = L10_2.SafeSetActive
      L12_2 = true
      L10_2(L11_2, L12_2)
    end
  end
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_buff
  L6_2 = L5_2
  L5_2 = L5_2.SetChecked
  L7_2 = false
  L5_2(L6_2, L7_2)
end
L0_1._setup_cost = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetCurModeRogueBuffInfo
  L2_2 = L2_2()
  L4_2 = L2_2
  L3_2 = L2_2.GetRogueBuffEnhanceItem
  L5_2 = A1_2.BuffID
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.ItemCostList
    if L4_2 ~= nil then
      L5_2 = L4_2.Count
      if 0 < L5_2 then
        L5_2 = L4_2[0]
        return L5_2
      end
    end
  end
  L4_2 = nil
  return L4_2
end
L0_1._get_cost = L3_1
function L3_1(A0_2)
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
L0_1._setup_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._rogue_buff_data
  L2_2 = L1_2
  L1_2 = L1_2.GetMazeBuffRow
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.Lv
  L2_2 = 1 < L2_2
  return L2_2
end
L0_1._show_level = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._callback_listener
  if L1_2 ~= nil then
    L1_2 = A0_2._click_callback
    if L1_2 ~= nil then
      goto lbl_8
    end
  end
  do return end
  ::lbl_8::
  L1_2 = A0_2._click_callback
  L2_2 = A0_2._callback_listener
  L3_2 = A0_2._click_index
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_btn_click = L3_1
return L0_1
