local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.LevelReward.LevelRewardLevelItemBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "LevelRewardLevelItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
function L2_1(A0_2)
  local L1_2
  A0_2._level = 0
  A0_2._level_data = nil
  A0_2._btn_callback = nil
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L2_2 = L1_2
  L1_2 = L1_2.get_component
  L3_2 = "Rect_Root"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.rect
  L1_2 = L1_2.width
  return L1_2
end
L0_1.get_width = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = A0_2._level_data
  return L1_2
end
L0_1.get_level = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  A0_2._level_data = A1_2
  L2_2 = A1_2.level
  L3_2 = A1_2.is_break
  L4_2 = L1_1.PlayerData
  L4_2 = L4_2.Level
  A0_2._level = L2_2
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Image_LevelUpIcon"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = L3_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "Text_LevelNum"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetText
  L7_2 = ""
  L8_2 = L2_2
  L7_2 = L7_2 .. L8_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._binder
  L6_2 = L5_2
  L5_2 = L5_2.get_component
  L7_2 = "canvas_num"
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = L5_2
  L5_2 = L5_2.SafeSetActive
  L7_2 = not L3_2
  L5_2(L6_2, L7_2)
  L5_2 = L2_2 <= L4_2
  L6_2 = A0_2._binder
  L7_2 = L6_2
  L6_2 = L6_2.get_component
  L8_2 = "canvas_bg"
  L6_2 = L6_2(L7_2, L8_2)
  if L5_2 then
    L7_2 = 1.0
    if L7_2 then
      goto lbl_44
    end
  end
  L7_2 = 0.5
  ::lbl_44::
  L6_2.alpha = L7_2
  L6_2 = A0_2._binder
  L7_2 = L6_2
  L6_2 = L6_2.get_component
  L8_2 = "canvas_num"
  L6_2 = L6_2(L7_2, L8_2)
  if L5_2 then
    L7_2 = 1.0
    if L7_2 then
      goto lbl_55
    end
  end
  L7_2 = 0.5
  ::lbl_55::
  L6_2.alpha = L7_2
  L7_2 = A0_2
  L6_2 = A0_2._bind_btn_callback
  L8_2 = A0_2._binder
  L9_2 = L8_2
  L8_2 = L8_2.get_component
  L10_2 = "Button_Obj"
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A0_2._on_btn_confirm_click
  L6_2(L7_2, L8_2, L9_2)
  L7_2 = A0_2
  L6_2 = A0_2.set_item_state
  L9_2 = A0_2
  L8_2 = A0_2.get_level_state
  L8_2, L9_2, L10_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A0_2
  L6_2 = A0_2.set_item_select
  L8_2 = false
  L6_2(L7_2, L8_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  A0_2._btn_callback = A1_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._btn_callback
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._btn_callback
  L3_2 = A0_2
  L2_2 = A0_2.get_level
  L2_2, L3_2 = L2_2(L3_2)
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2._level_data
  L2_2 = L2_2.is_break
  L3_2 = false
  if A1_2 == "can_fetch" then
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "LockIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "Hook"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "canvas_num"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = not L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Image_LevelUpIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L3_2 = true
  elseif A1_2 == "fetched" then
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "LockIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "Hook"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "canvas_num"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = not L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Image_LevelUpIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
    L3_2 = true
  elseif A1_2 == "locked" then
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "LockIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = true
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "Hook"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "canvas_num"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Image_LevelUpIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
  else
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "LockIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_object
    L6_2 = "Hook"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = false
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "canvas_num"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = not L2_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L5_2 = L4_2
    L4_2 = L4_2.get_component
    L6_2 = "Image_LevelUpIcon"
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L0_1.set_item_state = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L3_2 = L2_2
  L2_2 = L2_2.get_component
  L4_2 = "Button_Animator"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_item_select = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._level
  L2_2 = A0_2._level_data
  L2_2 = L2_2.is_break
  L3_2 = L1_1.PlayerData
  L3_2 = L3_2.Level
  L4_2 = L1_1.PlayerData
  L4_2 = L4_2.WorldLevel
  L5_2 = L3_2 + 5
  L5_2 = L1_2 > L5_2
  if L5_2 then
    L6_2 = "locked"
    return L6_2
  else
    L6_2 = L1_1.PlayerData
    L6_2 = L6_2.GottenLevelRewards
    L8_2 = L6_2
    L7_2 = L6_2.Contains
    L9_2 = L1_2
    L7_2 = L7_2(L8_2, L9_2)
    if L2_2 then
      L8_2 = A0_2._level_data
      L8_2 = L8_2.world_level
      L7_2 = L4_2 >= L8_2
    end
    if not L7_2 then
      if L2_2 then
        L8_2 = "can_break"
        return L8_2
      else
        L8_2 = "can_fetch"
        return L8_2
      end
    else
      L8_2 = "fetched"
      return L8_2
    end
  end
end
L0_1.get_level_state = L2_1
return L0_1
