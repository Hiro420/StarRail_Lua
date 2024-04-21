local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Logic.RedDotModule.Filters.BaseFilter"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MailFilter"
L2_1 = G
L2_1 = L2_1.BaseFilter
L3_1 = G
L0_1 = L0_1(L1_1, L2_1, L3_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "Mail"
  return L1_2
end
L0_1.get_associate_reddot = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.MailModule
  L1_2 = L1_2.Instance
  L2_2 = L1_2
  L1_2 = L1_2.get_origin_mail_data
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L8_2 = L6_2
    L7_2 = L6_2.get_is_expired
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L8_2 = L6_2
      L7_2 = L6_2.is_new
      L7_2 = L7_2(L8_2)
      if L7_2 == true then
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L9_2 = "MailNew"
        L10_2 = L6_2.ID
        L7_2(L8_2, L9_2, L10_2)
      end
      L7_2 = L6_2.IsRead
      if L7_2 ~= true then
        L7_2 = G
        L7_2 = L7_2.RedDotModule
        L7_2 = L7_2.Instance
        L8_2 = L7_2
        L7_2 = L7_2.update_reddot
        L9_2 = "MailRedDot"
        L10_2 = L6_2.ID
        L7_2(L8_2, L9_2, L10_2)
      end
    end
  end
  L2_2 = G
  L2_2 = L2_2.MailModule
  L2_2 = L2_2.Instance
  L2_2 = L2_2.reddot_new_mail
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.RedDotModule
    L2_2 = L2_2.Instance
    L3_2 = L2_2
    L2_2 = L2_2.update_reddot
    L4_2 = "MailRedDot"
    L2_2(L3_2, L4_2)
  end
end
L0_1.refresh = L1_1
return L0_1
