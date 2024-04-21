local L0_1, L1_1, L2_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherSpiritListItem"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.AetherDivideModule
L1_1 = L1_1.AetherOutfitData
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_btn_click
    L0_3(L1_3)
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._callback = A1_2
  A0_2._callback_self = A2_2
end
L0_1.register_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_btn_click
  L1_2(L2_2)
end
L0_1.trigger_click = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_team_mark
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_team_mark = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._spirit_display_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._display_nodes
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_info
  L2_2(L3_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.TutorialSupportModule
  L3_2 = L2_2
  L2_2 = L2_2.SetNodeDynamicKey
  L4_2 = A0_2._binder
  L4_2 = L4_2.root
  L4_2 = L4_2.gameObject
  L5_2 = A0_2._spirit_display_data
  L5_2 = L5_2.ID
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._spirit_display_data
  L1_2 = L1_2.Status
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_collect_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Locked
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_name_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Locked
  L4_2 = L1_2 ~= L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_spirit_type_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_spirit_level_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Unlocked
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.rect_mask_unlock_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Locked
  L4_2 = L1_2 == L4_2
  L2_2(L3_2, L4_2)
end
L0_1._display_nodes = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_spirit
  L4_2 = A0_2._spirit_display_data
  L4_2 = L4_2.Row
  L4_2 = L4_2.DefaultAvatarHeadIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.AetherSpiritTypeExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._spirit_display_data
  L2_2 = L2_2.Row
  L2_2 = L2_2.SpiritType
  L2_2 = #L2_2
  L1_2 = L1_2(L2_2)
  L3_2 = A0_2
  L2_2 = A0_2._async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_spirit_type
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.InventoryModule
  L2_2 = L2_2.GetItemRarityConfig
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.Rarity
  L3_2 = #L3_2
  L2_2 = L2_2(L3_2)
  L4_2 = A0_2
  L3_2 = A0_2._async_load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.img_rarity_bg
  L6_2 = L2_2.FrameItemRarityBgPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Status
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
  L4_2 = L4_2.Locked
  if L3_2 == L4_2 then
    L5_2 = A0_2
    L4_2 = A0_2._setup_unlock_progress_info
    L4_2(L5_2)
  else
    L4_2 = CS
    L4_2 = L4_2.RPG
    L4_2 = L4_2.Client
    L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
    L4_2 = L4_2.Unlocked
    if L3_2 == L4_2 then
      L5_2 = A0_2
      L4_2 = A0_2._setup_spirit_info
      L4_2(L5_2)
    else
      L4_2 = CS
      L4_2 = L4_2.RPG
      L4_2 = L4_2.Client
      L4_2 = L4_2.AetherMonsterAvatarDisplayDataStatus
      L4_2 = L4_2.Forbidden
      if L3_2 == L4_2 then
        L5_2 = A0_2
        L4_2 = A0_2._setup_forbidden_info
        L4_2(L5_2)
      end
    end
  end
end
L0_1._setup_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAetherMonsterAvatar
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_collect_title
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = "UIText_AetherDivide_Spirit_Progress"
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_collect_progress
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.CurrentExp
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.AetherDivideSpiritPromotionExcelTable
  L2_2 = L2_2.GetData
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.ID
  L4_2 = L1_2.Promotion
  L4_2 = L4_2 + 1
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.txt_collect_total_progress
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetText
  L5_2 = L2_2.Exp
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.rect_transform_root
  L3_2 = L3_2.rect
  L4_2 = A0_2._binder
  L4_2 = L4_2.rect_mask_unlock_progress
  L5_2 = CS
  L5_2 = L5_2.UnityEngine
  L5_2 = L5_2.Vector4
  L6_2 = 0
  L7_2 = 0
  L8_2 = 0
  L9_2 = L3_2.height
  L10_2 = L1_2.CurrentExp
  L9_2 = L9_2 * L10_2
  L10_2 = L2_2.Exp
  L9_2 = L9_2 / L10_2
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  L4_2.padding = L5_2
end
L0_1._setup_unlock_progress_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.AvatarName
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.GetAetherMonsterAvatar
  L3_2 = A0_2._spirit_display_data
  L3_2 = L3_2.ID
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_spirit_level
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetText
  L4_2 = L1_2.Promotion
  L2_2(L3_2, L4_2)
  L2_2 = nil
  L3_2 = L1_2.Promotion
  L4_2 = L1_2.MaxPromotion
  if L3_2 < L4_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.GameCore
    L3_2 = L3_2.AetherDivideSpiritPromotionExcelTable
    L3_2 = L3_2.GetData
    L4_2 = A0_2._spirit_display_data
    L4_2 = L4_2.ID
    L5_2 = L1_2.Promotion
    L5_2 = L5_2 + 1
    L3_2 = L3_2(L4_2, L5_2)
    L4_2 = L1_2.CurrentExp
    L5_2 = L3_2.Exp
    L2_2 = L4_2 / L5_2
  else
    L2_2 = 1
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_spirit_level_exp_progress
  L3_2.fillAmount = L2_2
end
L0_1._setup_spirit_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "LimitType_LimitTypeDesc_3"
  L1_2(L2_2, L3_2)
end
L0_1._setup_forbidden_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._spirit_display_data
  L1_2 = L1_2.Status
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.AetherMonsterAvatarDisplayDataStatus
  L2_2 = L2_2.Forbidden
  if L1_2 == L2_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = "LimitType_LimitTypeDesc_3"
    L1_2(L2_2, L3_2)
    return
  end
  L2_2 = A0_2
  L1_2 = A0_2.save_navigation_target
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L3_2 = L3_2.gameObject
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._callback
  if L1_2 ~= nil then
    L1_2 = A0_2._callback_self
    if L1_2 ~= nil then
      L1_2 = A0_2._callback
      L2_2 = A0_2._callback_self
      L3_2 = A0_2._spirit_display_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
    end
  end
end
L0_1._on_btn_click = L2_1
return L0_1
