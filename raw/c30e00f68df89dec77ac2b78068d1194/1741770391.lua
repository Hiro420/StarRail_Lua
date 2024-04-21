local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.Achievement.AchievementFinishHintPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AchievementFinishHintPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AchievementModule
L2_1 = "UIText_Achievement_HideDescription"
L3_1 = "UIText_Achievement_Hide1"
L4_1 = "UIText_Achievement_Series1"
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2
  A0_2._data = A3_2
  L4_2 = {}
  A0_2._config_id_list = L4_2
end
L0_1.ctor = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L0_1._on_in_control_action_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_id_list
  L1_2 = #L1_2
  if 0 < L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.btn_root
    L1_2 = L1_2.IsSelectedByController
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_id_list
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L0_1._on_left_stick_button_click = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2._hide_point
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.title_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AchievementTitle
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.desc_text
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AchievementDesc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item1
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.item2
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_rarity
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_static_content
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._update_doing_quest
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_root
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_root
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 then
    A0_2._data = A1_2
  end
  L3_2 = A0_2
  L2_2 = A0_2._update_doing_quest
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.progress
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.CurrentProgress
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.total
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.FinishWay
  L3_2 = L3_2.Progress
  L1_2(L2_2, L3_2)
end
L0_1._update_doing_quest = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = {}
  A0_2._config_id_list = L1_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._data
  L2_2 = L2_2.Reward
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RewardItemIconLite
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLiteBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.item1
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = L1_2[1]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_count
    L5_2 = L1_2[1]
    L5_2 = L5_2.Count
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.hide_item_num
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.item1
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._config_id_list
    L5_2 = L1_2[1]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
  end
  L2_2 = #L1_2
  if 1 < L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.create_panel
    L4_2 = G
    L4_2 = L4_2.RewardItemIconLite
    L5_2 = G
    L5_2 = L5_2.RewardItemIconLiteBinder
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.bind
    L5_2 = A0_2._binder
    L5_2 = L5_2.item2
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.setup_view
    L5_2 = L1_2[2]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.set_count
    L5_2 = L1_2[2]
    L5_2 = L5_2.Count
    L3_2(L4_2, L5_2)
    L4_2 = L2_2
    L3_2 = L2_2.hide_item_num
    L3_2(L4_2)
    L3_2 = A0_2._binder
    L3_2 = L3_2.item2
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetActive
    L5_2 = true
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = A0_2._config_id_list
    L5_2 = L1_2[2]
    L5_2 = L5_2.ItemID
    L3_2(L4_2, L5_2)
  else
    L2_2 = #L1_2
    if L2_2 == 0 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.item2
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.item1
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._set_texts
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._update_rarity
  L2_2(L3_2)
