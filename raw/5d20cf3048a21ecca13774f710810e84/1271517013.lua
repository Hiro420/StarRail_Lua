local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Logic.MailModule.MailData"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.GameCore
L0_1 = L0_1.TextmapExcelTable
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.TimeUtils
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.ItemFactory
L3_1 = G
L3_1 = L3_1.Class
L4_1 = "MailFactory"
L3_1 = L3_1(L4_1)
function L4_1(A0_2)
  local L1_2
end
L3_1.ctor = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.new
  L3_2 = G
  L3_2 = L3_2.MailData
  L2_2 = L2_2(L3_2)
  A0_2._mail_data = L2_2
  A0_2._proto_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._process_baisc_info
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._process_content
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._process_content_params
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._process_attachments
  L2_2(L3_2)
  L2_2 = A0_2._mail_data
  return L2_2
end
L3_1.create_mail = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._mail_data
  L2_2 = A0_2._proto_data
  L2_2 = L2_2.Id
  L1_2.ID = L2_2
  L1_2 = A0_2._mail_data
  L2_2 = A0_2._proto_data
  L2_2 = L2_2.IsRead
  L1_2.IsRead = L2_2
  L1_2 = A0_2._mail_data
  L2_2 = A0_2._proto_data
  L2_2 = L2_2.Time
  L1_2.RecieveTime = L2_2
  L1_2 = A0_2._mail_data
  L2_2 = A0_2._proto_data
  L2_2 = L2_2.ExpireTime
  L1_2.ExpireTime = L2_2
  L1_2 = A0_2._mail_data
  L2_2 = A0_2._proto_data
  L2_2 = L2_2.MailType
  L1_2.MailType = L2_2
end
L3_1._process_baisc_info = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._proto_data
  L1_2 = L1_2.TemplateId
  L1_2 = nil ~= L1_2
  if L1_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.GameCore
    L2_2 = L2_2.SysMailExcelTable
    L2_2 = L2_2.GetData
    L3_2 = A0_2._proto_data
    L3_2 = L3_2.TemplateId
    L2_2 = L2_2(L3_2)
    if nil ~= L2_2 then
      L4_2 = A0_2
      L3_2 = A0_2._load_content_from_config
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
      return
    end
  end
  L2_2 = A0_2._mail_data
  L3_2 = A0_2._proto_data
  L3_2 = L3_2.Sender
  L2_2.Sender = L3_2
  L2_2 = A0_2._mail_data
  L3_2 = A0_2._proto_data
  L3_2 = L3_2.Title
  L2_2.Title = L3_2
  L2_2 = A0_2._mail_data
  L4_2 = A0_2
  L3_2 = A0_2._value_or_default
  L5_2 = A0_2._proto_data
  L5_2 = L5_2.Content
  L6_2 = ""
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2.Content = L3_2
end
L3_1._process_content = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._load_params
  L3_2 = A0_2._proto_data
  L3_2 = L3_2.ParaList
  L1_2 = L1_2(L2_2, L3_2)
  if nil ~= L1_2 then
    L2_2 = #L1_2
    if 0 < L2_2 then
      L3_2 = A0_2
      L2_2 = A0_2._fill_content_params
      L4_2 = L1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L3_1._process_content_params = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._load_attachments
  L3_2 = A0_2._proto_data
  L3_2 = L3_2.Attachment
  L3_2 = L3_2.ItemList_
  L1_2(L2_2, L3_2)
end
L3_1._process_attachments = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if nil == A1_2 then
    L2_2 = nil
    return L2_2
  end
  L2_2 = {}
  L3_2 = 0
  L4_2 = A1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L6_2 + 1
    L9_2 = A0_2
    L8_2 = A0_2._try_get_text_from_textmap
    L10_2 = A1_2[L6_2]
    L8_2 = L8_2(L9_2, L10_2)
    L2_2[L7_2] = L8_2
  end
  return L2_2
