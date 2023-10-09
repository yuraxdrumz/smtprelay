package html

import (
	"io"
	"mime/quotedprintable"
	"strings"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestImageSrc(t *testing.T) {
	// body := `<div dir=3D"ltr">Hey, check this out<div><br></div><div><p style=3D"color:b=
	// lack;font-size:15px">=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=90<br a=
	// ria-hidden=3D"true">=E2=94=82=C2=A0<a href=3D"http://scpxth.xyz/" target=3D=
	// "_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-style:inherit=
	// ;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit;line-heig=
	// ht:inherit;font-family:inherit;font-size-adjust:inherit;font-kerning:inheri=
	// t;font-variant-alternates:inherit;font-variant-ligatures:inherit;font-varia=
	// nt-numeric:inherit;font-variant-east-asian:inherit;font-feature-settings:in=
	// herit;margin:0px;padding:0px;vertical-align:baseline">scpxth.xyz</a>=C2=A0=
	// =C2=A0=C2=A0 =E2=94=82<br aria-hidden=3D"true">=E2=94=94=E2=94=80=E2=94=80=
	// =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
	// =94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98<br aria-hidden=3D"true"=
	// >=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
	// =80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90<br aria-hidden=3D"true">=
	// =E2=94=82 research.cynet.online =E2=94=82<br aria-hidden=3D"true">=E2=94=82=
	// =C2=A0<a href=3D"http://slb.cynet.com/" target=3D"_blank" rel=3D"noopener n=
	// oreferrer" style=3D"border:0px;font-style:inherit;font-variant-caps:inherit=
	// ;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inh=
	// erit;font-size-adjust:inherit;font-kerning:inherit;font-variant-alternates:=
	// inherit;font-variant-ligatures:inherit;font-variant-numeric:inherit;font-va=
	// riant-east-asian:inherit;font-feature-settings:inherit;margin:0px;padding:0=
	// px;vertical-align:baseline">slb.cynet.com</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
	// =C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hidden=3D"true">=E2=94=82=C2=A0<a href=
	// =3D"http://link.sbstck.com/" target=3D"_blank" rel=3D"noopener noreferrer" =
	// style=3D"border:0px;font-style:inherit;font-variant-caps:inherit;font-stret=
	// ch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;font-s=
	// ize-adjust:inherit;font-kerning:inherit;font-variant-alternates:inherit;fon=
	// t-variant-ligatures:inherit;font-variant-numeric:inherit;font-variant-east-=
	// asian:inherit;font-feature-settings:inherit;margin:0px;padding:0px;vertical=
	// -align:baseline">link.sbstck.com</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
	// =E2=94=82<br aria-hidden=3D"true">=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=
	// =94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
	// =80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
	// =E2=94=80=E2=94=80=E2=94=80=E2=94=98<br aria-hidden=3D"true">=E2=94=8C=E2=
	// =94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
	// =E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90<br aria-hid=
	// den=3D"true">=E2=94=82=C2=A0<a href=3D"http://act.qasimforcongress.org/" ta=
	// rget=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-style:=
	// inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit;li=
	// ne-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kerning=
	// :inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;fon=
	// t-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-sett=
	// ings:inherit;margin:0px;padding:0px;vertical-align:baseline">act.qasimforco=
	// ngress.org</a>=C2=A0=E2=94=82</p><br class=3D"gmail-Apple-interchange-newli=
	// ne" style=3D"color:rgb(0,0,0)"><br class=3D"gmail-Apple-interchange-newline=
	// "><div><br></div><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
	// lass=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong=
	//  class=3D"gmail_sendername" dir=3D"auto">Honey</strong> <span dir=3D"auto">=
	// &lt;<a href=3D"mailto:insiderdeals@my.joinhoney.com">insiderdeals@my.joinho=
	// ney.com</a>&gt;</span><br>Date: Wed, Oct 4, 2023 at 8:06=E2=80=AFPM<br>Subj=
	// ect: Big News from PayPal Honey!=E2=80=AF=F0=9F=93=A3<br>To:  &lt;<a href=
	// =3D"mailto:yurik1776@gmail.com">yurik1776@gmail.com</a>&gt;<br></div><br><b=
	// r><div class=3D"msg44490807107789003"><u></u>            <div class=3D"m_44=
	// 490807107789003em_body" style=3D"margin:0px auto;padding:0px" bgcolor=3D"#f=
	// fffff">
	// <div style=3D"color:transparent;opacity:0;font-size:0px;border:0;max-height=
	// :1px;width:1px;margin:0px;padding:0px;border-width:0px!important;display:no=
	// ne!important;line-height:0px!important"><img border=3D"0" width=3D"1" heigh=
	// t=3D"1" src=3D"http://links1.joinhoney.com/q/A0ngOcZbzwzT_2ngbr1B5A~~/AAQ-S=
	// gA~/RgRnACCcPVcDc3BjQgplFJybHWWPImxMUhN5dXJpazE3NzZAZ21haWwuY29tWAQAAAAA" a=
	// lt=3D""></div>
	// <span style=3D"color:transparent;display:none;opacity:0;height:0;width:0;fo=
	// nt-size:0">Honey is on=E2=80=AFyour iPhone,=E2=80=AFgrab those sweet Honey =
	// savings=E2=80=AFat your convenience</span><img src=3D"https://links.joinhon=
	// ey.com/e/eo?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a3=
	// 9a4bcf37bdbd64e7&amp;_e=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4=
	// RRZ7dureRSYWwGZ0RyPFEBqWiCMFBgvISu_H_-S82oV6A8pZaHkghJDwdPJspWqt3F6Fx9ZsfNA=
	// Y92yIxx6hLvWXUad_X3oPnxPBA%3D%3D" style=3D"border:0;width:1px;height:1px;bo=
	// rder-width:0px!important;display:none!important;line-height:0!important" wi=
	// dth=3D"1" height=3D"1"> <span style=3D"color:transparent;display:none;heigh=
	// t:0;max-height:0;max-width:0;opacity:0;overflow:hidden;width:0">  =CD=8F =
	// =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
	//  =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F=
	//  =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=
	// =8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=
	// =8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =
	// =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =
	// =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
	// =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F=
	//  =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F=
	//  =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=
	// =8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=
	// =8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =
	// =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =
	// =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
	//  =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F </span> <table widt=
	// h=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" class=3D"m_4449=
	// 0807107789003em_full_wrap" bgcolor=3D"#ffffff"> <tbody><tr> <td align=3D"ce=
	// nter" valign=3D"top"><table align=3D"center" width=3D"600" border=3D"0" cel=
	// lspacing=3D"0" cellpadding=3D"0" class=3D"m_44490807107789003em_main_table"=
	//  style=3D"width:600px"> <tbody><tr> <td align=3D"center" valign=3D"top"><ta=
	// ble cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:1=
	// 00%"> <tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"cente=
	// r" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444908071077=
	// 89003em_main_table" style=3D"width:600px;table-layout:fixed" width=3D"600">=
	//  <tbody><tr> <td height=3D"20" style=3D"font-size:1px;line-height:1px;heigh=
	// t:20px">=C2=A0</td> </tr> <tr> <td align=3D"center" bgcolor=3D"#ffffff" val=
	// ign=3D"top" class=3D"m_44490807107789003em_aside15"><table align=3D"center"=
	//  border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><t=
	// r> <td align=3D"center" valign=3D"top"><table align=3D"center" border=3D"0"=
	//  cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td align=
	// =3D"center" valign=3D"top"><table align=3D"center" border=3D"0" cellpadding=
	// =3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td align=3D"left" val=
	// ign=3D"top"><table align=3D"left" border=3D"0" cellpadding=3D"0" cellspacin=
	// g=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:120px" width=
	// =3D"120"> <tbody><tr> <td align=3D"left" valign=3D"top"><a href=3D"https://=
	// links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D=
	// 2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4E=
	// eDHDdrEoK8q4aAZ6WhOFBC55Ng4LpELLeKmOdDIhYFeZgIUUUV4oJPS4lMlxA98DL4Z1h6_hHQ0=
	// 3PCqe4CwARWQOrCjJf-e4ghTvecosjHRquIbjCA33Ab60X0c9sMrbwx0E-iJr9atCuuCpRObftR=
	// aauIZOk7M2LJtsofL6eymdk9AaQxPaSnLvDETP0ZLJ9cvULGx6-8KCRBIEpi2SSEqOcGLNQSIuN=
	// PaOvM3Z6vD9pzEb7EflQ%3D%3D" style=3D"text-decoration:none" target=3D"_blank=
	// "><img alt=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/e=
	// mail/PayPal-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120p=
	// x" width=3D"120"></a></td> </tr> </tbody></table></td> <td align=3D"center"=
	//  valign=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cell=
	// spacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;=
	// padding-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font=
	// -size:1px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"=
	// right" style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size=
	// :14px;color:#212121;line-height:18px"><a href=3D"https://links.joinhoney.co=
	// m/u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a=
	// 4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK_xoU71Qfe=
	// zzajlz0IVVxvqJWKAp7O0EJ_xLAvlJaPoXlVGYKUNqheOZkbtusiRaOonqx5Oy56wOmDritUQ-a=
	// RfhlE8bfNtJvJeaADS6nJRhplyTNKfhbSb_7hJyR1FsWDZ-JqgnvVy0Un9Jkik0hLFGj-YTuTO-=
	// 7NGsiB-YsXIQiqYZuhaw04SJOfrHhYHzwGfMBXOLbENFNbQDA2YZAgrOiHEM3DqTn_hetiMUDeD=
	// hPkVTTvhBPkjV-6z_l3bUh4%3D" style=3D"text-decoration:none;color:#212121;fon=
	// t-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" border=3D"0" sr=
	// c=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/trophy_rewards_c=
	// ircle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"> PayPal Rewa=
	// rds Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"font-family:Su=
	// isseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#212121;line-heigh=
	// t:18px"><a href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404=
	// 887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv=
	// 0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK_xoU71Qfezzajlz0IVVxvqJWKAp7O0EJ_xLAvlJ=
	// aPoXlVGYKUNqheOZkbtusiRaOonqx5Oy56wOmDritUQ-aRfhlE8bfNtJvJeaADS6nJRhn-Po1W1=
	// wT-MU2OHZUJThEjI09U43PHfMxHvD_lKDYvfMiwcHohKXkRVNeZaxyjNan4oICrNvdliQJ36KgW=
	// NoWuN1VSI5H7ptRd7srwnUDTTYRyJl7WmUDteBUsBWw50UWlHfFtWvQ7l_SnRztAX9pk%3D" st=
	// yle=3D"text-decoration:none;color:#212121;font-weight:bold" target=3D"_blan=
	// k">366 points</a></td> </tr> </tbody></table> </td> </tr> </tbody></table><=
	// /td> </tr> <tr> <td height=3D"10" style=3D"font-size:1px;line-height:1px;he=
	// ight:10px">=C2=A0</td> </tr> </tbody></table></td> </tr> </tbody></table></=
	// td> </tr> </tbody></table></td> </tr> </tbody></table>  <table cellpadding=
	// =3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border:0px"=
	// > <tbody><tr> <td> <table bgcolor=3D"#003381" border=3D"0" cellpadding=3D"0=
	// " cellspacing=3D"0" class=3D"m_44490807107789003em_full_wrap" width=3D"100%=
	// "> <tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"center" =
	// border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444908071077890=
	// 03em_main_table" style=3D"width:600px;table-layout:fixed" width=3D"600"> <t=
	// body><tr> <td align=3D"center" bgcolor=3D"#003381" class=3D"m_4449080710778=
	// 9003em_aside15" style=3D"padding:0px 20px" valign=3D"top"><table align=3D"c=
	// enter" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tb=
	// ody><tr> <td class=3D"m_44490807107789003em_h20" height=3D"40" style=3D"fon=
	// t-size:1px;line-height:1px;height:40px">=C2=A0</td> </tr> <tr> <td align=3D=
	// "center" class=3D"m_44490807107789003em_defaultlink m_44490807107789003mobi=
	// le-font-size" style=3D"font-family:Pangea,Eina03,BlinkMacSystemFont,Segoe U=
	// I,Roboto,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe =
	// UI Symbol;font-size:50px;line-height:54px;color:#ffffff;font-weight:500;let=
	// ter-spacing:0px" valign=3D"top">You asked for it: PayPal Honey goes mobile.=
	//  </td> </tr> <tr> <td class=3D"m_44490807107789003em_hide" height=3D"20" st=
	// yle=3D"font-size:1px;line-height:1px;height:20px">=C2=A0</td> </tr> </tbody=
	// ></table></td> </tr> </tbody></table></td> </tr> <tr> <td align=3D"center" =
	// valign=3D"top"><table align=3D"center" border=3D"0" cellpadding=3D"0" cells=
	// pacing=3D"0" class=3D"m_44490807107789003em_main_table" style=3D"width:600p=
	// x;table-layout:fixed" width=3D"600"> <tbody><tr> <td align=3D"center" bgcol=
	// or=3D"#003381" class=3D"m_44490807107789003em_asideall" style=3D"padding:0p=
	// x 80px" valign=3D"top"><table align=3D"center" border=3D"0" cellpadding=3D"=
	// 0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td align=3D"center" class=
	// =3D"m_44490807107789003em_defaultlink" style=3D"font-family:SuisseIntl,Helv=
	// etica,Arial,sans-serif;font-size:16px;line-height:24px;color:#ffffff" valig=
	// n=3D"top">Honey delivers again. Add Honey to your iPhone and save on the go=
	//  while you=E2=80=99re shopping. </td> </tr> <tr> <td class=3D"m_44490807107=
	// 789003em_h20" height=3D"20" style=3D"font-size:1px;line-height:1px;height:2=
	// 0px">=C2=A0</td> </tr> <tr align=3D"center"> <td align=3D"center"><table al=
	// ign=3D"center" width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D=
	// "0"> <tbody><tr> <td><table class=3D"m_44490807107789003honey-button" align=
	// =3D"center" border=3D"0" cellspacing=3D"0" cellpadding=3D"0"> <tbody><tr> <=
	// td align=3D"center" class=3D"m_44490807107789003em_defaultlink" style=3D"bo=
	// rder-radius:3px" bgcolor=3D"#F26C25" valign=3D"middle"><a href=3D"https://l=
	// inks.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2=
	// d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL1Y=
	// WT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsxoh=
	// T_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc545Z=
	// kqSSOMJreTdjV_Azz4391qeOZb5z9GC6QromIgry30WR5BroD4OB32KRGhND2D_1hemH8jJ4u5G=
	// SZ-dV-E-RAAraZl_oSFkp3FYXttIuP2Dx5aR3I0TzSskj4KgYUH0mOne21r6ffxOtMfqur3Rh5W=
	// vH3Wx98w%3D%3D" style=3D"font-size:17px;font-family:Helvetica,Arial,sans-se=
	// rif;color:#ffffff;text-decoration:none;text-decoration:none;border-radius:3=
	// px;padding:15px 45px;border:1px solid #f26c25;display:inline-block" target=
	// =3D"_blank"><span class=3D"m_44490807107789003hide-desktop" style=3D"displa=
	// y:none">Get Honey on mobile</span><span class=3D"m_44490807107789003hide-mo=
	// bile" style=3D"display:block">Learn More</span></a></td> </tr> </tbody></ta=
	// ble></td> </tr> </tbody></table></td> </tr> </tbody></table></td> </tr> </t=
	// body></table></td> </tr> <tr> <td align=3D"center" valign=3D"top"><table al=
	// ign=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_=
	// 44490807107789003em_main_table" style=3D"width:600px" width=3D"600"> <tbody=
	// ><tr> <td class=3D"m_44490807107789003em_hide" height=3D"20" style=3D"font-=
	// size:1px;line-height:1px;height:20px">=C2=A0</td> </tr> <tr> <td align=3D"c=
	// enter" class=3D"m_44490807107789003em_full_img"><a href=3D"https://links.jo=
	// inhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f8=
	// 2c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL1YWT1X1AQ=
	// 65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsxohT_MNhXg=
	// 2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc545ZkqSSOMJ=
	// rolBi0p-vHjo44n3Pbo5YCFeR6cEJOqvjo3YYpjhD9WeJVIkTSw_R2XFDeUpEmuMywWVbrrxMNw=
	// mYovastYCDY-gDY66kH2x4mA5qWA85fwwIeIWMM37nMTv0Q2_ZEn_WR3Z3aHEPcRwlgiur0BCnx=
	// g%3D%3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get H=
	// oney" src=3D"https://cdn.joinhoney.com/images/email/mobile/ios-mobile-ext/M=
	// SE-blue.gif" style=3D"width:600px;padding:0px;text-align:center;display:blo=
	// ck;line-height:50%;border:0!important;outline:none!important" width=3D"600"=
	// ></a></td> </tr> </tbody></table></td> </tr> </tbody></table></td> </tr> </=
	// tbody></table> <table bgcolor=3D"#EEEEEE" border=3D"0" cellpadding=3D"0" ce=
	// llspacing=3D"0" class=3D"m_44490807107789003em_full_wrap" width=3D"100%"> <=
	// tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"center" bord=
	// er=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em=
	// _main_table" style=3D"width:600px" width=3D"600"> <tbody><tr> <td class=3D"=
	// m_44490807107789003em_h20" height=3D"20" style=3D"font-size:1px;line-height=
	// :1px;height:20px">=C2=A0</td> </tr> <tr> <td align=3D"center"><a href=3D"ht=
	// tps://links.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&amp=
	// ;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-=
	// H0rkL1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca=
	// 8jCsxohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP=
	// 3nc545ZkqSSOMJrRnKZD3ge8UhUMuOcXpUlg8i3C-k0vH_RsQwHuDwbvx1XX7g0MuE0ZDek0jr6=
	// kWyUenEGFwH-t3-g4cMgozYuGUNqmSFnuk57kCWtuJjCb64c8vdQmEiAau6Y33YO18XKLboDerj=
	// tmo5Eqe3lrPcfDQ%3D%3D" style=3D"text-decoration:none" target=3D"_blank"><im=
	// g alt=3D"App Store" src=3D"https://cdn.joinhoney.com/images/email/mobile/io=
	// s-mobile-ext/app_store.png" style=3D"width:180px;padding:0px;text-align:cen=
	// ter;display:block;line-height:50%;border:0!important;outline:none!important=
	// " width=3D"180"></a></td> </tr> </tbody></table></td> </tr> <tr> <td align=
	// =3D"center" valign=3D"top"> <table align=3D"center" border=3D"0" cellpaddin=
	// g=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_main_table" style=
	// =3D"width:600px" width=3D"600"> <tbody><tr> <td align=3D"center" style=3D"p=
	// adding:0px 10px" valign=3D"top"><table align=3D"center" border=3D"0" cellpa=
	// dding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td height=3D"10"=
	//  style=3D"font-size:1px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr>=
	//  <td align=3D"center" class=3D"m_44490807107789003em_defaultlink m_44490807=
	// 107789003em_center" style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-se=
	// rif;font-size:12px;line-height:16px;color:#757575;text-align:center" valign=
	// =3D"top">The Apple logo is a registered trademark of Apple Inc. </td> </tr>=
	//  <tr> <td height=3D"10" style=3D"font-size:1px;line-height:1px;height:10px"=
	// >=C2=A0</td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
	// _defaultlink m_44490807107789003em_center" style=3D"font-family:SuisseIntl,=
	// Helvetica,Arial,sans-serif;font-size:17px;line-height:24px;color:#757575;te=
	// xt-align:center" valign=3D"top">Learn more about Honey for mobile Safari <a=
	//  href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80=
	// fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3=
	// _SN70HrF4IxD7HvYGdin44cRPngqBnm0CK24I9EtGUYKzAuP91vrWRTTCcXPyj_DVy0y4oNJvUU=
	// Pfbd-sTHsZge6YaXzlNEI0Z6O-PfNcSt0MvdlekGkM_4oPug2xKmEVddKliuzRNX8H7hpXsN5dp=
	// fH0FqFLy3lbWOabMtW1kUoibwFKwo-T_JoNVKU4ta2VWEItXz5WphDJw1aJbGBi3_-LO1aDmEjF=
	// gOqYpe4oreXLOAuTyv2OVdXBlOe83raIiEAcpmQUVjyL2nUxWk7x8mqhqKkuu5AHKfXxBXkbrdK=
	// aiuCohRh-awswcC3FfO09j0iOQ%3D%3D" style=3D"text-decoration:underline;color:=
	// #757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:17px;li=
	// ne-height:24px" target=3D"_blank">here</a>. </td> </tr> <tr> <td class=3D"m=
	// _44490807107789003em_h20" height=3D"20" style=3D"font-size:1px;line-height:=
	// 1px;height:20px">=C2=A0</td> </tr><tr> <td height=3D"1" style=3D"height:1px=
	// ;background-color:#bdbdbd"></td> </tr> <tr> <td class=3D"m_4449080710778900=
	// 3em_h20" height=3D"20" style=3D"font-size:1px;line-height:1px;height:20px">=
	// =C2=A0</td> </tr> </tbody></table></td> </tr> </tbody></table></td></tr></t=
	// body></table>  <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" st=
	// yle=3D"min-width:100%"> <tbody><tr> <td> <table bgcolor=3D"#eeeeee" border=
	// =3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_f=
	// ull_wrap" width=3D"100%"> <tbody><tr> <td align=3D"center" valign=3D"top"> =
	// <table align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" cl=
	// ass=3D"m_44490807107789003em_main_table" style=3D"width:600px" width=3D"600=
	// "> <tbody><tr> <td height=3D"15" style=3D"font-size:1px;line-height:1px;hei=
	// ght:15px" class=3D"m_44490807107789003em_hide">=C2=A0</td> </tr>   <tr> <td=
	//  bgcolor=3D"#eeeeee" class=3D"m_44490807107789003em_asideall" style=3D"padd=
	// ing:15px 10px 0px" valign=3D"top"><table align=3D"center" border=3D"0" cell=
	// padding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td valign=3D"t=
	// op"><table align=3D"left" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
	// class=3D"m_44490807107789003em_wrapper" style=3D"width:380px" width=3D"380"=
	// > <tbody><tr> <td valign=3D"top"><table align=3D"left" border=3D"0" cellpad=
	// ding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=
	// =3D"width:188px" width=3D"188"> <tbody><tr> <td align=3D"center" class=3D"m=
	// _44490807107789003em_defaultlink m_44490807107789003footer-nav" style=3D"fo=
	// nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:16px;color:#61616=
	// 1;text-align:center" valign=3D"top"><a href=3D"https://links.joinhoney.com/=
	// u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a4b=
	// cf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK9DamdwWRpR2=
	// gSmHh0zA99ijpIcFEfG8c4Q6p0JoHy1HpexGpGG6lRcC1qMjlgfxKrB3thFjB4w-cPg4WNqxMjS=
	// MF0L39NnNQ2L3psxQ5Dy5W479ZIgoUlHUKvL7TwJnURtlOT9nlUSNXK1S9HVFxFd9RzCKMh-AX9=
	// pp7akAwq6qfMGSIqtSzZoNvoHzPAszvlLGrK_HkdxptjSKX3MDId8u45qiGIx4re2qRfrOwG6ow=
	// %3D%3D" style=3D"text-decoration:none;color:#616161;display:block" target=
	// =3D"_blank">Explore</a></td> </tr> <tr> <td class=3D"m_44490807107789003hid=
	// e-desktop" height=3D"1" style=3D"height:1px;background-color:#bdbdbd"></td>=
	//  </tr> </tbody></table>  <table align=3D"right" border=3D"0" cellpadding=3D=
	// "0" cellspacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"widt=
	// h:188px" width=3D"188"> <tbody><tr> <td class=3D"m_44490807107789003hide-de=
	// sktop" height=3D"15" style=3D"height:15px"></td> </tr> <tr> <td align=3D"ce=
	// nter" class=3D"m_44490807107789003em_defaultlink m_44490807107789003footer-=
	// nav" style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:1=
	// 6px;color:#616161;text-align:center" valign=3D"top"><a href=3D"https://link=
	// s.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45=
	// b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHD=
	// drEoK8Udk5OI6QXB2uxgYKgB08AYCjG_hQxE5Fdes8WLh2JcH2BjL30Ui3Ruv7JCAINcDw5rOW5=
	// FvFw7kR81Hu9el1yuHInI1_88p-w3cT9j0Ohk16TtT7KJjl73BuGpStpImKZmaG6Iwm-EJLDmR6=
	// izTG0Bk91O7TOFOkWel750rfFc5KVrITyUlH-hRrWV4Z9wiTQq3fYtH00bY9SvjqK6zWxJ1EG9q=
	// 9zn6_kYl6K-aGqVA%3D%3D" style=3D"text-decoration:none;color:#616161;display=
	// :block" target=3D"_blank">Droplist</a></td> </tr> </tbody></table></td> </t=
	// r> <tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D=
	// "height:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table =
	// align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m=
	// _44490807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><=
	// tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"he=
	// ight:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_444908071077890=
	// 03em_defaultlink m_44490807107789003footer-nav" style=3D"font-family:Suisse=
	// Intl,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:cen=
	// ter" valign=3D"top"><a href=3D"https://links.joinhoney.com/u/click?_t=3D706=
	// 57193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp=
	// ;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK-gEAIy5Ed17a_e_7MDOJFaL7VeL=
	// voBwir6lAUU0aeryhWEnwM_Tu0fpeYo-nE-WC9UDnYynqqvg-ElbwQI3swf8AAVXx9W5gT7hjuY=
	// Z6uvQGIEov3LrSWibvF25hkqixzuBOPGmZrrqzRJQ1mbP7LRTom9yCoUxsV3NJW4XIn_1FRKeES=
	// IbzywbtoS8OtnmLLtcDDszehsk2rk4uF6_nW-VZl8PIPKydbnWhquNlnWnHcKM7DOVqZPX-3T26=
	// oZbkM%3D" style=3D"text-decoration:none;color:#616161;display:block" target=
	// =3D"_blank">Rewards</a></td> </tr> <tr> <td class=3D"m_44490807107789003hid=
	// e-desktop" height=3D"1" style=3D"height:1px;background-color:#bdbdbd"></td>=
	//  </tr> </tbody></table></td> </tr> </tbody></table></td> </tr>   </tbody></=
	// table></td> </tr> </tbody></table> </td> </tr> </tbody></table>  <table cel=
	// lpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;bor=
	// der:10px solid #eeeeee"> <tbody><tr> <td><table cellpadding=3D"0" cellspaci=
	// ng=3D"0" width=3D"100%" style=3D"background-color:#eeeeee"> <tbody><tr> <td=
	//  height=3D"40" style=3D"font-size:1px;line-height:1px;height:40px" class=3D=
	// "m_44490807107789003em_h20">=C2=A0</td> </tr> <tr> <td align=3D"center"> <a=
	//  href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80=
	// fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3=
	// _SN70OTUD-PUbWul4mnWSepyWwn1Mo5BAzp8Z9J-T736mVlKRWLFtZDyIBo48Z8OkYPhnfntXnn=
	// jrPuTLjW9dkzxASxdWUcLidto33CW2AH52HQgDn-OeSIltQ0iOu1W3ZP4ytBWK0_ww4n4S9iQ1o=
	// cGEM2GR2yfpqjVBPdDtLPpxHDimiKn-qDZNj22Yk2VLeqCVc9CjoYiUeZQnwVTRKPv7R0y3D2KE=
	// _0qn7qEtmwjMJO9ezONms7s4pJjyHQLF5Y0HQ%3D%3D" style=3D"display:inline-block;=
	// margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Facebook" src=
	// =3D"https://cdn.honey.io/images/email/welcome/welcome-social-fb@2x.png" wid=
	// th=3D"24" style=3D"border:0!important;outline:none!important"> </a> <a href=
	// =3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb107=
	// 77&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70=
	// CjkDoxg64ZorltUBV6xSXEWNYrrMpVlPODrlkurZN3YAE-sY0nPF8-d8FEfOiy21YJP-24AgbIW=
	// HjlxadLBvXSOJOgU0Tbu7NuWIIHSU1Ep5YUd2mwaPl0YTqLElVakF408K12mk9xxmcgrY2SQP3t=
	// OB7OLNchne5VRboyG8Z3i1gzoit-o127Q2_jBU8gPs8jlwas7jjhpqtcx5Gz7PaAipinLPny-ZF=
	// LjwPp2HiupRyte-RstmRqWc5ukO3hGkg%3D%3D" style=3D"display:inline-block;margi=
	// n-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Instagram" src=3D"=
	// https://cdn.honey.io/images/email/welcome/welcome-social-instagram@2x.png" =
	// width=3D"24" style=3D"border:0!important;outline:none!important"> </a> <a h=
	// ref=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb=
	// 10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_S=
	// N70BN2Un3LodsGbka_iV3cygrhIZy022pbjuWw_KqZzy-tu_4oCum5j5CV_56v8-yZUYpnBVTTM=
	// z9M73p8J5k2H47aoZO7MKmmqlQGdJJ7MprleUm4Y47iZjPqAGmXz3TKzH9VXUNNOnkuR6PsiSDW=
	// 1vPPkQlTQRZZsPGuDCRxlRxaGJyLHVNGRoZgyZpix4WJq-T8vvoJix0UwrN-Edy8YLoJLLTZ8Sm=
	// asTCePqvPFcv09N6e1u7-GQLEDDNrfo5rFA%3D%3D" style=3D"display:inline-block;ma=
	// rgin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pinterest" src=
	// =3D"https://cdn.honey.io/images/email/welcome/welcome-social-pinterest@2x.p=
	// ng" width=3D"24" style=3D"border:0!important;outline:none!important"> </a> =
	// <a href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be=
	// 80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
	// w3_SN70LSuLL5qFAtAl2ZvHJSEqBhdT1MQfEi9HtxXYhSVtpVhZ0FeJtI-95EP7IE36Ty-6x7HW=
	// ggtuhFruNB1u2UeXO7Fsqzs0e9H5B51VYwy6Ud4ZKG8cOK1lmOWRh9HnoQpr-TNtNcz3lBFtgfh=
	// NcMaT1nxsHi6h6rTdXqdiDsJmhuZX-Q4n7EgwuIGwnHJJd9cdSsSuzLrBn3fuoVQ89yDO5lKIuD=
	// _cgxJZcBIwFTb9luQQUim0XbplKU6XuGs9MrfRg%3D%3D" style=3D"display:inline-bloc=
	// k;height:24px" target=3D"_blank"> <img alt=3D"Twitter" src=3D"https://cdn.h=
	// oney.io/images/email/welcome/welcome-social-twitter@2x.png" width=3D"24" st=
	// yle=3D"border:0!important;outline:none!important"> </a> </td> </tr> <tr> <t=
	// d height=3D"40" style=3D"font-size:1px;line-height:1px;height:40px" class=
	// =3D"m_44490807107789003em_h20">=C2=A0</td> </tr> </tbody></table> </td> </t=
	// r> </tbody></table>   <table cellpadding=3D"0" cellspacing=3D"0" width=3D"1=
	// 00%" style=3D"min-width:100%"> <tbody><tr> <td height=3D"40" style=3D"font-=
	// size:1px;line-height:1px;height:40px" class=3D"m_44490807107789003em_h20">=
	// =C2=A0</td> </tr> <tr> <td>   <table cellpadding=3D"0" cellspacing=3D"0" wi=
	// dth=3D"100%" style=3D"margin:0 auto;max-width:600px"> <tbody><tr> <td width=
	// =3D"8" style=3D"min-width:8px;width:8px"></td> <td> <table cellpadding=3D"0=
	// " cellspacing=3D"0" width=3D"100%">  <tbody><tr> <td style=3D"vertical-alig=
	// n:top"> <div style=3D"color:#757575;font-family:SuisseIntl,Helvetica,Arial,=
	// sans-serif;font-size:11px;font-weight:500;line-height:16px"><a href=3D"http=
	// s://links.joinhoney.com/e/evib?_t=3D70657193eb7a404887947be80fb10777&amp;_m=
	// =3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzj=
	// NHGL6_yBG4twEa7nsAhyynBoZAvto1_VJV" style=3D"text-decoration:underline;colo=
	// r:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;=
	// font-weight:500;line-height:16px" target=3D"_blank">View this email online<=
	// /a>.<br><br> You are receiving this message based on your Honey account set=
	// tings.<br>  <a href=3D"https://links.joinhoney.com/e/encryptedUnsubscribe?_=
	// r=3D70657193eb7a404887947be80fb10777&amp;_s=3D2d45b0f82c6841a39a4bcf37bdbd6=
	// 4e7&amp;_t=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4RRZ7dureRSYWw=
	// GZ0RyPFEBqWiCMFBgvISu_H21jEiuXGrDbw0z1eENoNsEIWOlNHHM6WW5Rbp2LQKFPde3UwVUvj=
	// ZNt0TpSj8OAJQpBOvSG4fyH7DpyoyiFwp8%3D" style=3D"text-decoration:underline;c=
	// olor:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11=
	// px;font-weight:500" target=3D"_blank">Unsubscribe</a> or adjust your <a hre=
	// f=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10=
	// 777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN7=
	// 0Fv_7Dx7weD4EeDHDdrEoK-vtKMB13iGzp3kf3kFFhPX0CDhelueiYwJVGCACrLGr5WaX68LszT=
	// z9o_XSQkC5A3-S2n0HiBv_4M6tSsLK1U23HzxVWI5-IGHWabmcvWfKLIKZl-JFZP_nsUwO-pq1x=
	// q3s81Klvc3uaiNiVLPXyt-V0a9YRzrraW5QmmdzSGV5ML_puh5BLbPgw_YfsS0zBj8iE2qVTL-W=
	// 5DXuJ2qi4IIIljSPWngL6JJeIKWcd_T4tj5ZiMl6HumKi-oY09yi0M%3D" style=3D"text-de=
	// coration:underline;color:#757575;font-family:SuisseIntl,Helvetica,Arial,san=
	// s-serif;font-size:11px;font-weight:500" target=3D"_blank">email preferences=
	// </a>.<br><br> </div> </td> </tr>  <tr> <td style=3D"vertical-align:top"> <d=
	// iv style=3D"color:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif=
	// ;font-size:11px;font-weight:500;line-height:16px"> Copyright =C2=A9 2023 Ho=
	// ney Science LLC (a PayPal company)<br> All rights reserved. 963 E. 4th Stre=
	// et, Los Angeles, CA 90013<br><br> <span style=3D"font-size:8px;font-weight:=
	// 500"> CID: 4570808_10.04.2023 </span> </div> </td> </tr> <tr height=3D"64" =
	// style=3D"height:64px"></tr> </tbody></table> </td> <td width=3D"8" style=3D=
	// "min-width:8px;width:8px"></td> </tr> </tbody></table>   </td> </tr> </tbod=
	// y></table> </td> </tr> </tbody></table></td> </tr> </tbody></table>=20
	// <img border=3D"0" width=3D"1" height=3D"1" alt=3D"" src=3D"http://links1.jo=
	// inhoney.com/q/E0G5IG3UAwCHCqCfNy7cAg~~/AAQ-SgA~/RgRnACCcPlcDc3BjQgplFJybHWW=
	// PImxMUhN5dXJpazE3NzZAZ21haWwuY29tWAQAAAAA">
	// </div> </div></div></div></div></div>`
	body := `<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:w="urn:schemas-microsoft-com:office:word" xmlns:m="http://schemas.microsoft.com/office/2004/12/omml" xmlns="http://www.w3.org/TR/REC-html40">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="Generator" content="Microsoft Word 15 (filtered medium)">
	<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
	o\:* {behavior:url(#default#VML);}
	w\:* {behavior:url(#default#VML);}
	.shape {behavior:url(#default#VML);}
	</style><![endif]--><style><!--
	/* Font Definitions */
	@font-face
		{font-family:"Cambria Math";
		panose-1:2 4 5 3 5 4 6 3 2 4;}
	@font-face
		{font-family:Calibri;
		panose-1:2 15 5 2 2 2 4 3 2 4;}
	@font-face
		{font-family:"Apple Color Emoji";
		panose-1:0 0 0 0 0 0 0 0 0 0;}
	@font-face
		{font-family:Poppins;
		panose-1:0 0 5 0 0 0 0 0 0 0;}
	@font-face
		{font-family:"Source Sans Pro";
		panose-1:2 11 5 3 3 4 3 2 2 4;}
	@font-face
		{font-family:-apple-system;
		panose-1:2 11 6 4 2 2 2 2 2 4;}
	/* Style Definitions */
	p.MsoNormal, li.MsoNormal, div.MsoNormal
		{margin:0cm;
		text-align:right;
		direction:rtl;
		unicode-bidi:embed;
		font-size:10.0pt;
		font-family:"Calibri",sans-serif;}
	a:link, span.MsoHyperlink
		{mso-style-priority:99;
		color:#0563C1;
		text-decoration:underline;}
	span.EmailStyle19
		{mso-style-type:personal-reply;
		font-family:"Calibri",sans-serif;
		color:windowtext;}
	.MsoChpDefault
		{mso-style-type:export-only;
		font-size:10.0pt;
		mso-ligatures:none;}
	@page WordSection1
		{size:612.0pt 792.0pt;
		margin:72.0pt 90.0pt 72.0pt 90.0pt;}
	div.WordSection1
		{page:WordSection1;}
	--></style><!--[if gte mso 9]><xml>
	<o:shapedefaults v:ext="edit" spidmax="1026" />
	</xml><![endif]--><!--[if gte mso 9]><xml>
	<o:shapelayout v:ext="edit">
	<o:idmap v:ext="edit" data="1" />
	</o:shapelayout></xml><![endif]-->
	</head>
	<body lang="en-IL" link="#0563C1" vlink="#954F72" style="word-wrap:break-word">
	<div class="WordSection1">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt"><o:p>&nbsp;</o:p></span></p>
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt"><o:p>&nbsp;</o:p></span></p>
	<div id="mail-editor-reference-message-container">
	<div>
	<div style="border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal" style="margin-bottom:12.0pt;text-align:left;direction:ltr;unicode-bidi:embed">
	<b><span style="font-size:12.0pt;color:black">From: </span></b><span style="font-size:12.0pt;color:black">Yuri Khomyakov &lt;yurik@cynet.com&gt;<br>
	<b>Date: </b>Thursday, 5 October 2023 at 16:12<br>
	<b>To: </b>eyaltest@cynetint.onmicrosoft.com &lt;eyaltest@cynetint.onmicrosoft.com&gt;<br>
	<b>Subject: </b>FW: Hackmate 2023 - Yossi, David &amp; Emanuel<o:p></o:p></span></p>
	</div>
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
	<div id="mail-editor-reference-message-container">
	<div>
	<div style="border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm">
	<p class="MsoNormal" style="margin-bottom:12.0pt;text-align:left;direction:ltr;unicode-bidi:embed">
	<b><span lang="EN-US" style="font-size:12.0pt;color:black">From: </span></b><span lang="EN-US" style="font-size:12.0pt;color:black">Hadar Sahar &lt;hadars@cynet.com&gt;<br>
	<b>Date: </b>Tuesday, 5 September 2023 at 12:49<br>
	<b>To: </b>All &lt;all@cynet.com&gt;<br>
	<b>Cc: </b>Gal Tandler &lt;galt@cynet.com&gt;, Aldema Gilad &lt;aldemag@cynet.com&gt;<br>
	<b>Subject: </b>Hackmate 2023 - Yossi, David &amp; Emanuel</span><o:p></o:p></p>
	</div>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><b><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">ביום חמישי הקרוב זה קורה!
	</span></b><span dir="LTR"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><b><u><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">יוסי, עמנואל ודוד הולכים לייצג אותנו בטורניר השחמט הארצי של חברות הסייבר המובילות בישראל!</span></u></b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><b><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">כולנו מחזיקים אצבעות ובטוחים שתייצגו אותנו בכבוד!</span></b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><b><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">&nbsp;</span></b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><b><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">מעוניינים להגיע לעודד?
	</span></b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><b><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">עדכנו את צוות ה</span></b><b><span dir="LTR" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual">HR</span></b><span dir="RTL"></span><span dir="RTL"></span><b><span lang="HE" style="font-size:22.0pt;color:#FF3399;mso-ligatures:standardcontextual"><span dir="RTL"></span><span dir="RTL"></span>
	 ונדאג לכם לכניסה לטורניר </span></b><b><span dir="LTR" style="font-size:22.0pt;font-family:&quot;Apple Color Emoji&quot;;color:#FF3399;mso-ligatures:standardcontextual">&#128522;</span></b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><span dir="LTR"></span><span dir="LTR"></span><b><span lang="EN-US" dir="LTR" style="font-size:22.0pt;mso-ligatures:standardcontextual"><span dir="LTR"></span><span dir="LTR"></span>&nbsp;</span></b><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" align="center" dir="RTL" style="text-align:center"><span lang="EN-US" dir="LTR" style="font-size:11.0pt"><img width="664" height="664" style="width:6.9166in;height:6.9166in" id="Picture_x0020_8" src="cid:image001.jpg@01D9DFF7.3742A150"></span><span lang="HE"><o:p></o:p></span></p>
	<p class="MsoNormal" dir="RTL"><span dir="LTR"></span><span dir="LTR"></span><span lang="EN-US" dir="LTR" style="font-size:12.0pt;mso-ligatures:standardcontextual"><span dir="LTR"></span><span dir="LTR"></span>&nbsp;</span><span lang="HE"><o:p></o:p></span></p>
	<table class="MsoNormalTable" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td width="260" valign="bottom" style="width:195.0pt;padding:.75pt 33.75pt .75pt .75pt">
	<table class="MsoNormalTable" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" align="right" style="text-align:right;direction:ltr;unicode-bidi:embed">
	<span style="font-size:11.0pt"><img width="70" height="37" style="width:.7291in;height:.3854in" id="Picture_x0020_1" src="cid:image002.png@01D9DFF7.3742A150" alt="Crop"></span><span lang="HE" dir="RTL"><o:p></o:p></span></p>
	</td>
	</tr>
	<tr>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" align="center" style="text-align:center;direction:ltr;unicode-bidi:embed">
	<span style="font-size:11.0pt"><img width="134" height="134" style="width:1.3958in;height:1.3958in" id="Picture_x0020_2" src="cid:image003.png@01D9DFF7.3742A150"></span><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt"><img width="194" height="52" style="width:2.0208in;height:.5416in" id="Picture_x0020_3" src="cid:image004.png@01D9DFF7.3742A150" alt="Cloud"></span><o:p></o:p></p>
	</td>
	</tr>
	</tbody>
	</table>
	</td>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<table class="MsoNormalTable" border="0" cellpadding="0">
	<tbody>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="margin-bottom:2.25pt;text-align:left;direction:ltr;unicode-bidi:embed">
	<b><span style="font-size:18.0pt;font-family:Poppins;color:#1E202C">Hadar Sahar</span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;line-height:15.0pt;direction:ltr;unicode-bidi:embed">
	<b><span style="font-size:12.0pt;font-family:&quot;Source Sans Pro&quot;,sans-serif;color:#F9379F">Wellbeing Manager</span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt"><img width="1" height="1" style="width:.0104in;height:.0104in" id="Picture_x0020_4" src="cid:image005.png@01D9DFF7.3742A150"></span><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><b><span style="font-size:10.5pt;font-family:&quot;Source Sans Pro&quot;,sans-serif;color:#1E202C">052-7364422</span></b><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td colspan="5" style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt;font-family:&quot;Source Sans Pro&quot;,sans-serif"><a href="mailto:Hadars@cynet.com"><span style="font-size:10.5pt;color:#1E202C">Hadars@cynet.com</span></a>&nbsp;|&nbsp;<a href="https://www.cynet.com/"><span style="font-size:10.5pt;color:#1E202C">www.cynet.com</span></a></span><o:p></o:p></p>
	</td>
	</tr>
	<tr>
	<td width="110" style="width:82.5pt;padding:3.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:13.5pt;font-family:-apple-system;color:black"><img border="0" width="99" height="24" style="width:1.0312in;height:.25in" id="Picture_x0020_5" src="cid:image006.png@01D9DFF7.3742A150" alt="Cynet logo"></span><o:p></o:p></p>
	</td>
	<td style="border:none;border-left:solid #1E202C 1.0pt;padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span style="font-size:11.0pt"><img border="0" width="1" height="1" style="width:.0104in;height:.0104in" id="Picture_x0020_6" src="cid:image005.png@01D9DFF7.3742A150"></span><o:p></o:p></p>
	</td>
	<td style="padding:.75pt .75pt .75pt .75pt">
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><a href="https://www.linkedin.com/in/hadar-sahar-083b17175/"><span style="color:windowtext;text-decoration:none"><span style="font-size:13.5pt;font-family:-apple-system;color:blue"><img border="0" width="20" height="20" style="width:.2083in;height:.2083in" id="Picture_x0020_7" src="cid:image007.png@01D9DFF7.3742A150" alt="linkedin logo"></span></span></a><o:p></o:p></p>
	</td>
	<td style="padding:.75pt .75pt .75pt .75pt"></td>
	<td style="padding:.75pt .75pt .75pt .75pt"></td>
	</tr>
	</tbody>
	</table>
	</td>
	</tr>
	</tbody>
	</table>
	<p class="MsoNormal" style="text-align:left;direction:ltr;unicode-bidi:embed"><span lang="EN-US" style="font-size:11.0pt">&nbsp;</span><o:p></o:p></p>
	<p class="MsoNormal" dir="RTL"><span lang="EN-US" dir="LTR" style="font-size:11.0pt;mso-ligatures:standardcontextual">&nbsp;</span><span dir="LTR"><o:p></o:p></span></p>
	</div>
	</div>
	</div>
	</div>
	</div>
	</body>
	</html>`
	bodyReader := strings.NewReader(body)
	qpReader := quotedprintable.NewReader(bodyReader)
	decodedString, _ := io.ReadAll(qpReader)
	decoded := string(decodedString)

	html := New()

	_, _ = html.ReplaceSrc(decoded)

	assert.Fail(t, "ss")
}
