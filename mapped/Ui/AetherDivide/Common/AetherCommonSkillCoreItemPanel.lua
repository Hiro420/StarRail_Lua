local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.AetherDivide.AetherOutFit.AetherSpiritUtilities.AetherSpiritUtils"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AetherCommonSkillCoreItemPanel"
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
  end
  L1_2.onSelectTrigger = L2_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_status
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.canvas_skill_icon
  L1_2.alpha = 1
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
  L4_2 = A1_2 ~= nil
  L2_2(L3_2, L4_2)
  if A1_2 ~= nil then
    L2_2 = A0_2._binder
    L2_2 = L2_2.txt_selected_index_num
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetText
    L4_2 = A1_2.SlotIndex
    L2_2(L3_2, L4_2)
  end
end
L0_1.set_selected_slot = L2_1
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
  L2_2 = L2_2.txt_desc_short
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_long
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_simple_desc_open = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_recommend
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_recommend = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  A0_2._skill_core_data = A1_2
  A0_2._spirit_data = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_belong_spirit_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_info
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._bind_reddot
  L3_2(L4_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.GlobalVars
  L3_2 = L3_2.s_ModuleManager
  L3_2 = L3_2.TutorialSupportModule
  L4_2 = L3_2
  L3_2 = L3_2.SetNodeDynamicKey
  L5_2 = A0_2._binder
  L5_2 = L5_2.root
  L5_2 = L5_2.gameObject
  L6_2 = A0_2._skill_core_data
  L6_2 = L6_2.ConfigID
  L3_2(L4_2, L5_2, L6_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_blue
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 == 1
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_purple
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 ~= 1
  L2_2(L3_2, L4_2)
end
L0_1.set_rarity = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_belong_spirit
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.BelongAetherMonsterAvatarID
  L3_2 = L3_2 ~= 0
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_equipped
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.BelongAetherMonsterAvatarID
  L4_2 = A0_2._spirit_data
  L4_2 = L4_2.ID
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._skill_core_data
  L1_2 = L1_2.BelongAetherMonsterAvatarID
  if L1_2 ~= 0 then
    L1_2 = L1_1
    L2_2 = L1_2
    L1_2 = L1_2.GetAetherMonsterAvatar
    L3_2 = A0_2._skill_core_data
    L3_2 = L3_2.BelongAetherMonsterAvatarID
    L1_2 = L1_2(L2_2, L3_2)
    L3_2 = A0_2
    L2_2 = A0_2._async_load_sprite_to
    L4_2 = A0_2._binder
    L4_2 = L4_2.img_belong_spirit
    L5_2 = L1_2.Row
    L5_2 = L5_2.SideAvatarHeadIconPath
    L2_2(L3_2, L4_2, L5_2)
  end
end
L0_1._setup_belong_spirit_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.PassiveSkillName
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_skill_icon
  L4_2 = A0_2._skill_core_data
  L4_2 = L4_2.SkillIconPath
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_rarity
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.SkillRarity
  L1_2(L2_2, L3_2)
  L1_2 = {}
  L2_2 = 0
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.SimpleParamArray
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._skill_core_data
    L8_2 = L8_2.SimpleParamArray
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_short
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._skill_core_data
  L4_2 = L4_2.SimplePassiveSkillDesc
  L5_2 = unpack
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L2_2 = {}
  L1_2 = L2_2
  L2_2 = 0
  L3_2 = A0_2._skill_core_data
  L3_2 = L3_2.ParamArray
  L3_2 = L3_2.Length
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = table
    L6_2 = L6_2.insert
    L7_2 = L1_2
    L8_2 = A0_2._skill_core_data
    L8_2 = L8_2.ParamArray
    L8_2 = L8_2[L5_2]
    L6_2(L7_2, L8_2)
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc_long
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A0_2._skill_core_data
  L4_2 = L4_2.PassiveSkillDesc
  L5_2 = unpack
  L6_2 = L1_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L0_1._setup_info = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = G
  L1_2 = L1_2.RedDotModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.bind_reddot
  L3_2 = "AetherSkillCoreItemNew"
  L4_2 = A0_2._skill_core_data
  L4_2 = L4_2.ConfigID
  L5_2 = A0_2
  L6_2 = A0_2._binder
  L6_2 = L6_2.node_reddot
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
L0_1._bind_reddot = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
      L3_2 = A0_2._skill_core_data
      L4_2 = A0_2
      L1_2(L2_2, L3_2, L4_2)
  end
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_show
    L2_2 = "Ui.Common.ItemDetailDialog"
    L1_2 = L1_2(L2_2)
    L3_2 = L1_2
    L2_2 = L1_2.setup_view_by_item
    L4_2 = A0_2._skill_core_data
    L2_2(L3_2, L4_2)
  end
  L1_2 = A0_2._skill_core_data
  L2_2 = L1_2
  L1_2 = L1_2.SetIsNew
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_click = L2_1
return L0_1
