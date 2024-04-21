local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLiteBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Logic.LogicUtils.RewardUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RoleTrialActivityDetailInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L2_1 = 1
L3_1 = 1
L4_1 = 1
L5_1 = 1
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L2_1 = {}
L3_1 = 1
L4_1 = 1
L5_1 = 1
L6_1 = 1
L7_1 = 1
L2_1[1] = L3_1
L2_1[2] = L4_1
L2_1[3] = L5_1
L2_1[4] = L6_1
L2_1[5] = L7_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_item_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  A0_2._data = A1_2
  A0_2._cur_data = A2_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.RoleTrialModule
  A0_2._module = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._refresh_view
  L3_2(L4_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_view
  L1_2(L2_2)
end
L0_1.refresh = L3_1
function L3_1(A0_2)
  local L1_2
  L1_2 = A0_2._config_ids
  return L1_2
end
L0_1.get_config_ids = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._cur_data
  L2_2 = L2_2.AvatarID
  L1_2 = L1_2(L2_2)
  A0_2._avatar_row = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rarity
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_bg
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_btn
  L1_2(L2_2)
end
L0_1._refresh_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AvatarBaseTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._avatar_row
  L2_2 = L2_2.AvatarBaseType
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.DamageTypeExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._avatar_row
  L3_2 = L3_2.DamageType
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = A0_2._avatar_row
  L5_2 = L5_2.AvatarName
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.text_profession_name
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_2.BaseTypeText
  L3_2(L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_damage_type
  L6_2 = L2_2.DamageTypeIconPath
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_profession_icon
  L6_2 = L1_2.BaseTypeIconSmall
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._refresh_basic_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._avatar_row
  L1_2 = L1_2.Rarity
  L1_2 = #L1_2
  if L1_2 == 4 then
    L1_2 = L1_1
    if L1_2 then
      goto lbl_10
    end
  end
  L1_2 = L2_1
  ::lbl_10::
  L2_2 = A0_2._binder
  L2_2 = L2_2.star_list_panel
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L0_1._refresh_rarity = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._cur_data
  L1_2 = L1_2.AvatarBackgroundPath
  L3_2 = A0_2
  L2_2 = A0_2._try_load_sprite
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_bg
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = string
  L2_2 = L2_2.gsub
  L3_2 = L1_2
  L4_2 = "TrialRoleBg_"
  L5_2 = "TrialRoleAvatar_"
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = A0_2
  L3_2 = A0_2._try_load_sprite
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_avatar
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = string
  L3_2 = L3_2.gsub
  L4_2 = L2_2
  L5_2 = ".png"
  L6_2 = "_Back.png"
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = A0_2
  L4_2 = A0_2._try_load_sprite
  L6_2 = A0_2._binder
  L6_2 = L6_2.img_avatar_back
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = string
  L4_2 = L4_2.gsub
  L5_2 = L2_2
  L6_2 = ".png"
  L7_2 = "_Front.png"
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._try_load_sprite
  L7_2 = A0_2._binder
  L7_2 = L7_2.img_avatar_front
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L0_1._refresh_bg = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.AssetLoader
  L3_2 = L3_2.Exists
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L5_2 = A1_2
  L4_2 = A1_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L5_2 = A0_2
    L4_2 = A0_2._async_load_sprite_to
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L0_1._try_load_sprite = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.RewardUtils
  L1_2 = L1_2.CreateRewardItemTableSorted
  L2_2 = A0_2._cur_data
  L2_2 = L2_2.RewardID
  L1_2 = L1_2(L2_2)
  A0_2._reward_data = L1_2
  L1_2 = A0_2._module
  L2_2 = L1_2
  L1_2 = L1_2.IsRewardTaken
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.StageID
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._is_reward_taken = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_config_ids
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._reward_data
  L3_2 = #L3_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._refresh_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._module
  L2_2 = L1_2
  L1_2 = L1_2.IsStagePassed
  L3_2 = A0_2._cur_data
  L3_2 = L3_2.StageID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 or L2_2
  if L1_2 then
    L2_2 = A0_2._is_reward_taken
    L2_2 = not L2_2
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_ongoing
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = not L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_reward
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if not L2_2 then
    L3_2 = A0_2._binder
    L3_2 = L3_2.text_onging
    L4_2 = L3_2
    L3_2 = L3_2.SafeSetTextID
    L5_2 = A0_2._is_reward_taken
    if L5_2 then
      L5_2 = "UIText_AvatarDemo_RewardReceive"
      if L5_2 then
        goto lbl_32
      end
    end
    L5_2 = "UIText_ActivityFight_NotFinish"
    ::lbl_32::
    L3_2(L4_2, L5_2)
  end
end
L0_1._refresh_btn = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L5_2 = A0_2._reward_data
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2.ItemID
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2.Count
  L9_2 = nil
  L10_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_attachment_getted
  L8_2 = A0_2._is_reward_taken
  L6_2(L7_2, L8_2)
  L6_2 = L5_2.UID
  if L6_2 ~= nil then
    L6_2 = L5_2.UID
    if L6_2 ~= 0 then
      L7_2 = L4_2
      L6_2 = L4_2.set_count_display
      L8_2 = false
      L6_2(L7_2, L8_2)
    end
  end
  return L3_2
end
L0_1._on_reward_item_changed = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  A0_2._config_ids = L1_2
  L1_2 = ipairs
  L2_2 = A0_2._reward_data
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L6_2 = A0_2._config_ids
    L7_2 = A0_2._config_ids
    L7_2 = #L7_2
    L7_2 = L7_2 + 1
    L8_2 = L5_2.ItemID
    L6_2[L7_2] = L8_2
  end
end
L0_1._refresh_config_ids = L3_1
return L0_1
