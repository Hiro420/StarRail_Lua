local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueAeonDetailPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.panel_buff_basic
    if L1_2 then
      L1_2 = A0_2._binder
      L1_2 = L1_2.panel_buff_basic
      L2_2 = L1_2
      L1_2 = L1_2.get_first_selected_object
      return L1_2(L2_2)
    end
  end
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.RogueStatic
  L2_2 = L2_2.GetRogueAeonDisplayRow
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_icon_name
  L5_2 = L2_2.AeonFigure
  L6_2 = L2_2.RogueAeonPathName2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_effect_desc
  L5_2 = A1_2.EffectDesc1
  L6_2 = A1_2.EffectDesc2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_select_view_buff
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_navigation
  L3_2(L4_2)
end
L0_1.setup_select_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L2_2 = A1_2.AeonRow
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueStatic
  L3_2 = L3_2.GetRogueAeonDisplayRow
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_icon_name
  L6_2 = L3_2.AeonFigure
  L7_2 = L3_2.RogueAeonPathName2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_effect_desc
  L6_2 = L2_2.EffectDesc1
  L7_2 = L2_2.EffectDesc2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_menu_view_buff
  L6_2 = A1_2
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L5_2 = A0_2
  L4_2 = A0_2._setup_navigation
  L4_2(L5_2)
end
L0_1.setup_menu_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.canvas_group
  L2_2.interactable = A1_2
end
L0_1.set_interactable = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_aeon_icon
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_aeon_bg
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_aeon_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
end
L0_1._setup_icon_name = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = {}
  if A1_2 ~= nil then
    L5_2 = A1_2
    L4_2 = A1_2.IsEmpty
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L3_2
      L6_2 = A1_2
      L4_2(L5_2, L6_2)
    end
  end
  if A2_2 ~= nil then
    L5_2 = A2_2
    L4_2 = A2_2.IsEmpty
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = table
      L4_2 = L4_2.insert
      L5_2 = L3_2
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  end
  L4_2 = #L3_2
  L4_2 = 0 < L4_2
  L5_2 = A0_2._binder
  L5_2 = L5_2.node_effect
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  if L4_2 then
    L5_2 = A0_2._binder
    L5_2 = L5_2.list_effect_desc
    L6_2 = L5_2
    L5_2 = L5_2.setup_view
    L7_2 = L3_2
    L5_2(L6_2, L7_2)
  end