end
L3_1._load_params = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if nil ~= A1_2 then
    L2_2 = A0_2._mail_data
    L2_2 = L2_2.Title
    if L2_2 ~= nil then
      L2_2 = A0_2._mail_data
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.StrUtils
      L3_2 = L3_2.Format
      L4_2 = A0_2._mail_data
      L4_2 = L4_2.Title
      L5_2 = unpack
      L6_2 = A1_2
      L5_2, L6_2 = L5_2(L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2.Title = L3_2
    end
    L2_2 = A0_2._mail_data
    L2_2 = L2_2.Content
    if L2_2 ~= nil then
      L2_2 = A0_2._mail_data
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.StrUtils
      L3_2 = L3_2.Format
      L4_2 = A0_2._mail_data
      L4_2 = L4_2.Content
      L5_2 = unpack
      L6_2 = A1_2
      L5_2, L6_2 = L5_2(L6_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2)
      L2_2.Content = L3_2
    end
  end
end
L3_1._fill_content_params = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._mail_data
  L4_2 = A0_2
  L3_2 = A0_2._try_get_text_from_textmap
  L5_2 = A1_2.MailSender
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.Sender = L3_2
  L2_2 = A0_2._mail_data
  L4_2 = A0_2
  L3_2 = A0_2._try_get_text_from_textmap
  L5_2 = A1_2.MailTitle
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.Title = L3_2
  L2_2 = A0_2._mail_data
  L4_2 = A0_2
  L3_2 = A0_2._try_get_text_from_textmap
  L5_2 = A1_2.MailDetail
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.Content = L3_2
end
L3_1._load_content_from_config = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  if nil ~= A1_2 then
    L3_2 = pairs
    L4_2 = A1_2
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    for L6_2, L7_2 in L3_2, L4_2, L5_2 do
      L8_2 = L2_1.CreateDisplayItemData
      L9_2 = L7_2.ItemId
      L10_2 = L7_2.Num
      L11_2 = L7_2.Level
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L3_2 = A0_2._mail_data
  L3_2.MailItems = L2_2
  L4_2 = A0_2
  L3_2 = A0_2._sort_attachments
  L3_2(L4_2)
end
L3_1._load_attachments = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._hcoin_config_id
  if nil == L1_2 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.InventoryModule
    L1_2 = L1_2.GetHCoinConfigID
    L1_2 = L1_2()
    A0_2._hcoin_config_id = L1_2
  end
  L1_2 = table
  L1_2 = L1_2.sort
  L2_2 = A0_2._mail_data
  L2_2 = L2_2.MailItems
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_hcoin
    L4_3 = A0_3.ConfigID
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L2_3 = true
      return L2_3
    end
    L2_3 = A0_2
    L3_3 = L2_3
    L2_3 = L2_3._is_hcoin
    L4_3 = A1_3.ConfigID
    L2_3 = L2_3(L3_3, L4_3)
    if L2_3 then
      L2_3 = false
      return L2_3
    end
    L2_3 = A0_3.Rarity
    L2_3 = #L2_3
    L3_3 = A1_3.Rarity
    L3_3 = #L3_3
    L2_3 = L2_3 > L3_3
    return L2_3
  end
  L1_2(L2_2, L3_2)
end
L3_1._sort_attachments = L4_1
function L4_1(A0_2, A1_2)
  local L2_2
  L2_2 = A0_2._hcoin_config_id
  L2_2 = A1_2 == L2_2
  return L2_2
end
L3_1._is_hcoin = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.TextID
  L2_2 = L2_2.IsValid
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L0_1.GetData
    L3_2 = A1_2
    L2_2 = L2_2(L3_2)
    if L2_2 ~= nil then
      L3_2 = L2_2.Text
      if L3_2 ~= nil then
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.TextmapStatic
        L3_2 = L3_2.GetText
        L4_2 = A1_2
        return L3_2(L4_2)
      end
    end
  end
  return A1_2
end
L3_1._try_get_text_from_textmap = L4_1
function L4_1(A0_2, A1_2, A2_2)
  if A1_2 ~= nil then
    return A1_2
  end
  return A2_2
end
L3_1._value_or_default = L4_1
return L3_1
