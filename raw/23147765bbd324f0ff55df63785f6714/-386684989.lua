local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Ui.PhoneMessage.PhoneMessageNoticeHintPageBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.MessageModule
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.PlayerModule
L2_1 = "PhoneNotificationsShowDialog_Once"
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "PhoneMessageNoticeHintPage"
L5_1 = G
L5_1 = L5_1.UIController
L3_1 = L3_1(L4_1, L5_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.PhoneMessageNoticeHintPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1.RingingMessageGroupID
  A0_2._group_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.MessageGroupExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._group_id
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.MessageContactsID
  A0_2._contact_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.MessageContactData
  L1_2 = L1_2.GetShownContactRow
  L2_2 = A0_2._contact_id
  L1_2 = L1_2(L2_2)
  A0_2._contact_row = L1_2
end
L3_1.init = L4_1
function L4_1(A0_2)
  local L1_2
end
L3_1._on_load = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._contact_row
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._contact_id
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueClientExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "PhoneMessage_ContactsID_Hero"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L2_2 = L2_2.UintValue
  if L1_2 == L2_2 then
    L1_2 = L1_1.PlayerData
    L1_2 = L1_2.HeroAvatarInfoData
    L2_2 = L1_2
    L1_2 = L1_2.GetCurrentHeroBasicType
    L1_2 = L1_2(L2_2)
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.AvatarExcelTable
    L2_2 = L2_2.GetData
    L3_2 = #L1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L4_2 = A0_2
      L3_2 = A0_2.async_load_sprite_to
      L5_2 = A0_2._binder
      L5_2 = L5_2.img_contact
      L6_2 = L2_2.AvatarSideIconPath
      L3_2(L4_2, L5_2, L6_2)
    end
  else
    L2_2 = A0_2
    L1_2 = A0_2.async_load_sprite_to
    L3_2 = A0_2._binder
    L3_2 = L3_2.img_contact
    L4_2 = A0_2._contact_row
    L4_2 = L4_2.IconPath
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2._add_count_down_timer
  L4_2 = A0_2.exit
  L5_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._count_down_timer = L2_2
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.reset
  L2_2(L3_2)
  L2_2 = A0_2._count_down_timer
  L3_2 = L2_2
  L2_2 = L2_2.start
  L2_2(L3_2)
end
L3_1._setup_view = L4_1
return L3_1