end
L0_1._setup_effect_desc = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_effect_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Rogue_Aeon_Select_Hint_1"
  L3_2(L4_2, L5_2)
  L3_2 = L1_1
  L4_2 = L3_2
  L3_2 = L3_2.GetRogueBuffRowsByGroupID
  L5_2 = A1_2.BattleEventBuffGroup
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.Count
  if 0 < L4_2 then
    L4_2 = L3_2[0]
    L5_2 = CS
    L5_2 = L5_2.RPG
    L5_2 = L5_2.Client
    L5_2 = L5_2.RogueBuffData
    L6_2 = L4_2.MazeBuffID
    L7_2 = L4_2.MazeBuffLevel
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = A0_2._binder
    L6_2 = L6_2.panel_buff_basic
    L7_2 = L6_2
    L6_2 = L6_2.setup_view
    L8_2 = L5_2
    L9_2 = false
    L10_2 = false
    L6_2(L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = A0_2._binder
    L4_2 = L4_2.panel_buff_basic
    L5_2 = L4_2
    L4_2 = L4_2.safe_set_active
    L6_2 = false
    L4_2(L5_2, L6_2)
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRogueData
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetUnlockAeonEnhanceNum
  L4_2 = L4_2(L5_2)
  L5_2 = "UIText_Rogue_Aeon_Echo_Hint_"
  L6_2 = tostring
  L7_2 = L4_2 + 1
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.text_buff_tip
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetTextID
  L8_2 = L5_2
  L9_2 = CS
  L9_2 = L9_2.RPG
  L9_2 = L9_2.Client
  L9_2 = L9_2.TextmapStatic
  L9_2 = L9_2.GetText
  L10_2 = A2_2.RogueAeonPathName2
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2(L10_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L6_2 = 0 < L4_2
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_enhance_buff_root
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.node_buff_enhance_locked
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = not L6_2
  L7_2(L8_2, L9_2)
  if not L6_2 then
    return
  end
  L7_2 = L1_1
  L8_2 = L7_2
  L7_2 = L7_2.GetRogueBuffRowsByGroupID
  L9_2 = A1_2.BattleEventEnhanceBuffGroup
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = ipairs
  L9_2 = A0_2._binder
  L9_2 = L9_2.panels_buff_enhanced
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  for L11_2, L12_2 in L8_2, L9_2, L10_2 do
    L13_2 = L7_2.Count
    if L11_2 <= L13_2 then
      L13_2 = L7_2.Count
      L13_2 = L11_2 - 1
      L13_2 = L11_2 <= L13_2 and L13_2
      L14_2 = CS
      L14_2 = L14_2.RPG
      L14_2 = L14_2.Client
      L14_2 = L14_2.RogueBuffData
      L15_2 = L13_2.MazeBuffID
      L16_2 = L13_2.MazeBuffLevel
      L14_2 = L14_2(L15_2, L16_2)
      L16_2 = L12_2
      L15_2 = L12_2.setup_view
      L17_2 = L14_2
      L18_2 = false
      L19_2 = false
      L15_2(L16_2, L17_2, L18_2, L19_2)
    else
      L14_2 = L12_2
      L13_2 = L12_2.safe_set_active
      L15_2 = false
      L13_2(L14_2, L15_2)
    end
  end
end
L0_1._setup_select_view_buff = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_effect_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Rogue_Aeon_Show_Hint_1"
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_buff_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = "UIText_Rogue_Aeon_Show_Hint_2"
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.TextmapStatic
  L6_2 = L6_2.GetText
  L7_2 = A2_2.RogueAeonPathName2
  L6_2 = L6_2(L7_2)
  L8_2 = A0_2
  L7_2 = A0_2._get_buff_num
  L9_2 = A1_2.RogueBuffType
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L7_2(L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L4_2 = A1_2
  L3_2 = A1_2.GetBasicBuff
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2._binder
  L4_2 = L4_2.panel_buff_basic
  L5_2 = L4_2
  L4_2 = L4_2.setup_view
  L6_2 = L3_2
  L8_2 = A0_2
  L7_2 = A0_2._is_buff_get
  L9_2 = L3_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.GetRogueData
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2
  L4_2 = L4_2.GetUnlockAeonEnhanceNum
  L4_2 = L4_2(L5_2)
  L5_2 = 0 < L4_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_enhance_buff_root
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_buff_enhance_locked
  L7_2 = L6_2
  L6_2 = L6_2.SafeSetActive
  L8_2 = not L5_2
  L6_2(L7_2, L8_2)
  if not L5_2 then
    return
  end
  L7_2 = A1_2
  L6_2 = A1_2.GetEnhanceBuffs
  L6_2 = L6_2(L7_2)
  L7_2 = ipairs
  L8_2 = A0_2._binder
  L8_2 = L8_2.panels_buff_enhanced
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  for L10_2, L11_2 in L7_2, L8_2, L9_2 do
    L12_2 = L6_2.Count
    if L10_2 <= L12_2 then
      L12_2 = L10_2 - 1
      L12_2 = L6_2[L12_2]
      if L12_2 then
        goto lbl_69
      end
    end
    L12_2 = nil
    ::lbl_69::
    L14_2 = L11_2
    L13_2 = L11_2.setup_view
    L15_2 = L12_2
    L17_2 = A0_2
    L16_2 = A0_2._is_buff_get
    L18_2 = L12_2
    L16_2 = L16_2(L17_2, L18_2)
    L17_2 = true
    L13_2(L14_2, L15_2, L16_2, L17_2)
    L14_2 = L11_2
    L13_2 = L11_2.clear_btn_animation
    L13_2(L14_2)
  end
end
L0_1._setup_menu_view_buff = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAchivedBuffList
  L2_2 = L2_2(L3_2)
  L3_2 = 0
  if L2_2 ~= nil then
    L4_2 = 0
    L5_2 = L2_2.Count
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L2_2[L7_2]
      L10_2 = L8_2
      L9_2 = L8_2.GetRogueBuffType
      L9_2 = L9_2(L10_2)
      if A1_2 == L9_2 then
        L10_2 = L8_2
        L9_2 = L8_2.GetRogueAeonID
        L9_2 = L9_2(L10_2)
        if L9_2 == 0 then
          L3_2 = L3_2 + 1
        end
      end
    end
  end
  return L3_2
end
L0_1._get_buff_num = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if A1_2 == nil then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetAchivedBuffList
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = 0
    L4_2 = L2_2.Count
    L4_2 = L4_2 - 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2[L6_2]
      L8_2 = A1_2.BuffID
      L9_2 = L7_2.BuffID
      if L8_2 == L9_2 then
        L8_2 = A1_2.Level
        L9_2 = L7_2.Level
        if L8_2 <= L9_2 then
          L8_2 = true
          return L8_2
        end
      end
    end
  end
  L3_2 = false
  return L3_2
end
L0_1._is_buff_get = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_buff_basic
  L3_2 = L2_2
  L2_2 = L2_2.get_navi_btn
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L1_2
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = ipairs
  L4_2 = A0_2._binder
  L4_2 = L4_2.panels_buff_enhanced
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    L9_2 = L7_2
    L8_2 = L7_2.get_navi_btn
    L8_2 = L8_2(L9_2)
    L2_2 = L8_2
    if L2_2 ~= nil then
      L9_2 = L7_2
      L8_2 = L7_2.is_active_in_hierarchy
      L8_2 = L8_2(L9_2)
      if L8_2 then
        L8_2 = table
        L8_2 = L8_2.insert
        L9_2 = L1_2
        L10_2 = L2_2
        L8_2(L9_2, L10_2)
      end
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.setup_navigation
  L5_2 = L1_2
  L6_2 = NavigationType
  L6_2 = L6_2.Horizontal
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_navigation = L2_1
return L0_1