end
L0_1._update_static_content = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.ShowType
  L2_2 = A0_2._binder
  L2_2 = L2_2._hide_point
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ShowType
  L2_2 = L2_2.HiddenDesc
  if L1_2 == L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.QuestStatus
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.KBBBFCIHJPC
    if L2_2 == L3_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.title_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2._data
      L4_2 = L4_2.Row
      L4_2 = L4_2.AchievementTitle
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.desc_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L2_1
      L2_2(L3_2, L4_2)
  end
  else
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.ShowType
    L2_2 = L2_2.Always
    if L1_2 == L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2._hide_point
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.title_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2._data
      L4_2 = L4_2.Row
      L4_2 = L4_2.AchievementTitle
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._data
      L2_2 = L2_2.Row
      L2_2 = L2_2.ParamList
      if L2_2 ~= nil then
        L2_2 = A0_2._data
        L2_2 = L2_2.Row
        L2_2 = L2_2.ParamList
        L2_2 = L2_2.Length
        if 0 < L2_2 then
          L2_2 = {}
          L3_2 = 0
          L4_2 = A0_2._data
          L4_2 = L4_2.Row
          L4_2 = L4_2.ParamList
          L4_2 = L4_2.Length
          L4_2 = L4_2 - 1
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = table
            L7_2 = L7_2.insert
            L8_2 = L2_2
            L9_2 = A0_2._data
            L9_2 = L9_2.Row
            L9_2 = L9_2.ParamList
            L9_2 = L9_2[L6_2]
            L7_2(L8_2, L9_2)
          end
          L3_2 = A0_2._binder
          L3_2 = L3_2.desc_text
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetTextID
          L5_2 = A0_2._data
          L5_2 = L5_2.Row
          L5_2 = L5_2.AchievementDesc
          L6_2 = table
          L6_2 = L6_2.unpack
          L7_2 = L2_2
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.desc_text
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = A0_2._data
        L4_2 = L4_2.Row
        L4_2 = L4_2.AchievementDesc
        L2_2(L3_2, L4_2)
      end
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.title_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = A0_2._data
      L4_2 = L4_2.Row
      L4_2 = L4_2.AchievementTitle
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._data
      L2_2 = L2_2.Row
      L2_2 = L2_2.ParamList
      if L2_2 ~= nil then
        L2_2 = A0_2._data
        L2_2 = L2_2.Row
        L2_2 = L2_2.ParamList
        L2_2 = L2_2.Length
        if 0 < L2_2 then
          L2_2 = {}
          L3_2 = 0
          L4_2 = A0_2._data
          L4_2 = L4_2.Row
          L4_2 = L4_2.ParamList
          L4_2 = L4_2.Length
          L4_2 = L4_2 - 1
          L5_2 = 1
          for L6_2 = L3_2, L4_2, L5_2 do
            L7_2 = table
            L7_2 = L7_2.insert
            L8_2 = L2_2
            L9_2 = A0_2._data
            L9_2 = L9_2.Row
            L9_2 = L9_2.ParamList
            L9_2 = L9_2[L6_2]
            L7_2(L8_2, L9_2)
          end
          L3_2 = A0_2._binder
          L3_2 = L3_2.desc_text
          L4_2 = L3_2
          L3_2 = L3_2.SafeSetTextID
          L5_2 = A0_2._data
          L5_2 = L5_2.Row
          L5_2 = L5_2.AchievementDesc
          L6_2 = table
          L6_2 = L6_2.unpack
          L7_2 = L2_2
          L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
          L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
      end
      else
        L2_2 = A0_2._binder
        L2_2 = L2_2.desc_text
        L3_2 = L2_2
        L2_2 = L2_2.SafeSetTextID
        L4_2 = A0_2._data
        L4_2 = L4_2.Row
        L4_2 = L4_2.AchievementDesc
        L2_2(L3_2, L4_2)
      end
    end
  end
  L2_2 = A0_2._data
  L2_2 = L2_2.Row
  L2_2 = L2_2.Advance
  if L2_2 == 1 then
    L2_2 = A0_2._binder
    L2_2 = L2_2._hide_point
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetActive
    L4_2 = false
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.type_text
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L4_1
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._data
    L2_2 = L2_2.Row
    L2_2 = L2_2.Advance
    if L2_2 == 2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2._hide_point
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetActive
      L4_2 = false
      L2_2(L3_2, L4_2)
      L2_2 = A0_2._binder
      L2_2 = L2_2.type_text
      L3_2 = L2_2
      L2_2 = L2_2.SafeSetTextID
      L4_2 = L3_1
      L2_2(L3_2, L4_2)
    end
  end
end
L0_1._set_texts = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  A0_2._rarity_icon_path = ""
  L1_2 = A0_2._data
  L1_2 = L1_2.Row
  L1_2 = L1_2.Rarity
  if L1_2 == "Low" then
    A0_2._rarity_icon_path = "SpriteOutput/Achievement/AchievementBadge03.png"
  else
    L1_2 = A0_2._data
    L1_2 = L1_2.Row
    L1_2 = L1_2.Rarity
    if L1_2 == "Mid" then
      A0_2._rarity_icon_path = "SpriteOutput/Achievement/AchievementBadge02.png"
    else
      L1_2 = A0_2._data
      L1_2 = L1_2.Row
      L1_2 = L1_2.Rarity
      if L1_2 == "High" then
        A0_2._rarity_icon_path = "SpriteOutput/Achievement/AchievementBadge01.png"
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.rarity_icon
  L4_2 = A0_2._rarity_icon_path
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._update_rarity = L5_1
function L5_1(A0_2, A1_2, A2_2)
  A0_2._refresh_owner = A1_2
  A0_2._refresh_callback = A2_2
end
L0_1.register_refresh_callback = L5_1
return L0_1
