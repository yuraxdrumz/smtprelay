Received: from EUR01-VE1-obe.outbound.protection.outlook.com ([104.47.1.50]) by
	localhost.localdomain with ESMTP;
	Sun, 08 Oct 2023 14:28:22 +0000 (UTC)
Received: from AS9PR05CA0077.eurprd05.prod.outlook.com (2603:10a6:20b:499::27)
 by GVXP192MB1735.EURP192.PROD.OUTLOOK.COM (2603:10a6:150:6a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.41; Sun, 8 Oct
 2023 14:28:17 +0000
Received: from AM6EUR05FT014.eop-eur05.prod.protection.outlook.com
 (2603:10a6:20b:499:cafe::aa) by AS9PR05CA0077.outlook.office365.com
 (2603:10a6:20b:499::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36 via Frontend
 Transport; Sun, 8 Oct 2023 14:28:17 +0000
Authentication-Results: spf=pass (sender IP is 209.85.221.173)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.221.173 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.221.173; helo=mail-vk1-f173.google.com; pr=C
Received: from mail-vk1-f173.google.com (209.85.221.173) by
 AM6EUR05FT014.mail.protection.outlook.com (10.233.240.213) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.17 via Frontend Transport; Sun, 8 Oct 2023 14:28:16 +0000
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-49d55b90a5aso2559052e0c.0
        for <eyaltest@cynetint.onmicrosoft.com>; Sun, 08 Oct 2023 07:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696775296; x=1697380096; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=25Ze8YVPPFd37vjNZAzRgAwdxJ5xCXIDp/2xXwi2SAU=;
        b=nsAHW+KuvCmQVPaAazLvHFZi2LS3xHMKoUqMNpofiXppx0scj309jM286FK9h5HVbI
         MPa0f107zrxG3oHHLRLtD46962z+LvckTXDWicIdsmcc8tIs6VxKcVS1r81JYnw9EJVO
         H7adgpEWpt1PqnHV4BwfvnqS67N8F8OYO3tlfuFsLwusvXpJpi4NKHGlcVCYX8CO/cGA
         JkPWUNmYHG7pwiwbZ5u8jRJDXzvszxYQtMjrFYSX/FM7njidqLhXuycKhcCH+MJFGSGh
         eounDR8Df2yt2Ymzf6SO3vZuaeFS8ogJ4yb5ltYre3fQsEPimIh5qidD1Txbr3eQyPig
         qmJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696775296; x=1697380096;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=25Ze8YVPPFd37vjNZAzRgAwdxJ5xCXIDp/2xXwi2SAU=;
        b=iJFaGRvu9aLIcE2KwFuQfh9+3bACiue8t5tkQHiWAfHxSRlwgGxc+2g8t8cRqs9cBw
         0rUQg7IxSrA5cosI8+no7JWLUvYMDWuXBaMU1v10VC20l3Wqa6ZzNl1cOe6obOKSstPJ
         Z6Y60XXrMAYn164LbfyX5QBLGmKaV4hS8JTTG6/6Silgl9OITk6juwzJXVkNzURrxEun
         16pIjXi9JgU1PKfhCuv0PWel3nuKVtEMr/YoROR0VktHsUcWilwOZps7z9T3aLuE5dTh
         dJY73AP/NpOS5jQ58mEt7E0INKtZ4Vu5ewInRQ8X70zHzAvK2a2irGY16Q20zSodDRAp
         fl2A==
X-Gm-Message-State: AOJu0YwwJ5DoLFrBHZkMnbSWC3IFykOL67P3azb8XAjH7+4v20JWnfMp
	T8Mw/GJXw8x9klX4t4PuKkOv4dYz/MOEVtUGz+oX38y47Mo=
X-Google-Smtp-Source: AGHT+IEA5X4rCce6ACwm5+wNWu6yyFvjWfYZ8s173SBJVYBaRCbv+m5aC4183Ecw726E359MyxAWlrMEsyTw0D44+uI=
X-Received: by 2002:a1f:dd43:0:b0:48d:11d1:9feb with SMTP id
 u64-20020a1fdd43000000b0048d11d19febmr6751898vkg.8.1696775295601; Sun, 08 Oct
 2023 07:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <O6cuBfrDQWWTQyN_HGly3w@geopod-ismtpd-8>
In-Reply-To: <O6cuBfrDQWWTQyN_HGly3w@geopod-ismtpd-8>
From: Yuri Khomyakov <yurik1776@gmail.com>
Date: Sun, 8 Oct 2023 17:28:04 +0300
Message-ID: <CADrc17BVMVwgz0o69na+63AfxQqZO=msS-H3_LJYy7DFSxtDsg@mail.gmail.com>
Subject: =?UTF-8?Q?Fwd=3A_=F0=9F=93=85_Wednesday=3A_Join_258_Developers_at_=22React=2DI?=
	=?UTF-8?Q?L_October_meetup_=2D_Powered_by_Codux=22?=
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="000000000000c2168b0607354883"
Return-Path: yurik1776@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6EUR05FT014:EE_|GVXP192MB1735:EE_
X-MS-Office365-Filtering-Correlation-Id: ba922fa0-1f06-4ae1-36bf-08dbc80ad02d
X-MS-Exchange-AtpMessageProperties: SA|SL
X-Cynet-Tenant-Token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?VWVPSnJsOTBjczNQeWQ0aEt4ekRWM0dybkhjSVBnTlRzWUVHUmNJeUZPL3JY?=
 =?utf-8?B?U3BGQWswOEF6SWlWUVNMeG1FcHBVR0lLZlJEV0VBZEMyckQ2UUVqT0ZtbkdI?=
 =?utf-8?B?THJjK0ZRR1A5emh2R3FDcDJvbzZBRVAwN3dldmNueldLTVhvd0VQWDFZWFM0?=
 =?utf-8?B?enR6NytZYnkzTDZzMHhnbHJIam5tbzc1NlBVdnVKOFBvUHhNMlIraVZJeHp6?=
 =?utf-8?B?NGhWamg0WDl0Qmh1T2QrMWR5QXhjMXB2aU4rNTdZc3o4clVuUmIxMmZFVUZ5?=
 =?utf-8?B?ckx0KzZYdkh2NW8vNVlJbC83blRwT3lwck81M1JuT0k4eitvZFA0SkFTM3hl?=
 =?utf-8?B?TDkyKzVQY284QXdhQ3RwMy9laFg0SnhvV2wzVEpIcGdNUFhUQ0FPRzZZYmUr?=
 =?utf-8?B?Zkl6aUVrcE13WCtLNEVBUXo4KzhDc3lLdnFUUkFyUU1qTE5mSGpyUkV4bEU1?=
 =?utf-8?B?djk1VnhsOWoyN1pXSjJISkgwazZvLzZPejlqWktvS1lkaW1TbS84QjB0ZE96?=
 =?utf-8?B?bFlvQzZBaG1haytHa3RpbU1sY01Rbk9ZcldhWUdORzg0NndFL0lpbTV0aFdt?=
 =?utf-8?B?eWVWZm9CbzBrcW9ZemppNVRZUytWb0JMMU92MW1aTVcyRHJNUjBhOENSWUpk?=
 =?utf-8?B?clA4OEZMaEtkMmJ6R1YzbFhSV2lJYnc4QjJlVWNNa3U5SmF4M09tNjVkVlUv?=
 =?utf-8?B?dW84NWp2YkZnL2JQYjNBckFGQW9lUFdEV3NLV3p0NmQ3TWE2aWNlSFR0M3hG?=
 =?utf-8?B?UytxZy9PMkdQU0hrMXFuakZ1UjR5ZWo3T2ZDUk0vQTVvS1ZHaWhHOXhrb05q?=
 =?utf-8?B?UnZJSlhCL1hYZERhOFdZVmxjeFcrVW9wUzUwMjZaR2p3TVc3QUVrOE5wWVNt?=
 =?utf-8?B?dzNLVFV2cTJ4NUczbjBlVXRteFk3bkJ0Zml2ZkhhS3NSQlBkTzJLVGh4dzNp?=
 =?utf-8?B?VndlTHlXRUtXMThZZGt3alRERDFUd2hlcktEaC9WNGFCRHJWOVJQc2pXbnRL?=
 =?utf-8?B?ZVZYSE1aQmtDaWMyczFJdm5uenNVRkZrQkNyWGJIYXZ0bzY1Wk04SGJPOW1z?=
 =?utf-8?B?N2RGcUZRVzl4L0t5MHNaSFBwQ3l5ZmxkdnJBa1FjR0FkVUxZQVJ1ejhuUndt?=
 =?utf-8?B?b3JOMDFyUFdHaEJuUTJuZVRaWHNXb2xzcWtBSFNFRDVnOGYyWHVKNUl4Rm4r?=
 =?utf-8?B?Mk9GSEpqVXRnczZySW5xVnJVVHpGUWVScHBBdzhMbmg0TjhHWUFRVHNqMkxC?=
 =?utf-8?B?VW5yRW90SG94MTFqV1VUWGRRSHQwVnZMTDlQeHFvbUJwdVYwWGxzeG5XZ0ZO?=
 =?utf-8?B?TDBxVk5QVUlxYWpuY3VNMDkvWmQ4dmJ5eGpZblJ1TnlMUjcwVnQ1MDA3Z3FQ?=
 =?utf-8?B?S2gxNjgrZENGWjljaUVIQis3WG5wbHB1OXAxSHJmRG5qaWhpVVZ3d2VJR0I2?=
 =?utf-8?B?U2pxZ01uRWpJSWpYWkFoNzRSZ1Y4MFZnZnpLcGxSdDhYRnpyRENBc3ppOTFJ?=
 =?utf-8?B?cVJlY0NKOFg4OU85YVp3NUJrV1hIYUluRnQ4YXhtVFpoYjg5M0N4Zjg0TUVo?=
 =?utf-8?B?YmFFbjAyVDhYVXdrdTkxMXlrczdTYzJnKy81cnVoWUxOT2s2aEFUYTZhczNw?=
 =?utf-8?B?TE4wSWFYbTFqOHpzYkNhekxKd0NLQ1lkS3VMeEtBanhzd3ZmS21OUmNYNS8x?=
 =?utf-8?B?K3FsOU40UFlQdHo0YWkyVCsxbGgxTnVHNGtFVTBwZ0NvNzR5NnllZTlkbTF5?=
 =?utf-8?B?T1grTmIwTi8wR3FaR0Z6UVpOZ0lBV3hmcVFZY21Fb1RveksxM1U5YjExekd2?=
 =?utf-8?B?eDNPUytiZkZpSWxEa0dzK3ZEU1ZDN1J3bVJnNzZDaThMRFA4bTZZeFhsei8v?=
 =?utf-8?B?STdLajNLKzUvSU1iYU9zWTc2WnpWa01zcGEvLzIyM3NNS0ZndWx1NWVleFdx?=
 =?utf-8?B?WFNPcHZIRUVDcFUzVXRlYWZmRlMvcE1OeGprNVlzM2wvQlB5eTVTVnR0OXdz?=
 =?utf-8?B?cmlHaGdyckhySS9mTnhjQW1nb29kNXVUZXh6WDVNc3F4Z2ZPdzE4V3NWcEdW?=
 =?utf-8?B?cXFhMmthL0JhWEFBbE4yb1ErY1A4M3hYTmNKYWNaSmdjWUVpZ3N5U1hkc3h3?=
 =?utf-8?B?eTVqVTEySDUrVXBPMEJobXhySCswWm1Zc0l2TGkyU054YTVTa3pOLzRvUVhS?=
 =?utf-8?B?M1E9PQ==?=
X-Forefront-Antispam-Report:
	CIP:209.85.221.173;CTRY:US;LANG:en;SCL:-1;SRV:;IPV:NLI;SFV:SFE;H:mail-vk1-f173.google.com;PTR:mail-vk1-f173.google.com;CAT:NONE;SFS:;DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	2KRc1Z/YRRpykim6ykFDFP3fu6Vim4elRLJBbF4SGw2sX2ZITLXAgkXFxOo7qhZ+2JuD+4250ldwhtxibVG8LC/iJQsePaPa3ERGhhw9I/26sIGbHaCJtsLeS8QA7WRmqee5wTCJb2as40rxpwIH/7kI1OV35Yqwzap/uVlF9EG8xsIyH9/sTPaZ6YVgGU/Q/g9dad9mRigfs2eQdVOunnz5Yl+Vl9lr0Zw5R3BB8jAYrFPtDnbvGs36xBW8FODIpOmC6eOxVXivIvA+BXGFy4KVMPBvEkq8CEqh773sPfpqfVUlYpVDjAwysTmDKzgKVTHvEcwRwa7MExkhP1TfxXGmguwmeyM1xd4IGNzvj7taL5ujlT+hYqVjCzr2nRjj8hWZAdSbYHVtflj/9F2FcwUo9c8J7BIJYWS3m5BsuYgRXLBhnrq65JVIAtL0pSzCPKLVpqs8aJrda7UqxRJZhFKkK8nnNGjIJnW7XWDYNR1x/omPexCo8exskUcANTxhBDu3UMtt68d9A4amsJOCVkFokDR+5RzIo6jDEzJDAs4cTH5yZKjoSyivqWOSCqIlb49duG7t/EP8DMibvVzWIxQkA6cmYhWEUFFcuBKQ9xjDxPWUYsQzLm/ZpgwU2jXVvQNAnkS8lIwe98hlWA9fcrC/VTDhqj0oNxsZGfxYoTFgLj/EWI3WFSj2zXfPSquPSgck2GcW5PORhLRvlZ3W0+zG7IYoUwnEZap35dA/AavH/Zz7QLjFXDrMtMISBaa3UX2glx5QoWawyuFW8DeIKw==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2023 14:28:16.9659
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ba922fa0-1f06-4ae1-36bf-08dbc80ad02d
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
	AM6EUR05FT014.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXP192MB1735

--000000000000c2168b0607354883
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
From: React Israel <info@email.meetup.com>
Date: Thu, Oct 5, 2023 at 7:35=E2=80=AFPM
Subject: =F0=9F=93=85 Wednesday: Join 258 Developers at &#34;React-IL Octob=
er meetup -
Powered by Codux&#34;
To: <yurik1776@gmail.com>


React Israel invites you to keep connecting

[image: Meetup]
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1lMbY-2F0BB6sl1-2BGb-2BU4Xb61IYOfzSGDr1WLA6MC9Dyq9-2F8g3=
ZHmsfIhK4vjh2BPLpwsD6Iy-2BmFCfGEumnmGhsB4xvvr0JsqTn3JcdmaNJdQmw-3D-3DvXJK_m=
bs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2=
FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7=
viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2F=
b77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2=
ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnc=
o5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6=
ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpD=
U2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rF=
VrWnW1KxzBkMuYcNFUP9xOpzJv2vpvSBjIFGYEbrjBhMAi21co2FCsIhZnrKJewkpTm7WBnwutH=
XJlAJlUJDvbEuQETsXXiENn2Qli7CN1a-2BATluyPWxGCU2ytGejP-2Bo3WCJz-2FzK0agRzVeL=
fPJ-2FjUdNWfHf95-2B7cdr86lgCguEBV2SB5I-3D">

Wednesday
React-IL October meetup - Powered by Codux
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWyg-2F-2FMaMVZ4MzDI9jVPqTK1Zw-3D-3DP=
4-r_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vgBOFzapgaIhHp3ZemhfNGsZHQ-2F-2FD58qpwVhto5=
iYYGmjrvglRxvacHMdCeK9vLEillil3r5o-2BBlQS0-2Bw6V36i2gX7HUrTI4poEZv-2Fdn0mhA=
HS2Wvjiq4RC3XTAO1sg1THO45tyVYLTspJACPdfK0YY-3D">
React Israel
Wednesday, October 11, 2023
6:00 PM Asia/Jerusalem
Yigal Alon St 98
Yigal Alon St 98
Tel Aviv-Yafo
[image: Add to calendar]
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygnFybTO64pAGCxg8iW9n9tib8DOnxrJm7v=
rL6SBlzwZPYJWTDJ-2F6HZWI-2BaHp4BMoIFj9fPLCDKFmU0J-2BUKr5Uxw-3D-3D95l0_mbs2f=
7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUs=
bLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGR=
MatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y=
5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p=
8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gy=
dzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37=
EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJ=
RLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWn=
W1KxzBkMuYcNFUP9xOpzJv2vh3BMFmE2GxPf0ass3kTNxsTSU8teChfWihCYB-2Bi8dlih5bTe0=
scP-2F435Sue2qGk6PhrweH-2FgOHGWEVo-2FPfU4qIHfrCz8hHEBFOsCMqsPeIrv-2FBQfkzup=
yuEfksAQZYNQBVsgANEdtvu-2BKlUqpzFcjc-3D">

Add to calendar
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygnFybTO64pAGCxg8iW9n9tib8DOnxrJm7v=
rL6SBlzwZPYJWTDJ-2F6HZWI-2BaHp4BMoIFj9fPLCDKFmU0J-2BUKr5Uxw-3D-3DQ-ew_mbs2f=
7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUs=
bLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGR=
MatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y=
5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p=
8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gy=
dzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37=
EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJ=
RLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWn=
W1KxzBkMuYcNFUP9xOpzJv2vgvaEBNpl9-2B3WR-2FrXzUqVmCV5gLWHgEaJeX05JE01BaGUtyj=
-2FueEmCyQ8XCo6lvLyf1L7TRhYxGEbKP0CWEL-2BW6a5-2BLp3KefE8CUm-2FAWSgtMwmBj0Oh=
veOfdZm29JzH50mVg2tf1I-2FCYx6W4pbPnKMA-3D">
*RSVP today*
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygNvHx-2BSJtSG68Xqf20oab3TbrB0eA7fr=
Z1Js6tzMQ0P64BY3MJUfnfv5wpJllkti5HzY2fY2bVktjqTFaLyWQmwlZruB4VZiXUDU-2FWWlw=
YUlt2oa6ffir6ml5ImmyFoI2ZuXFfYARp6fvWeH0ohfDbw-3D-3Did5s_mbs2f7SyB5WyT-2FI4=
mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGy=
izH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h=
63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cg=
fJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvv=
J8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkr=
zi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzf=
ZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3=
ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNF=
UP9xOpzJv2vhJA4VuzjbGWYVl9MKYpc9JAhjWys5tBNdjP1OteGFBo7UOVZ63hV6SCkrPVFDHtu=
Zc1PphlzlTd4Ioe2JXW9NqsoQ-2FYZAKm87joHWdyP2-2FhrgJ41oUSu-2F76D05e-2Fe6DYbTY=
zq3US0Dts8ybRfGM8Hc-3D">
258 Developers going, including:
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3erUsSEUUHtbb7Ew2lUS6tw-3D-3Dw2vy_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vjika6hVtM-2FAaJXMPOhKE6hhwfESHpe-2BDaLUurMIEcM=
EV2akGsgG4bMdklBlS5JQswMr8hwtbuzvre4CfMzsO3ADynLXBegGiY61YjIlQUTPXPpmKSv0GA=
m8veeseMFFI7S2VHe-2BYyrRsojo7pKNtCY-3D">
EventHandler Productions
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3erUsSEUUHtbb7Ew2lUS6tw-3D-3DIv2j_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2viLfOO3RR54NYCQyzUT-2FkJPr2neSkh4yszyludfO-2Fk-=
2BWJ7-2Fq-2F-2Fbj7kZt6f3USf7LUeiu-2FHu3qdbMD5hRYzJOjw5oic1E59goVF83SYkGAtc7=
6SOpyAcaXnTc123X9-2FG7q65jlS326GT-2FWPmmwRplviY-3D">
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3pPcCtSYas3XmXopoPiuGUg-3D-3DtM_q_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vtaPLR1ieJ-2F1ct5E-2BUMFFhw428dZ7U7C9FWGTdUeoAw=
GH7H0oDTT2fjGq652SQ1Qxo40-2Bdz1GNZROzDSKoyXkcxN-2FtkGuyRlDGn4W6ULDW7a4wWExi=
0HVgmm3cIElOBl0Fay2o-2FGAYGKbpz6VHGFWGk-3D">
Rotem Bar Sela
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3pPcCtSYas3XmXopoPiuGUg-3D-3DcfCR_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vrETTn1u3-2BxXNPGH3H7vsrYqoW-2F-2F41j-2BauORvMa=
zolnxA1vfozmaEd2-2BIgRQhpPL198aHv6jxFId9bNm2Y8rbvu-2FEkpGap1MYeMO496w8-2B89=
KJPsocT5qSyCJEGehDN1GOxp6Hdhna-2B8Cnx9lVQbrTk-3D">
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3RNVRk4ChePwbzdIOMiph2A-3D-3DBi1X_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vtD8-2BNUIeOfDRjdSIKm5QgZ-2F-2BV1dR1NAcSU3DtM8T=
UEsTQu1nrSmef5j3FA6m2fpC-2Bzlp1Bsz-2B43eWxKLp-2FIu4d7uhiH0-2Butiv7yLkzrfGkW=
uiqGhP-2BcWITLqQB54jPWyeAya4-2FVyreP4Woxv-2B34EcM-3D">
Karl Vargas
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3RNVRk4ChePwbzdIOMiph2A-3D-3DUd4b_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vlHSTXLZ4lCXS-2FXNfkAqf4JioT3Vqf189-2BHa3nDCl7V=
jezDd1KZHrvKtaov9io1HqCsAx15rKL2ko7YowGuJoQ7oAg7UV5GsT-2Fo-2BH9qzS4osVHvNyP=
xFs6-2BPJ7ckn6nuniKxFF9Pb8dSuP13IgR4I2U-3D">
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3Q3-2Bl3lKdNtFk4ry-2FVIMVnw-3D-3DI=
IWY_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vtJcgwwDFNQhTkl1DD54EHN-2Fg7D-2FdxEkQ-2FTfE=
DSsWOMxxnbliD5-2FNQrbPKEXjX5-2BK7vICLxp03fMwqwbaeL0lfvxRbH4Vrp6IE-2FYFEJ-2B=
NUW9BJ3mX6KRAEGCOL3YyjqoDRvXtQr8yT-2BgS8MOOTM54lk-3D">
dor hazan
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3Q3-2Bl3lKdNtFk4ry-2FVIMVnw-3D-3De=
B4x_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vl8urg9SMm3GYav1y4WHzT9R6qbNrLi7hJjJ1v5rNSy=
-2B3ucWkbXPMvm3oOLwxBFspL2jiy0ofbPZZ55gU7ARpLdeKaqMBexuAfnARnS7O2XaTKIZzgxJ=
uMT01oYq5pdud4gedQ6Afenn-2BoMrfoLSqTA-3D">
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3PZCh-2FQcXyiqPed0-2BxFhAnw-3D-3DN=
NEs_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vnOWKaGGnf2rpQwYs1bSFESdUFVMzJb7KRZaltSxcwq=
pZrNt9HUFkFK4Anj3yy2y2fjvkWBHfXt7nSCLXaTHDSR39ej2z4HEDoMvo8rMHoeNXz2QRUvLmg=
Bb-2FwM84VcHxLfiPW19xO1-2B-2FrRGXKPdGOk-3D">
Owen Granot
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3PZCh-2FQcXyiqPed0-2BxFhAnw-3D-3Dq=
nhV_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vpsER4SEQIZgR1ENVThC8pNaE8DJeSCpGC723zYC4Lw=
eEQg-2F50BpHizLM6y9s4oJsiAYnLGJ-2FTjRwiSFkmEkrsn9SsobX1eh5Lp9CQIBdeY53p4Xm3=
XVuFGSuWSk6vwc3-2BsYTk63yLw0rlhQ8Nk5XRs-3D">
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3EUW800fgVoXgFldfVT2MEA-3D-3DPOwm_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vpflDJnwZpD-2BfjUwl8ITJNqceoPEM-2BzMeM53Kcx2kk1=
ZIsaOU7zR2B5FvekWLiXi3uSu4DkIvpOvp4z31ie4W9c5XdtYEjzlmLZSF3OxnFKBgfETD6dbZL=
v38gpUy89iD-2FEsNvKJSwQJUp4CdMTNgcI-3D">
Yahli Gitzi
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3EUW800fgVoXgFldfVT2MEA-3D-3DppTh_=
mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-=
2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S=
7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2=
Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v=
2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAn=
co5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb=
6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0Fp=
DU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9r=
FVrWnW1KxzBkMuYcNFUP9xOpzJv2vnGgAMeZr2UOY7ZzC-2BLuWyJDk9XNXuY0nIHTntdkiIGUE=
s5P6GZqRzW9ehde8PO9HqZjmacImFBiy0EO4YkuaJFa8DIAjzGKk1H3w7WU1mWxZD-2FS-2FNN3=
9FiMoe1UpIp5qnEwwQQjoUG7A32MccunZPo-3D">
*Event description:* Join us for our October React-IL meetup - Powered by
Codux! Agenda (All talks will be in Hebrew, the meetup will not be
recorded): 18:00 - Meet &amp; Mingle 18:30 - Opening words 18:35 - Off with
T... Learn more
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWyg-2F-2FMaMVZ4MzDI9jVPqTK1Zw-3D-3DE=
_GE_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vt4bJJqqHN0lGzDP8KogI0dzbQGKxIEx5vMh6aSDqJu=
uxFi5khJYjM9ogtzEyFW-2BbFycDOrX9Zmy9OYLTz-2BNKO2dcLUMH88n7gdQrbIUfaSoxZDZdo=
w05NM6qN6wnqo1u0M82uKVDwSmYA3cbOrR2c8-3D">

You received this message because you are a registered member of Meetup.
Unsubscribe
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1lpexBOJyqQikV03RvlxyQD1nQMxXAAYhtaUunMV52-2FQH0nJHVdaIq=
rs-2BuSZJz7CDV0w68sOd0WTjtjVQ-2BFelT60d4NZNLySFAlS-2FM8WT4VI4sHHznpnEdHBgfu=
NQS16TNvrn6VXERa4sSABDC17RHFEO5NZG7kNkJZOuM-2FsX8KNA-3D-3D5hQN_mbs2f7SyB5Wy=
T-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7=
tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15=
lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMB=
dHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtI=
zxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4=
UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2B=
NgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F=
0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBk=
MuYcNFUP9xOpzJv2vtwWvobUP605n7C5gCs7yd5UwXOVcJ1efZwqIp6da5pldtuR0K-2FsktPNL=
xsZaWbr95PY-2BN1nihdnYIdvV6458zsfxHSDtAMJTe6ktgq20g-2FAkYs2IAIYPHDQ731Hg8L8=
kJ93LaYJdKNCda8wYjbkKv8-3D">
from this type of email. Manage your settings
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1kuV7KZhf1LUuXid5Kkjrv9aec-2F-2FSAO-2B57XcBhbZ6R8hc6WbZ0=
sIXmRb8m4o1q78DdouhEVRcZzr-2FzIvs64ztH7bkWyPjmQniJfVSu5XDVByL26QqHYsyKuXRZY=
WBvbofBmIWzKUsjJppe02xoK4P2Swr5JF0ssH43ljhyAq-2F7uc125qT0-2B8IJu-2FHcZRpobE=
VHMASfuJOYomGl6v9a3fLSarl1N_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fy=
P8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLS=
Fi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQ=
zfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145a=
F2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsL=
q1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZ=
xsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjc=
VRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqj=
hpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vs0fuo9N5SqqyDt5wlq=
KEQNc1aW-2BCXfYwjhE-2BhaIHjl41oc7lQyDxaFPE0-2BiUioq6HXnlpQgRDSdr9ZH52IvCHt9=
jxj8TaJ703-2FDDHRdPukSj9BE1aRxJ5vsHAHQZfcBjqtXbexTO-2BB1U2-2FQi16kgRU-3D">
for all types of email updates.
Visit a your account page
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"8Y2vsX5dSU9BIj3r0FDX3hKP=
TxoZ-2F4CoTjtrmZj9WRLwKZRAorXPNMZVwCIVN5rVR5S-2FriZ5VfraAjoH5-2FdTE-2Fcg-2F=
d1VKL6k0PLPOHWrN7aN9RtHy-2FRWWuBpoT-2BpQP4GZpR4-2BOLVmsIsnEM0Tv7bqaOQEQoIiY=
Uqe9npvZGHXFMvLBG6v8dm9RCoaILXjk8lkyMdMqSnRoZhx0f0CeIwqt8A-2FZz31mbqFJWEFEX=
wHJWJw-2BTFnTCK-2F2WehtgRSJg-2B6fjX_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhu=
g6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8M=
y781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNY=
PmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-=
2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-=
2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZ=
YC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm=
-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsI=
n0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vrMa-2F1LfR=
zn3vtAZdRuNGsRLA0T03UQ-2BdyDtNEBcn1heMZT1QAiAgyxVsOy96wjoTFsYZZul2L0Y8YfRTw=
AGcseuU7y3fXFsmPCDtQoegHEc7teee1gkIn7tXABEnZI-2BEpz-2FhmGm7aVE7PU8-2F0WxZ-2=
F8-3D">
to change your contact details, privacy settings, and other settings.
Meetup LLC
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"8Y2vsX5dSU9BIj3r0FDX3lSP=
ClZdoQRTM87Zc9pGBVv4IaI0DdWeyx54S6KDP8i-2BOSVZC175vkMReJkNBj5X8Prg7vFYRNWc7=
0lXLMDjiw5v9Q5UaGw28FxozMcn5tEC8OBY1beVHbAlN92HnoWtn3eqVc0MMadYDkCm5jhJLkO5=
2kBI8AgVlXDiPx-2BR383p8Kzk2qrnEXKIIngIIyKDEF-2B6HF-2FoZvhEtI14-2BGJMZUA-3DW=
ytf_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxN=
fSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJ=
Pw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhO=
ys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPm=
SK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4j=
yUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCit=
VCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jj=
n0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXC=
GF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vkYMeOl3iRNmLfdvl8PdzzKiCnbanzKnO6nuhXP3aiZ=
e5FMU-2BaaY-2BzUDab1qyk9otrcm-2FLtWt6K3uAZZk-2F20Be5xvc3C04fCSGfOFnDQOIESGW=
NA1YLZD2ZEpb2knqKaYQEORffwr3qWvQv0O5-2FDA4g-3D">,
POB 4668 #37895 NY NY USA 10163
Read our Privacy Policy
<http: clicks.meetup.com=3D"" ls=3D"" click?upn=3D"XbaZ37larFA-2FuV5MohrYpd=
rra25MtI4CzodbRR1Rd1lhUUqAoqop-2FiYO7Df4o2hT-2FcFCBR08Iq5f5UuOkTBHBmKbla2vs=
R6PMPp2js-2BBaNaeISosCb-2Byhg1iLdCQ2dtHaGqqH-2BDPlcIei5dUxTbRF968gnXM2xso9e=
XniAirsqcdDu915CJO4sKffGXvJcaVhHTz5LccxPRgrZgeVsy9UghHpVYXO3vtpfkIFbelwNwTD=
4t2HbIITQExq2g7gJyPdgkI_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA=
7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1R=
sPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5=
rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bC=
ymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-=
2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYy=
hH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9=
ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcw=
EZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vqW-2BBWiUKdSYBzvLCC-2B=
UQGKR6stGw1VOc-2F7wbpLOinryec4c7oEHUkenWFOR7vPG2L-2FicV96wUOMSkhCHp8LU6p2Z3=
COg0EuivlbvsOf98uNSgf5M6bk3vcyqKAXuJ-2FBYHGskR2XM4pheu5N97KciKo-3D">
.

</http:></http:></http:></http:></http:></http:></http:></http:></http:></h=
ttp:></http:></http:></http:></http:></http:></http:></http:></http:></http=
:></http:></http:></http:></http:></yurik1776@gmail.com></info@email.meetup=
.com>

--000000000000c2168b0607354883
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br/><br/><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">---------- Forwarded message ---------<br/>From: <strong c=
lass=3D"gmail_sendername" dir=3D"auto">React Israel</strong> <span dir=3D"a=
uto">&lt;<a href=3D"mailto:info@email.meetup.com">info@email.meetup.com</a>=
&gt;</span><br/>Date: Thu, Oct 5, 2023 at 7:35=E2=80=AFPM<br/>Subject: =F0=
=9F=93=85 Wednesday: Join 258 Developers at &#34;React-IL October meetup - =
Powered by Codux&#34;<br/>To:  &lt;<a href=3D"mailto:yurik1776@gmail.com">y=
urik1776@gmail.com</a>&gt;<br/></div><br/><br/><u></u>
<div>
<div style=3D"display:none!important;font-size:1px;color:#ffffff;line-heigh=
t:1px;max-height:0px;max-width:0px;opacity:0;overflow:hidden">

React Israel invites you to keep connecting</div>
<p>


































 =20



























 =20

 =20

 =20
   =20
   =20


























=09
	=09
	=09

=09
=09
		</p><div>
		 =20

		 =20





     =20
     =20
     =20
      <table cellpadding=3D"10" cellspacing=3D"0" width=3D"100%" style=3D"w=
idth:100%;min-width:100%">
        <tbody><tr>
          <td align=3D"center" style=3D"text-align:center">
            <a style=3D"display:block;height:40px;max-height:40px" href=3D"=
localhost:1333?u=3DMDFiZmVjMzYwZmMyYjRiMDZmZGMxYmVmYjEzY2I4NzhiOWE3OTcxZGM5=
NWJmZDE5NjZmOGQyOTdlMDc1NjlhMGJiMDQ1ZjI3MGUzNDM4ZTkxYTRmNWYwMGY5OGYxZjJmOTI=
zMTMyNmY1ZDU2N2UyMDZjY2YxYTFhNmM5ODVlYTZmYzFjNWYwZmRmYmQ2NmExYThkOWExZTA1M2=
NmNDBjMTE5YjI2NWJmZTQ5YmI1NzUyYjU5Yjg5MGFkOWM1ZjFiYmYyYWMyYTY5MmRiYjE5YjUyY=
WEwMzdmNzJiNDdiNjhiNzRiNGI3NWRhZDAxMTc5MTdlYTAxMmRlMmY3OWExYmM4MDQ0MDNiOWEw=
ZjUxOGE3YjMxOTBkODZjOTcyY2RjZjM0NGQ5NzFjMDRhNzhjZGQyMWQ1Yjg0ZmI5NTg5ZTEyOGU=
2ZDAyYjI3MGU3OTcxMWI5ZDU2YmE0MDMzZmNhZGEzYzQxZmYzZWQyNTE5ODQyYjEyMDVmZmY4Yz=
MxZjZlZGRmMjFiYWU1YzNiMjViZDU3Y2IyZjYzMTMwMjkxYjkyOGY0ZDdjMWJmNWIyMWY0NTY4M=
WU3YmYxM2YxZDM3N2FiZmVlZGQzOGU2MzBkYzE1ZTg2ZGViNDgzZDBjY2JlNjMwMDYwNDRlODY4=
YjVmMWI2YTFhMjlhMmIwODFlMTk1NjA5ZmY1MzQ1MDI4MjllYmYyNzdlMTIxMWQ2ZjA1ODRmZTc=
wYzkwZWZjZDcyYjg0NGE2MjM5MGI3ODFjNDBiNDgwY2RmMTcwYzI4YWY0NzQ4NTE3NjViN2MxY2=
VmYzljMjdlZjQzM2NkMTEyNzFhYTAxZjRjZWUyNjM4ZWQ4ZjcyODc0YWViOTY3ZTJmN2IzYjM3N=
jczOGJmNDBjMzU1YzJhNmZkYzNlMDJkY2FjNjM4OWFiN2U3Y2RmMzFmMDEzZmQ3YjExYzRhMDM0=
ZjI0Nzc4MDA3ZmZhYTg1YTM4ZWUxMDc1MmE0Y2RkNzQzZTIyNjg5ZDU1MDU4ODI1MmRjZGY0NzE=
3MzVmZGQ1OWNlYmJkYzQ2Y2Y3N2RiY2UxZjRjZDY1NTUyZWE0N2EyYWZkYzExYmM5OTQxZDlhND=
IxMzZkZjVmMTNkMzdlNWY2MWM0NjdlZTBjZmU1N2NmNzU0Y2RhZTdhMDM0NThjYzU0MTc0ZjlhY=
zg4MDA5ZGJmNzY4NTEzOWRlODhjYjQ3MDk5NjBlOGE3MDY0NjIzMDg5M2ExY2ZmODkxYmI1MGNl=
MzcwYjY5OTUwMWE5YTNhNjBjYmRiYWUzYzg4ODBjMWZmNmU2ZjdjNGVjOGUwY2RmY2QwNzAzYjI=
wZGM1NjNkYWRhNGY5MDEyOWYyZDYyNjY5ODk1NjA5ZDRjMzViMDgxZTg0MzJmZDFkNzk4MWViZG=
YwNDMyMmUxYWNkMGM0ODllNWJhMzgzYWJiZWQ0ZTYzNDJmNTcyYTFkMzA3YTI3MmUwNTE3M2Y4Y=
TM2MWZlOWYxYjljODIxMzM2NTIxMjhjOTI5ZmEwMWM0OWQ3MjU2ODM1OGFhOGZiZGM2YzcwM2Zl=
OTMxYWJlZTk1ZGEwMDJmODkyZDVkMmRmMDZhMjVjZDgzZTk4NmMwYzExZmFmM2JhMzQ2ZDdlMTh=
hOTFiOWRkOTJlM2JkMjg3YzM2ZWUyZDgxYTNiMWFiOWMxZDQ0NWFmMTAxYzk4MmZlODkxMzNhYT=
VhZWZlZjYzMDQ4Y2EyZTM3NTAzOTdjZTg4NGVhM2ZjNjY3OGIxNTA5MGZmOGQzYWZlYjZhYTYwN=
Tg5YTNkMWYxZDk5ODg3YzNiNWMyNGM1ODgwYTc2MDFlODg2YzQ3NzJlMDZmOTY1ZWU5ZDE4MmUx=
ZGVlYmI4NDY5YzI5ZDk2Y2Q5ZTZiYTU0MTY1MDA2ZWIyNmYxZWZmMTlkZjkxYzQxZjY1NjIwMTk=
5MmI4Y2I2NTk0MDg3MDZkNzM4NGQ4MGNlOTM0YmNlM2VlYjFmNjcxN2QyODYyZTAxNWRmYjQ5ZW=
JmMTliYzFlOTYxNWFjNTAyZmMyY2RjZDJkZGU5ODhkODZkNjJhZjEzNzBlZGQ4OTFlNzQ5YjY1N=
zQ2NzNmNzI1OTM2M2NlZTY4YjNlMTEwNjY4ZTNiMWM2ZGJjZjgzOTY5ODY3OTEwNGUyMWExNWVm=
MDAyMjZlODc3MmExMDg3ZDVlMzZlMjFjMjYxMmQzYTJiZmQ2ZTdlODFjYzAyZGYwNmU5MDUyOTI=
2OWNkYjVjYjliOWE1MGViZDY1NTcwNjFkNDFmMTg2NjM0NjgzODZkYmMwNGEyYTIwYzM2ZmZiYW=
UwNWJjYTU4NThlZTc3ZDNiZTQ3OWE1Y2MzODFkNGU2ZTUyMWEzZWI3NzZiZDg0YTgzOTFjYTA5Y=
2JlY2U2YWY2MWQzZDg0ZGJmNDM3ZGQ2M2NjNzE0N2IzNDA4MjAzZjczOWRlMzNjMDNhMDNmZjJh=
NmZkMTVkMDk4YzBkYjBiZmZiNGM4ZTdlMDU5Zjk3OGRiOWIyNjY2MjViMTg4MjJkNGU2NzAyY2Y=
2NjZhNTdkNGI5NTI1NGU5MjYzMzM5NTVjMGJmM2UyNDQ3NjY3YzVhNGFjZTg2YjcxYzJkYWViMG=
UwZDc4ZmJmYTU1ZDZjZTU1ZGU1YzQ4NjE4ZDkwNTVkZWE4MDhlOTI5MTA5YWQ4M2NlMmViODlkZ=
WEyZmU3NTdiMmIzYzJhMGVlNzdhMGQxZmJlYzI5NzdiZmQ0YjRkZTc3OWE4ZDVjZmI4NQ=3D=3D=
" title=3D"Meetup" target=3D"_blank">
              <img src=3D"https://img1.meetupstatic.com/img/email/meetup-lo=
go-110@2x.png" width=3D"110" height=3D"40" alt=3D"Meetup" style=3D"border:0=
"/>
            </a>
          </td>
        </tr>
      </tbody></table>
     =20
      <table align=3D"center" cellpadding=3D"10" cellspacing=3D"0" width=3D=
"100%" style=3D"width:100%;max-width:584px">
      <tbody><tr><td><div align=3D"center" style=3D"border-top:0px dotted #=
ccc;margin-bottom:8px;overflow:hidden;width:100%;max-width:584px">
               =20
       =20
       =20
         =20
         =20
         =20
         =20
                             =20
                   =20
                 =20
                 =20
                  <table width=3D"100%" align=3D"left">
                          <tbody>
                            <tr>
                              <td height=3D"15px">
                              </td>
                            </tr>
                          </tbody>
                        </table>
                 =20
         =20

      </div>
      </td></tr></tbody></table>

     =20
      <div style=3D"width:94%;min-width:220px;max-width:650px;margin:0 auto=
;padding-top:6px;text-align:left;font-family:arial,sans-serif;font-size:13p=
x;line-height:18px;color:#545454">
       =20
       =20
        <div style=3D"border-bottom:5px solid #fff">
          <span style=3D"background:#e6304c;color:#fff;border:4px solid #e6=
304c;text-transform:uppercase;font-size:11px">Wednesday</span>
        </div>

        <div style=3D"border-top:5px solid #fff;border-bottom:5px solid #ff=
f;text-decoration:none;color:#e6304c;font-size:28px;line-height:30px;font-w=
eight:bold">
          <a href=3D"localhost:1333?u=3DODUxYzU5NzYzZTdjNmQ5YjcxZTViOTgxM2J=
lNjhlZDViOTg2MDRhMDJlZjY5ZGE1MjNiNzQ1MzI4OTI3YWI3NGJiNDI0ZjI1ZTEwZDQxMTc1Nm=
U5ZjE0ZGY3ZTU0MmYwNWQ5OWY0OTliMTEwMjRlNjlhMjdiZjZkM2JmMmUzOTI2YzZlNzg1NThiN=
WFkNTA1YTUxMzY1NDRhNjU4MzJjMWNjNWFiY2VkN2U2MGJjMmE4M2M3Y2ZjYjVkZWExMDAyMWM1=
YmNiMmRhNjc1ZTM2NjM4ZWQ0YTM5NGU2ZDFmYzBjZmNkNWYyZjYyMzgwMmMyZWIwNTM1MjNiMzF=
hMGU1OWQ0MzE4YmIwMGJhMzAzNWZjNDZjZDdjMTAwMDkzYjcwMWM4Yjg3N2JjOGRjODkyMjhjNG=
EyYTZkYjdlNDI4OTZhZTYyMzI3NTY3OTA2MjUyYmQxZDFjODM4ODk3M2ZjMWNlN2ZlZGNhNDQ5N=
mEyNjU5ODllZmY0OWVjODc4MTY3YzQ0ZThkNzRiNmFlZTVmNjM4MTVjZjZhM2NlYWYzYTA1OTky=
NGQ5NjQ5ZmVjMDI5ZjA5MzQwNjRlMDZhNWQ2YWZlMGJjZmE4YTc4YWZhMDAzNmFlZjlhMTU3YTg=
xYzZjMWQ1ZDJmNTcxNzM3NTQxYTliODZjMWIxZjVjODE5Mzg4NDQwOTBjYmM5NTlkZjEyZjA5ZD=
AxZGRjNTNkZTQ4MDZmMjA0YThlMTA4MzFjNDZjMDE1NDY1OGMyODRlNjEzYWYwMWQxMGMxYWFkM=
DE5ZjU1MzQwMDYxNmZmNDdlODE1MWQ3N2Y2NjE4MDI1MDU5MmY2M2JkOWFlNmUwZDY4ZTJhNjFh=
MDU2ZGExOGEwZDljNTEyNTNmNTRmYTY3MmRkZGU2NTEzOTE1ZDQxNmFkN2FiNTIzZjE1MzQ5ZGY=
yY2E5YWY3MTU3NDU5OTVjZjY4MDEyMWZmZDkwNDIyZTNkYTYxM2E2NWUyMTIzM2JlZTAzN2ZkNT=
Y3ODQzYjYxMDkzZGI1ZGEwNjMzNzQ1ZDMwNzZhNjBiNDlkZmIzZWIxZDBjZmQ4NjFkMWJjZjljY=
jdkMGJkZDk4NDI0YWRhNjU2ZjY1NTkxY2M0MWQ3YTI4MTAwOTUwZjgwNDk5ZDBhYzcwODkzYzYy=
NGExZTM2ZjIzM2Y2MTA3ODA3N2RkMTI1NzkyZTcwMWQ0MGFkMTIyOGFjYzIxMDQ3ZDVhZmM0NGU=
3YTEwNDc2NWNhODc3NWE2MGJjYTE2MzUyZTYxNmM3ODI1YWE3MjZkNTJiZDQxYjg4NjM1NjVjYz=
RhM2ZjZGVlZjQ4ZjZiNzllYTBiN2VjMTVkYmVkNGUzNmNiMjU3NDBiMDEyNjcxNDhmMjI4YTY1Z=
mM3NzhjMzAwOTY2NmMyNWJmNzVhMTViYjFhYjAwMDE1NmY4ZWM3ZDM1ZjE1ZWU4MDc2MzhjMzkx=
M2Q1NzQzZjFkNGVjNDMzYTkwYTc3NDQ0OTIzMjAzNTM4MjhmNjU2M2I3MWU4NjFhMzY3MGFjZTc=
5ZTk1ZTkyZWMzYTJmOThjOWU5YzIwZDYxMDI5ZmQ5YzAyYmVmM2U4NTVlZDRmODBiYjc4NjYwZT=
YzMWZhOTViMTk4YTk5NTQ3ZmRiMDVmYmQxMWNiZTQ1ZWQyMDEzYmMzNGUwNzRkMjY0NzY4NTNmY=
zhjNTBjODRkMDM2NGFkYTFlZDNlMWUzM2Y5NTg1ZGIzZWY0NzgyZGQ5YWUzYjE0ODNmZDZjYTE5=
ODZhZjhlMWYwMDg5NmRjOTJhMDI0NmExMTQ4ZmE0MTdlZmQ3ZDM4YmU0MDcwMjE3OGZkYzlkNTN=
mZWFhN2M5NjQ4MTYwYzc5MGFiODU2ZmQwM2NkMGVhMjFlNTI5MzkyYmE3ZDQ2NzFjZGY4Yjk0OT=
U5YTQ3ZmNjOTdkNjlhODQ4MGNiOTUyMjAwZWE3NWQwYWU2ZmVlN2I1MGYyZjM2OTUyM2ViM2I2O=
DRjYzBjMDFlNjE1OTY0YzZlODdmYjA5NTA4NjhkMjhmYWVlZDBiNTljOGU5ODVmZTYxMjk5OTNk=
M2Y2MzAwYmE3MjI2YjQ1MWNlNzMxYWMzNmYxOThkZTlmNTdiNjg4NzQ1ZDJhZjc1NDYwMjc2ZDY=
yZjM5NDY5ODk0YTY2Y2IxNmE5MmQxNmY2NTg3YTE2NWMzZWZlZDVlMDYwZDZiYTM2YzcwNmExZj=
RkMDQ5MmQzMjU2ZWU1YWJiNWE2ZTE4NGZiZTQ5NzY2YTNkMzVhMmQxODAzNzYzYzQ3MWQxMGNhO=
TE0MzJjMmEyNjAxOGQwNGQxOTdjNDA1YTdhNzUyZDIwOGZlYWU3OTU1YWFjOTBkMjcyZTQ1ZTJl=
OGE2MTc4YTY3MjQzZDllYmFhZGM0YTU4ZTQ3ZmQ4MWU3Mjk4MDdiZWJhMWNjOWFjYjZiMzgzZmZ=
hNzRmZDI1NGMxNzI2ZDVmZjAyNWVhYWM1ZDA3ZWUwOTY2NTUxNmQxNWI4YTc5NWNhZTIyODIyNz=
czMzFiMDg2YjRlMmNmZDRhMTkzNWMxODgzMGMxOTYxYmRkZGI4Y2I=3D" style=3D"color:#e=
6304c!important;text-decoration:none" target=3D"_blank">
            <font color=3D"#e6304c">React-IL October meetup - Powered by Co=
dux</font>
          </a>
        </div>

        <div>
         =20
            React Israel
         =20
        </div>
       =20
       =20
       =20
       =20
       =20
        =20
        <div style=3D"border-top:1px dotted #ccc;margin-bottom:8px;overflow=
:hidden;width:100%">
         =20
          <div style=3D"float:left;width:50%;min-width:220px;border-top:8px=
 solid #fff;font-family:arial,sans-serif">
           =20
            <div style=3D"border:10px solid #fff;border-width:0 10px 10px 0=
">
             =20
             =20
             =20
















 =20

 =20

 =20
   =20
   =20













             =20

              <span style=3D"color:#111">
               =20
                  Wednesday, October 11, 2023
               =20
              </span>
              <br/>
               6:00 PM Asia/Jerusalem
            </div>
           =20
           =20
           =20
            <div style=3D"border-right:10px solid #fff">
             =20
               =20
               =20
                  <span style=3D"color:#111111">
                    Yigal Alon St 98
                  </span><br/>
               =20
               =20
               =20
                 =20
                 =20
                 =20
                 =20
                 =20
                  Yigal Alon St 98<br/>
                 =20
                   =20
                      Tel Aviv-Yafo
                   =20
                 =20
                 =20
                 =20
                 =20
                 =20
               =20
             =20
            </div>       =20
           =20
           =20
           =20
           =20
           =20
           =20
           =20
           =20
           =20
           =20
              <div style=3D"border-top:8px solid #fff">
                <table border=3D"0" width=3D"300" style=3D"border-collapse:=
collapse">
                  <tbody><tr>
                    <td width=3D"28">
                      <a href=3D"localhost:1333?u=3DOWRkMjFkOTgwNzk4YTdkMjk=
xYTJiNDZiZWMxZGJiYWJmNWM3MDExYjZlMzg1MDM2YzE3ZTFkMzkzZmFmMGNlOTMxYTlkZWU5Nj=
k2MDM0MTE5OGM5ZGQ5YjE1NTVjNGM3NGVkNTQ3MjljYTgwNDA2ZTdkYmRkYjRmNmI4ZjUxYzMwN=
jg1ODUzMjM2ZjM3MDg4ZmY5YjliNGE1YmExOWQ0YzJjNzRjMTYxM2I5MzFiZjk1NTk1MDIzZTJh=
ODNkYWJmYjlkZTZiZmYwZjYyMzMwMTFlYWU4MTM4ZmY2ZmJiNWJhZjBlMDBjZTA2NmJiMjA2Yjl=
mYjZkZjFhOTU3YzZjZDMwMTQyNWI2MThhNWNhMjFkMDBmM2M1ZDUyYWFjYzY0MzkyNGJmNWU3ZG=
Y4Nzc5OGFmMzE2YWM3OTZlMDYyOTBhOTU4YThkMzYxNTcxODA3YTdlMWJjMzA4ODQzZWExOTM1Z=
GFjYjBhNWVjZTRjYzQwZmEwNTdmNzMwYzU5YzE0ODRjYTk0ZGFiMjBiYWRlZjc4NjJmMzUxY2I5=
NWU4MzFmZTg5MzIxMGNmMWNiOWUxODY2M2YzYzQwZjVlMmY5ZGY5ZjY1MTQyYjk3ZWE4NjcwYzV=
iNGQ4ZjJmZmRiMzY2NjgyMTlhNzliMzEwMDJjZjYzMmNjMzRlNzgyZWM5MGE3Y2Q5OGQzMmExMW=
EzMDQyMjZkYzhmZjIxZTU2NWFiZDVmMzY3MjU1ZjRjOTNkMzdjZjUzOThmOTEyNzkzYjIxZmZiY=
TQyN2E4NjA0YzJkYTdlY2VmMjU4ZTAwMmNmYmYyZGRjZTU4NDcyZjNhMjQxMmE1ZGU0MTE4ZDQw=
Mjk2NmY4NTdhZjgxMGU5OWMzOGQ2OGFiNGFkYzBjOTdmNDBjZDE0NzAxZDVmODdiNTVlNjA3ZTM=
5MDExYWY2Zjk3MzcxOWMxNDExYjNmYzVkZWUzZTNmOTI4YzU4ZmYyNmJlMmVhNDY3YmY0ZTQwMz=
IzODkyZThlNWIwNGIwMDQ3ZjBiMDFiMDBkNzY5MmExNWU5MWYzNmM0ZmMwZDRiZTNkODk2OTJkZ=
WI2ZDAzZDQ2ZDdkMTRlM2VjNzdkMTA4YzhiOWEzNzdiOWRhNzQ2OTJkOWRiNzVjZGFmZmU5NTY0=
MmI0ZmQwNTkyYmUxMDA0ZjAwNGFmNjkzYjg5YWY5ZmUxN2E1YzVlMWQzNTdiODdlYjYxNWI2ZWR=
lNjU2Y2JhNzk5ZmM1YjdkYzM1YjM4MDMxMjMxMGJlNjFjN2VmMzE5YTEzZWY4NmM1M2Q0OWNhMW=
MyYWZjYTgyZDJlN2QwYjE0M2E1ZmUwYzMyZjFjOTdlNzVkZjcxMTkxZGNiZTMzYjkwODhkOWMwY=
mUwMmQzYjczZDE5MzI2YjczODNiMjhmMWFkNTJkYWI0YTVkYTEzYTZjZWI4YzI4ODkwYTIwMGRi=
NTRjNGMwZDNlNDU4NDA3ZjM4ZjM3NTM1ODhmMTEzYzY5NWRiOGZkMTNkZTg0NDgzZmM2NTM3MmZ=
iZTc4NDZhZjMzYWMyZjE5NWNjMWYxNGJiYjEwNmMwMTdlZjYyOGRmMjcyYzY4NzUxMTlkNjI0Nz=
RmYzUzNjg1YzExNzQzMWY2ODk4M2EzYjI3MGNkYjUyYjJmZGUzNjNlZDdjNzZmOThhYzEwYjRjN=
GMxYTk1MTA1NDBiNzNkZjIxZGU2MmVmM2RhMjI0YWM1M2IzYjgzZjgwMmQ2M2JhZWFiMDk4MTU0=
ZjYyMGFjZjEwMjZjZGE2ZjVmNWE2ZGQ5YjU3ZjFmMTRmMzRjZmEwOThhZDgxNTRiZjc0NWM3NzB=
kMmU4NDQ2ZDU0NmU4MDFkMTFmNWZkNjRiNjJjNmQyNjYxM2Y4NzUzYzk1MTg0YzU1ZWQ3NTA5Yj=
RlZDA1MmQyOTQ2YTBiZWMyNDJhNzIyZjg3OTA2ZGI2N2I5YTYyYTNiODhkNWI2Y2Y3ZDlhZWZjN=
2IwMWUzOGUzOWU1ZmFkZDQ5OTRhMzgzYTRjNTIyMTAxOTM2YzA3ZjFkMjQyZDVkZDljMmJkNDI1=
Y2JkMDM5ZmFmZjJkMDQzMWQ0M2Y4ODdlNWRiZTVhYzJlMDZlZmViZWJlY2M1OTRkYTYzZTBiYTA=
xMmM5OWViZmFhNzA1YjIwMDA2YWEwNzE2ODI2ZGViOTU5MzZhNjUxZWY4ZTkxMmM3NmJjMTU2MT=
kyMDdlYWFmZGU4NTRiMTM1ZWZkZmFlNTkwYzI0YjRjYTk3MjNlYzZkNmIyMzM0YWNjNGIxMDU2N=
zZkYmUyODk0MzJhMDcxZjUxMDFjOGZiOWViNDg1NWU0OGJiY2RjM2YxNTYzYWU0MWEzZDE2MGNi=
ZGU1N2VjM2YwZGVmYjk0ZDI4OTBjYTI1ZDE0NDkzMGQyNjhhNjIzZjYyYzBkYmE2MmNhYjBlMTQ=
1MjkyNTI0NTQyYzY2ODY3NDQwNjQyNWI2YjAxZDIyZjE4NzVjOTU3NDU3NWM2M2M3YmIyMzE4NT=
Q3NWY0MmU2NDU4YjhiMTljYmI4MDU0ZWRhYmNlMGE4NzM1ZThlOGU4YmQ4ODQ4OWE1MDI5OGNkY=
jhkMjhjZjdjNzBiMWZjNGMwMjdmZDEzYWYyOWJkMjlkYzMzMTQ4MDdjYjJiNWE5Njg0ZWQ2ZDE2=
NmU3ZjM5Yzk4OTZlYjk5ODcyYjg5YjY2NDk0OGUzNmYzZjA4ZWI3MWQyY2VkZmY4OGQ3OGMyZDE=
xNjMzMTljYmIzNWQ1YTky" target=3D"_blank">
                        <img src=3D"https://appboy-images.com/appboy/commun=
ication/assets/image_assets/images/6131205644145f38056fdd69/original.png?16=
30609494" alt=3D"Add to calendar"/>
                      </a>
                    </td>
                    <td>
                      <p style=3D"color:#57646c;font-size:14px;margin:0;fon=
t-family:arial,sans-serif">
                        <a style=3D"color:#57646c;text-decoration:none" hre=
f=3D"localhost:1333?u=3DMzcwMjlhMzcxOGUyOGU0ZDEyMTA5NmMwMjU0M2Y5YWEzNDI1N2I=
xZTQ5NjFkYTE2ZWY3NjVkZTg2MWM0YzRhYTZjMjhlYWFmMTVkZjQxYWZmOWVkYWU0NWU2MWQzMG=
E1OWNhMGY0ZTkwNjQ5YjdkOTg5MTBmMWU5NWY0OWQ2M2IwNmE3Y2RkNTgwZDliODY3MDdiNWM0Y=
TYyYTliYTgzOTE3N2U2YTZiODNlMmE2YzAxMTljZDY5MDBiNGQ0NTlhYzYwMTQzYmRhYWM4ODMx=
MDliMmYxODg1ZGU5YWI2M2EwNTMwN2EwYTU4ZjcwYjJlNjU0MzU3YTBkZGQ3YWUzNjBkNzY4OGU=
wNDNmYTEyMDkyNzA3MWIwYzIzZGEwZDcyMTRhYzFiNDUyMThkZjNhYTNlNDMwZGE2YTNjZDg3ZD=
E0NTRkMTlmMWMzYjRmMDcyYjUyODVhNTkwOTViM2I5ZDcwZGYyZmFkMjg1MmM0OTNkODAyYzM5Y=
zdlOWMwNzczNTNiMGY2NjJmZWU4ZmQwNTg1ZWUxNWJjYmE1ODhiYzNlNjU5Yjg2M2MzMWY1Y2Yz=
Y2RkNDAwOTEyNWVhNDE1NGQxY2YzZWE1MTQ3MDMzYjhjNjA3OGU3ZTc1Y2MxZTVmMjhkYTMzMTZ=
hNjFjNjRlOTllYzAxOTFkNTljYjRkNmM4ZmY1OWM0ZDEyMjBjYjFmYjczNjhlZGYwMGJkNzYzMz=
k4MzA0YTAxZGU0NmYxNzM5MDg2YjkzZmNiNTBmNmIzMDVmNDkyNTcwMWQ4ODFjOWE0MTcxODc0M=
TBlZTc0NGRmMzY4MjdhOTU5MzNiODIyMjVlY2NhYzlhNzJiMzYxMTVjYWQ0ZGY4NWRiNjU0NGFm=
NTQ2OWIwMzMwZjgzMjFjMmI2NDY3ZDE4NGVkNjY3NDkxMmIyMGNjYjIwMzdhYzVlOTE2NzQ4MmM=
wOTUzMmVkZGNkY2EwY2JkZjAyNzA3NDcxNzA4OTYyZGQ1YTQzMjg3MGZkMWZlMTg4MmIxYmJhOT=
AzODk5NjlkMmFmMzk1ODMzNjE3OTViZThlMzhjM2U1ZTEyYTMzNGVkY2UzYWI3ZmY0NDcxY2Q5N=
TQyYzExOTZjODBkZjkxNjE4NjU1NzA3YzVhOTliNDI1ZmFhZDBhOTYwNWQwODAwNDYzYWVmYWIy=
MGQ0NTRmMDA5YTk2NjBiMzI4MzQ2NjQ4ZGZlZWFhNDFkM2E4Y2RiOGFkNzhlZWMxNWI4NDBlYzV=
lMjU1ZjZlMjRhOWQ0NGZmYzBjMTg3NWY5YTZhZTgyMTQzNzdhNWQ3ZTM2ODhmOGE4YjI4ZTFiMm=
Y1YWUxZGYyZjlhMWM5OTllYTk1OTZhNTM2NDM0MDAwNjZiYmM1MWNkZWJiMmY1MDVjMWMxMWRhY=
zc3OGJjNjU2ODZhYjg4N2E3YTg4YTcwMzNlMGJhMWQwM2Q5Mjg2Y2VhMDhiMmVmMGFhNDRiYjkz=
M2U1ZjBmMTA2ZTA2MDI3YzU3NWE1YTFkZjE0NDdiY2I5NzA1YWI0MDE5YTkzMjRjYTBlMDg4NTM=
zMjRlMDk3NzkyZjAyYjM4ZDkyZDM1ODk1ZjRlNjQyMTRlODgyOGVmOWY2MDgwMTk0ODNlYmQxOW=
EyN2M2MWViNmViMjA2Y2Y4YWMzMzlhYzA4NWE1MDQzMjBkMDk3MzJhYzFjNDA3NGE5Y2I4NzcwM=
GY4ZWI2ZDhiMjljZDVjN2RiMjUzMWFjNmYyNWMwNTcwZmRlNmJkMjk3ZjUxMmIxNWI3OGI3NjYy=
ZTEwODRiMmIwMDBkN2VlMjEwNzc5NDcxNGUwODQzOGFmNWNmMDhhZjdhNTFmMjZiYmFjMDQ4ZGU=
yZWUzNWNhYmQwODFjNGFkOTgxMGM5MTQyMDBjODMwNjVhNTQ2NjRjN2U0OTQwZDIxYzE4MDlhMW=
ZiNzE3MWNjY2E5MGUwZDM0NmE1NGRlZGJiMDcxMTdiZTliZjA4NWM0YzM1NzM5MzdmZjk3Zjg1M=
jc4MmFiYmQ0YmVlNzY0NGExMTU2ZWE0YzAwODAxYjU1ZGIzN2UwNzk2NTgxZTBmZTQ2ZmNhNGQ0=
MzE4ZTM3NTUwMjMyMTRjZjAwMGY2ZTVkZTM1NmI0ZGIxNWQyYmE5Y2Y1Zjc2MWYwMGJhYTkyMTI=
3MTc2ZjkxZjYwZDYzY2E2YjUwMjFmYzkxMTk0NTFjYTNkODIyMzNhNDRlZjEyZjMxODUwNmY4Nm=
M4YzUwMzdjMTE5OTJkNzIwZjllYzgwYzFjMWM5OGVmY2Q4N2VhZjI2MTEwMWIxOGI3ZmVhY2NkY=
WRhNDFjYjQxMGNlNDVlMTk0YzQyNWUyY2QzNDcyMmNjNGJlM2ViZjQ2MjRjNmJmODdiY2M4NWQ2=
Nzg3OThjZmRkYmFhNzhjOGI5NjQ5YjViZTU2NWQ3MDNlYTcxYmQ1MTM4Nzg0OGE4NjlmYTdmOTg=
3NGZmMGZlMjZlNmFjYWE2ZWRlMDNjMTExZjQyZmUyOGU3MWEyNWI3MDQyMjIxNmJmOWY4MDZmZj=
QwNDlkZjdjZjgxMzBmNGU5ODI2OTZlMDY0ZWM1NGZhYmY3ZDc1MzZlODFkNWZkYzllNjE4NWVmN=
2Q5YWFmY2U0ZjBhZmRkYzU2M2QwMzNhNmNiNWU3YWMwODQyYjBkMGU2MDViYzNjMTAxM2ZiYmRk=
NmUwZjk0ZTNjNDlkNDllZTBkN2ZjODZjMDI1ZWNiNGJhOTMyNDA2NmU0ZTRlMmFhMTIwZWE2NA=
=3D=3D" target=3D"_blank">
                         =20
                            Add to calendar =20
                         =20
                        </a>
                      </p>
                    </td>
                  </tr>
                </tbody></table>
              </div>
           =20
           =20
          </div>

          =20
         =20
       =20
       =20
        <table cellpadding=3D"10" cellspacing=3D"0" width=3D"100%" style=3D=
"width:100%;min-width:100%">
        =20
        <tbody><tr>
                        <td align=3D"left">
                        <div><a href=3D"localhost:1333?u=3DY2MyMTY5YzNhOWEx=
ZDA0YmNkOGI0OTllNGEyMDJjYTdmMjM1NGM3ZDFmNDE5YWVlMTQyNzA0NTEzYjM0N2M2MjM0MDc=
3NDdlMzdjOTA0ZDcwZjhmOGU5NDYzMmZiMDVmNWYwZDkwMDhkOGQxMDBmMDQxZWE2YmY5NDRlMD=
A0YTZiZTVkY2VjZjIyMDZjZWNhNmJhMmRmNDRiZWQ0YmY5NDliMGJmNGE3NjI0NDUyZTRmY2IwM=
TcxYmIyZjllNTQ5MjE4MjNmNmNjNjIwNmRlMmNhMjc4ZDg0ZTZiNTc2NDYxNzU1NWJhZWYzYmM1=
NzI4NDU0OGE3Mjg1YmQ5NDZhNjA3MmE3Mjk5NjJjY2YzODczMzZkZjk2OTczZDMwM2IyYjMyM2J=
lMjY4N2U4NjgwZDIwMDNlNmFlNTYxNzg5M2ZjN2ExZWY5YWIxOGYwZTBjMmIyOGI5Y2YwODhiYm=
E1OGQ0ZjJiMTIxYjc0NDM0MmRjYWQzOGM2MGE1NjQyMTc5ZWIyZWYyMWRiOGM5Mzg4ODJjYjIwY=
TRjY2M3MmNkNzUxYTAyZTM4MzlhMmZiNTdiZDFmYjk5NTM4YTc1OGQxMmM5MTcwMzljMjI2MTc4=
Y2RlZDE4YTRiMGI1ZmI4OWFjM2QzODc1NWU4YTZlNDFmMTRkYzI3NTE2ZTdiMzg1YmIxZTZlNGJ=
iODQwNzg0MWI2ODdhOWVkOGQxMTc0NzMwMTIwNGJkNTJlNzcyYTkyNWZlNzZmYzczOTUwNGVjOD=
g3NWNhNTk5Y2E0NWMwMjI1NGRiODczOWNiMjI1NDViYjAyMWE4ZjA4ZGY5YWVlODdlYzkzZTg0M=
DQ2OTgwYTUyZTg1NGY5N2U2ODM5NTczNzEzYjA2MzcxZjA3NDExMmZlNmQzMmJjOGEwNjQzYTk1=
YTI1YWUyZjY2NDgyZjFlZTQwYmI4ZDQyMmFmNzA5YTI0NTQ2NWUwZDA2NzgxNTY4YTJjMjRhMzV=
iOWViNmYyM2NlYjZlYzIyMDY5ODM4NDQ1MzVmNGI4N2I5NzZkMTg1MTliZWJhNjc0ZjcyODc4Yz=
ZhYjUxYTE4ZTk2OWMxZWFhNDk3N2U1NjYxNjQxYzRlMzhhMWI2OTUxN2E1MTZlODk2NzBlMjZmN=
DA1MzY4MDk0OThlZjc5OWU5NzFhYWIxMWIxMjBmN2NjOTlhNThhNTcyZjU0ZjBmOGE1YzYzMjQw=
YzZkNTZlM2VlYzQ4ZWI0ZTExMzkzM2VlZjg2YzdiZDVjZTI2MWM2NTU3ZWRlZWYyOTcwYWU2NTk=
yMjVhNzVjNDRjMzdiNmM2MDE3OTBhNWQ0NDE0NmQ4YmMwNjI4MjRjMjI4ZmUxZTU0YmQwODQxOW=
U5NDY3NDc4YTAzZWM0OGNmNjQxYmVjODczMzU0ZWZlOTgwMDM1NjM1NTM5ZDgyZDM5M2U3M2E1Z=
GQwNDUyZjYzNjY1MjZhMTczODUxZTE0ZWIxNjkyZjNiNDM5MDA4YTE5NDgwMDJkYjRmZWI3YTg5=
Y2MxMWJjNzljNjQ1Njk2ZTVhOTM5YjZkNWM4YmY2Yjg4ZTVjMzdiOGQxM2E3OTc0MzY3NmNhNGN=
jNmY2ZTc5YWM2OTJlZjBlYjM4N2Y4YTAzYzMyOTFjNmY3YzczNmJhNjM4ZDJjYTI4MzZkZWRjZm=
QzZGRkMWM3OTBhYThkZmFmMTAyZGM1ZWYyZWE2MmJhYjE1Y2I1MWJjMDZhYmNiMDk5NTU2MzA0M=
jk0NjI3YmM4NmI3YTNmYTAzZjQwNTUyYzM2NzIxMGMyMzU3NjA0OTg3MmMyMmNiMzljZjk1OTE2=
MjFlMTZmMjRkYmM5NjUxOWRiYmZkOWNhMjhhYjMwOWMwNjExODYwZjc3YmI1MTg3YjdiMTRjZGN=
kODkzMTk2NWUzMjc2YWY5ZjI1OTI1Yjc3M2M4YjllNmY4M2MyMWRlYjEyZGExMjRmODViYzAyYz=
FjNjJmYmM5OTU4NjY3NjFjN2YxYWFmMmM5MjYyMDZjNjVjMDRkZjMwMzc0ZDBiMGM2YTg5YzM3O=
DBlMTdkMDQ3YzBjY2JhNDJiYjgyMmJiNTM1N2E3MmYxZjU5YjI3Y2VjZWIxODQ1OTFiOTNiMjk1=
YjAzOTkyMTdjMDJkODc5MDIwODU0YzcwNWMzY2RlNjBjMTNkYTA1YTNjYmZkY2NjNjFjMDc1OWI=
4ODUyNmVmNTExODhhYzQ5M2M3NmMwZTYyZTk5NmI1YTc4NzQxYWYzZGEzMWVmYjQwMzE4ZjllOD=
A1MmRhYjZkMTQ0NzFkZDQ4YWEzZTZmMzVmMzdkOGRkZjNjZjgxYTQ1Y2YyOWQ0NmMyYTU4ZTk4Z=
TY4ZDMxNTlkYmIyZTFiNDgyYzY1M2JmN2I4ZGFjNjgwMzY3OTdjNjk3OGZiYjgwMGUwOWM4Y2Vm=
ZWVkNGUxZDQwM2UwNjZkMzljMjEzNjM3NDRhMTA0ZDY4ZmVjYTBhNDNiNTk1Nzk4NjlkNzY2ZDJ=
mYThlZWZmZGRhMjczMGU5NDUwZDgwZWMwOWZhYzdlYTA1YThkOWZiNDUyZmM0YzJmZmM0OTIzYT=
FjYTNkYzM1ZTJmYjQ5YjZkZTFlYWJmOTIyNmM0NDJkOWVmODhiZGMzNjUwNTliNjAxYTdkZjIyZ=
jgwNjYwOWZiMWY1Zjc1ZmU1MTk0ODFmZGM2YzlkOTE4NWYxNmUzYjI1ZGEwZmRjNzFjMDRkMjMz=
NmMwYTgxODM0MjZmMjQ0ZmE3NGI1NmI3YmJlZDdmOTdiOTFjMDQ2YTljYjUyZDNjZDEzNjNhNDN=
kYjA5ZjlmN2UzZTYxNTgxZGMyNDFlY2M0MTJkNmE3NTA0MTQ3YzJhOGIyMzdjMDA5NDk3ZDE3MW=
I5MzNhNWUyODg5YjBkMGM4Y2RmNGZlM2U=3D" target=3D"_blank"><strong>RSVP today<=
/strong></a></div>
                        </td>
        </tr>
       =20
       =20
        <tr>
                        <td align=3D"left">
                        <div style=3D"padding-top:20px"></div>
                        </td>
        </tr>
      </tbody></table>
       =20
       =20
       =20
       =20
       =20
       =20
       =20
       =20
       =20
          <div style=3D"border-top:1px dotted #ccc;clear:both">
            <div style=3D"border:8px solid #fff;border-width:8px 0">
              <div style=3D"font-size:16px;font-weight:bold">              =
 =20
               =20
                 =20
                    258 Developers going, including:
                 =20
               =20
              </div>
             =20
              <div style=3D"clear:both;width:100%;overflow:hidden">
               =20
               =20
               =20
               =20
                 =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20

                   =20
                    <div style=3D"float:left;border:5px solid #fff;border-t=
op:10px solid #fff;border-left:none;border-right:15px solid #fff;width:47%;=
max-width:47%;min-width:220px">
                      <table style=3D"width:100%">
                        <tbody><tr>
                          <td valign=3D"top" style=3D"min-width:50px;paddin=
g-right:10px;overflow:hidden;min-height:50px;height:50px;max-height:50px;wi=
dth:50px">
                            <div style=3D"min-height:50px;overflow:hidden;m=
in-width:50px;height:50px;max-height:50px">
                              <a href=3D"localhost:1333?u=3DMmI3NTc0MTA3NDM=
xYzUzODRiNmQxMmVlNWRmYTI1Y2ZkODk2ODBkN2FkY2VhMDk4NTJhODJmMzdjMDgzMDYyMmJkMD=
NkY2M3MmY0N2JkYjZjYmJmYWRhMzEwN2RhOWU0MzhhMTkxZGZjMTdmZjc1N2U5MDI1MzU2Nzk1M=
TM5YzFhOWFkM2IyOTc4MzgzODAzNGY3N2E2ZDZjZmFkMDJlMWQ2MTkzNGNmZGIwYTM0NDdkNDRi=
OWFjNzQ3Y2VlOWEwZmJjODZhM2I0NmYxMzkwZmFkNWFiZjk5MTRmYmM1ZmI5ZmY3NzkwZDkzNDI=
3MzYxYzIyOTk4MDI5MTRiOWU5MmE4MmVmYjI2NzE3OWM2MjVmZGQ3NDI0OTk0ZTAxNzYwNzZkNj=
U0YmViYWE0MzFkOWFhZjU1NWU3NzE0MjFlZmY2MzZjZDQ5N2FmM2IzYThhMTQyOGMwNTRjNDI2N=
mNmYzQ2MDQzZjVkMzdlYzg2YmE4ZDg3NTA3NGU5OGI0YTQ5NWFhYWMwNGZmZmYxMTNhNzM4YmE3=
ODc0YWRmOTVlYmM3ZTM5NzdiOTg1OGQ5MTA3NjEwOWQ5ZjMwZTBmNWJiN2Y2NDE5NzQ2YTg0YWE=
2YjY1MzhlYzIyYjg0MzczMjQ1ZjViN2JlOGJlYTI4NzEyMmJlMjI0M2QwYTU3NGFhNjQwN2E2MD=
BmYjJjNDFhZjJmNTE1Y2E0NzYzMGY2MjAzOWI3ZmNiZjMzNmYzYThkODczZjQwNGI3MmI2NDlhO=
DY0NGJjZDUzMjJkNWU4ZjVhOWEzOTlmYzJiMTA2OGQxM2MyZjM0OGNiYzYyMmNmNWRhYWQ5NTBk=
NGFkYjNiYmI0Njc1ZDkyYWE2ZjAyN2U0ZTgxNGYwM2E4YjRmZTc1NmVlY2QyMTMzZTkyNjY5MTE=
3Mzg1ZmJkMGY5YjRhOGFiZDE0YjdlZTJjMjZkODYwYzA3M2JlNzI3NDIzNjVmYTgwYjA4OTgzOD=
Q0MGM1OTc0ZjcyNzAxZjY0MGUzOTJjZDU5NTBhMGNjY2VmNTQ4MDU4MDQ2Yzc4NzI3Zjc0YWJlM=
TIzZWNhN2JhZDViZTgwNGU5ZjYxYzA1NmI0NGIwN2I1NzIxMDZhNGY0N2JlZDc5MmU2ZWE1NjAz=
YjE1MWY3MDJkNDBhYjlhMGYwY2VhYWFlZjRiNzk2YjU4NDFhMGM5OWQ5NDllMWU1YzlhZmM2MzF=
lMjM4MDhhYzM3ZTU0MjlhODc4N2UwZGIyNzMwYmZlZTkyOWZhN2Y5N2ViZTNlYTEyMTA5YzNmY2=
M4ZGJhMmJjNDM0MDE4Mzk5YmM1YWVmODRmYTU3M2I3ZWI0OWMzYjY3ZWI5ZDIyOTJmNGMyMDNkY=
zA3MTE1ZTc0YWFhZDFmOGNjNzA3OTBmMWM4NGY1NGRmYWNjNTEzZDIxYjEwOGE3NDUwNjc1YjAz=
NmM3MjMzNTg3OTZmY2Q5Mjc5MmViMDU0YWE1NTE1N2RlZThlZmRjNGE0MTgyYjI4NDI2NjVhNDZ=
kMjI1ZWJkZmQ0YWM3YWViODZhMjJiM2U3OGQwMTQ1NTZiMjM4YWNhZjVlYTBjYmIxZmIzNjcwY2=
JhYjVlNmI5YzgyYjJhN2ZjZjNlN2I3MDJkMzFmNzgyYmQyMDhiZjI0MDE2NDdiOTgzNTdjOWFlZ=
mIxYmYxOGQ2ZGFiNGRlYzg0MDliNjM4MDE0Y2MyNTI5ZmYyMGFiNjAwODFhNGM1MGI5MTk4Yzg3=
MGQ3ZDdiZTc3YzQ2OGM2NWRhM2RjNGIwZDIxYTEzYTU4YjM2MjUzYmI2YWM5YWU0ZmUyOGI1YzA=
wYWE4YjYwOTk2M2Y0NzEwYmVjNGQwNDk5NGJlNzA2OTBhYmI0Mjg5NzMwNmQyMWRlN2FlNTZiYT=
YyY2IxNDA2ZTU0MWQ1MDg1NjI0NDk2NjgwNGY5ZjFjNzc4MjJkM2ExODBjNGM0ZTkzM2JjNGFhN=
TU2MDY5M2Q3MzczZWMwYTJiMmY4ZGFiYjBiY2U3OTIyMTg3NDJmMDQ4ZjE2OGEwODQxYTYyYTdi=
ODM1MDU3YzkyY2RjM2I4ZWUxYzU4M2MyODUwMmQ4ZGY0MTc3OTk0NDZkYWVhYjU2NzY0NGJiMGM=
wZDVlMjE1NjM5ZTMzNmU3OGVlM2QxYzA0ZWJmZjM2N2M3NTVhODVhNDJhOGU1ZjA5OGMzYzcyZm=
RhNzdjOWFmMzMyNGJmYzA2YzIyNjE2MGY3ODNhM2VkYTAwNjA4YzkyYTljYmExZTRlYjY0ZmZmO=
DFmNjc3OTc4Y2RmYjNlYzA1YzMwZWE4NzU4YWJlMjExN2Q3NjgzNzNiMTI3MzFmOTMyZTdmNTRh=
YmFiNzQ5NmJhMTdjYjZkYTVjZTA5NGQ0NjYzNzVkZTk3ZTVhOWJhOTAzY2RkM2RlMjZiZDY3OGE=
xYTJiZTZkNmEzMWIyMjk4ZjFlMmY2ZDkyNGM0Zjk0MGFkZmVlZDM2MWFmYWNlYjM2MjcxNzQ0YT=
hkMjY5YTNlNGY5MTVjMmUyMTY1NzI3MmQzNGEwNzg3MThhNmQyNQ=3D=3D" target=3D"_blan=
k"><img src=3D"https://secure.meetupstatic.com/photos/member/5/c/3/6/thumb_=
309683606.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=3D"width:50=
px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DZmNlNWU5MzE1OGR=
jNWVmZWU0ZTRmOTY2OWYzMjU4MTljMWNhODBhMjI0NWI4MDRmMTFhMmVmMTYxNDk2ODA0OTU5YT=
Y1NDk1YzMzMmI3NTA0YThhY2RmYzcyYzRhODlmYWU3MzU2YzM1ZDhhZDBkNDZiMTQzOTBiMjc0M=
WRkNGQzOTEzMjdmY2NiYjFhMGRhNWNhNDI0NjFiNTcyOGYwMTdjN2RhNGNkOTI1ODAzMjQ1NjA5=
NzZlMWM5NTNiODExZjgyMDg2NGRiNGYzOWMyNTI4ZTEyZTFkODBlZGI0N2JhNzg1YmRkZDJiYTM=
4YjA4Y2YyNjZhOTYxZmQ3MzJiYjcwMWU1Njk3NmJjMGQ1MzNhZjFmM2I1NTM5MzBmMmFhODY4Yj=
U5ZjViMTg0ZTJlNjExYWYwNTRiYWZlYzJlZmViODNjYmE5NTI3YWU1NzQxZTQ1MjUyYTI2ZGU1Z=
Dc1YjgwMmY2MWE3MGIzYmY1ZjMxYzM4ZGMzMDkxNDM0OTZkNWQwOWQyM2NlYTNlZmQwZjQwZWYx=
YTY3ODFjODY0YTlkZDM2Y2YwZjAzZjQ5ZmJlZDUyZTdlZWM1ZTlmMTllMzc1YzY3NDk3MTA4MGN=
lMWE0NDEyMWM4NWI3YjE3MmM0NGNiMGQ1NjNkMTllYzJkMDM1MzM4MGQ5NTlmNTcyZjhiNzBmND=
U4NGE4MDQ0YWQ3ZWNhZThjMTJkNGIzZjQyNjYzODg0ODQzNDkwMGJmN2U3NDNlY2E4MmQ0OWMxM=
WJkMDZlNmQ2ZjFiMjI0ZjdlNjEwNWRiNjBhM2ZkOWJhZTEyNjY3NThkYjg0NTViNjJmYmExYWRk=
ZThiYmRjMDFmYjQxOTgzZDJhNDc4NTU4MjgwNTIyZTNhODMzNDk1OGNlZDA2Y2QxMTkxMWRhMmQ=
4ZDBmY2M1MGU2YWIyYzRjZDI4NmNiOWRkNjA1MDI0MjdkY2E4ZGQ0MmE5ZTQ0NzI0NzI5NDU2Zm=
M1NDMzYjRjNjRjOWRjMmMwMGVmNGNlYjY2Y2Y5OTU4ZjU2MmYyYjczYWRlNTUwYWQ0N2I3OTViM=
jA1ZDJhZjczYTBlN2E4Y2ZkZmE4YWQxZTA2NjAzMTc1MWFkNGY4MmNlMzAzYzU3NzJjMGUzZWM2=
ZjgxYWEyOGZjODU2ZTVlZjkzYzU2OGZkOGJjZDA2ZTRmNjI5NGRkN2M0ZTQ2NmQxNDdmOGMwOTc=
0YTBkMDEyOTkyYjc0ZTRmM2M0ZmRmMDM1NTJjNjA5Njk2YWJmMGU0NmMyNDNhZDYxYWQ0N2ExM2=
ZmMGVmNzM4NGFkZWYzNTUwMTI4NGQ4ZGQxNGRkMzM0ZTJjZDhjNmEzNmUwNmUxN2EyOGMxYzFhY=
TUzYzY0NWNlZWIxOGJiZDc5YmU2NWFlMzMzZWEyMTZmZTZlYjliM2JkZGU4NGJmMTY0ZGMzNjU0=
NjY0MWRiMTNiNzg1MTg0YWYxNjMwOGRmNzg4NTU0MzM3MTdlMDljNDZmMDUyMDlmYzJlYjQ1YTV=
jM2I5ZDM0MTA2NjRjNjk3ZDA0NTZkMTFmYjJiZTM3MmQ2ZDJhYzc4ZTQyNjBkNmZhOTI1YzM4Nm=
UxMTdhNGFhNzJlZDkyZWIwYzhiMzQ1MWExZTY1MWRiZGNmZjg0Mjk0YWNlOGVjMjUwZDcxZjgwZ=
GVhMzFmN2U5NzBiODc0MDc3MGQxNTQ5ZGFjMjA1YTBjNjg5ZjQwYjU4ZjdlMDVjZDI5Y2JlYjU4=
MDhiNmU5Mzg0NGM5ZTE2NDA0MDRjZDQ3MzZjZGU5OWZiYjJkNTA5YTllZGI3NDY4ZTA0MzdhZDc=
0MDEzM2IwNzVhODE4YTBmOTQ2NjA4YWMxNDFmN2YzYTdiNzhhMWQ3ZDZiY2UzNWQ5NjQ4NDRlZW=
JhZTkwNTE1NWYyZGM4YjFkODM5M2FmNTMxNDA1NjYxNjRhNDRiOTllMGE2NDBkMzkxOTY3OTUxY=
jkyYjMyZmYzNzIxMTQ1MzA0ZTQyMTUwZjc3MGNlNmFlZDJkZjFkYWI4YTdmNzZkMDhjYTE2ZTRl=
MjFkOGNhNzg1ODA1ZDVkZjI1ZGZiMzczYzBhNjAwN2FkYTAwOTMwNjk0YjlmYmU5ZDc3ZDI5MGF=
jM2I4YzJhZjE3ZmNmYzdjZGYxZTZmZGYwZjJjYzAzYzUzOThhZWU2ODQ1ZmNiMTQwZTM0MGYyMz=
NhMmIxNjcwZjJmMGIzNjNiY2Y3YWFmMWU0ZTk0NDI1ZGI1MzYwYmIzZTJjNDg3OGZhZWIzNDkxZ=
Dk3ZmEzNzEyMGVjMzBjNjllYTc5MmIzZGU4Zjc5MDAwYzA3ZDBjN2IyMGUxZWVmY2Y5MTRiNjU0=
NWI2MjFhNTRkOGE1ZDY4ZjhiMGU2Y2FkYmY1ZDdlMzI0NzRkMGRiMjg4MDI2MzE0NWMwODIxYzg=
1NjVjMTM0MjA5OTU3ZjVlZmFjNzk4OTlhYjAwMWQ5NDYyOTMyNjM5MjI3MTllMjJiYzQxZmRmYT=
BlZmIwMDA2MTJmZDUyNDBhMzA4N2IyZGRjM2MwNjUwODc3YTFhYzNkYzI5OGM2MTgyMGEyYTU0M=
zg0NzJhMA=3D=3D" style=3D"color:#0066cc;text-decoration:none" target=3D"_bl=
ank">EventHandler Productions</a>
                            </div>
                          </td>
                        </tr>
                      </tbody></table>
                    </div>
                   =20
                 =20
               =20
                 =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20

                   =20
                    <div style=3D"float:left;border:5px solid #fff;border-t=
op:10px solid #fff;border-left:none;border-right:15px solid #fff;width:47%;=
max-width:47%;min-width:220px">
                      <table style=3D"width:100%">
                        <tbody><tr>
                          <td valign=3D"top" style=3D"min-width:50px;paddin=
g-right:10px;overflow:hidden;min-height:50px;height:50px;max-height:50px;wi=
dth:50px">
                            <div style=3D"min-height:50px;overflow:hidden;m=
in-width:50px;height:50px;max-height:50px">
                              <a href=3D"localhost:1333?u=3DOGZjYTZhNGExYWF=
kZTJmNThkZjc3YmQxOTg2OGNmZDJiM2MxZDcwMTEyZmRjNDllMGM1MGZmNGMwMmZlZjJjYmI3Yz=
Y3Yzg1OTZiNGViZmYwMmM2OWFiMTJjNzBkY2JlZTVkMTg4MGRjYWJlYWNlNzMyZGMyN2JmYzE5N=
mYwOTU3Zjc2NzE2MmZkNTQ1Y2FmMTI0YTQwZjcxYTg5ZDlmY2Q1NzUyNmE0Y2NhNTM2MTdkMDAy=
M2EzZjg4ZWRmZjM1YzUwN2NjMTBiYjAzZGIxYjk5YmYwNDg4YjM2ZTRiZGIwYWUzN2NlMDdiMjU=
yN2MzMGFjODAyMWUzMmUzMmUxMDc4ZmQ5ZTlhNzQ0OWUyZDc0ZWEwNDFkOTM0MjRjMWQ5ZTA5Zj=
ljMGVkOTk4ZDJjYTg4NGY0MDA2OThlMzA4MzI3YTNlZTJkZTVmZWY1YTEwYjNiZjQwZTFlNDYwO=
WNlODE5ZWNhOWI5N2FiYmQ3NzhiZTljY2M4ZDdkY2U1ODc3MzgwNDI5YTczYmYzMDg1ZTM0MDJl=
MTFkNzI2NzBmNDk4NmVlNjBkZjNiMTdlMzFhZTI3OTc3NjkyZjQ0MTA5NGM5M2Q1OTc2MmI3NjY=
2NjgxN2RmZWU3YmNlNTM1MWJiZDczZWNmOTQwYjRhZjVjODkwZmQ1YjkyMjc4ODUxMDQ0Mzc0Yj=
I5ZWI3OTFiNmU1MGFlODAyYjc2ODUzOGIxZGNlMjUxYzc1NTMxZTQ3MTMyMjUxNGZlZTM2MzBkY=
zFmM2FhY2Q2ZjJjYmExOGUyZTkyZTRiNThmNmY4MDJmZGNmZDZjNDdjOTUzZjM3MTEwZjBmM2E0=
OTRiYTk2YjJiMmM3MTdhNTllYzEyZTczZDRkODYwN2E3OTRkM2RiYTBhZjkxNDY2N2FlZTU5ZDc=
0MmJmODYxYTZlYjkwMWIwNDRiN2ZkMWE1NmIzN2FmMGZlMjllODJhMTE1NjQyZDU2ZDU4NTBlZT=
c1MWM5ZDU3YmZjYmFkNTY4ZjU4MmJjYjk3MWE1YjRjM2Y3MjE0NGNjMzYwZDcwZjNmYzlmNGMzY=
zVkYzlkYTExNjM0YmQ5MDI4MWQyYTMzNDI3YzU2MWE5ZjZmMmM4ZTAxNjdkOTYwYjBmYzk4YjU1=
NzhmODcyNDY5YWQyYTY0MWU1MDg1NWUyMzk0YzUxMjk3MGVjMTg4ZjZhYzI0NzQ5MWNhZWQyOGU=
0MjBlMzY1ZmNkOTYwMDNjZTliODM4Y2I3NmQ0ZWJhNTIxYmQzZTE5YzUzODU5MzRmN2Y5MjhmNj=
JhNTI5ZjQ4NmE3ZGIxMDk1ZTdiYjJjM2Y2OTA3ODQ2ZDZlNTkwNTc5OThiNjc1NjcwMWM2N2M4Y=
zllNjdiNjEwYzI3YmVjNTczZjk4Y2E2MWYxODhjOWI0NGQ5NzBhMjZhMmE1Zjg0OTEzZDA2Yzk2=
N2Y1YTExYzNmMTAxODlkYjI1YWZlZThmNWQ0YTYwMWEyZTQ1YmUzMmVmNTczMzA0YTQyNTBjZmV=
hZmQ5ZDliZTZkNDNkZTE1OGQwNzA2YjQzNTVjYzliMDdhN2RhNTVmMTlmNTY1NzU4ZTE0MzliNz=
cxNmFmMjAwMWUyNDk4Y2NmNDA2NWY3ZWNkMTQ0MmRmZjZjOWVkMjQ1NjJlZDc2NTdlM2MwY2QwM=
DI4NjI1OGNiZmE1ZTFkZTA4MGZlYmIyNTVhNThlYWFkZTdjM2Q5MjliNWNhYWI2NGM2YmMxM2Fl=
ZDM3NjFiNjczODRhMDA3ZTNjZDhlNGE5NzgyMTI0NDFiYTljZTgxMzU1MDcwNDU1Y2ExOWZhZTJ=
lZDY2MTVmZDAxNTI0NDNiOTNhY2NmYTMxODcxMjQ5YmM0OWQwNWE1MDRkNzI4MDdmYzYzZmJkNz=
A2YTgxZWYzNWJiZDRmYjU5N2U3N2Y0MGI3YmI5MjEzOWUwNThmYmJkYjkzNzRhNmE4NjAyY2Y4M=
jExYzQ0MjBlMzNjMTU4OTYzNTY1NWQ4NGQxZmYxZDRmOTJhMDMzNTMyMDQ3NjU1MDVkZjU5MTdi=
M2UxNzVjZTA2MWYwZmFjNGU5M2JkOTRlZmE3NjkwNmMxMTE2NzY1ZWU5ZTFlZTM2M2MzYWJlMzI=
5NWY3MmQ1ZDEzOTU5ZjJiNWE5MTRmOTdjYjQ4NTMzYjZlYzNjMjc1MGRmZjBjNjNiNGU3NWE0Mz=
QwNWY1MGM0ZTU5ZTg3YmY5OGU5MTMyZTg5MDlkNWJhYmIwYmNkMmYwMDdmN2QxMjg4MGZkMWI2N=
mQ3MjJlNmUzYzUxZmQxODc1NWViZTUzZGEzZDczYTYzMWJkZjQ4OWEzYTVmZGEyM2Y3N2JiNWM0=
OGFlMmRmYmEwZGI5MDRiYTc4ODFmN2QxMmJhNDRkMWMzYmFhM2Q0ZTZlODg5NTdkZGUzMDMzMzY=
zZjUzZjUxYjQ1NzNiMjZmMzgyMzEwOTA2YzJkYzA5ZGE4Y2ZkNDI3ZmM3MDJhYTA4M2Y4NDc0MT=
JiMDQzZTRjYTcxNzBmNzFlOWJlMjE3MTFkOTQyOTQ2OWRkYzZlNGY2ZTU1NWFk" target=3D"_=
blank"><img src=3D"https://secure.meetupstatic.com/photos/member/9/1/0/e/th=
umb_312457134.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=3D"widt=
h:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DOGIyNjBiODBhOGI=
yOWEwYzE3ZDllMzEyZjI3NzRkMWViZmJiNmUwMmU1Mzc0ZjZlNGM1MGM3ZDFjYTNkNzkzNTQwZG=
MzMDA0ODcxNTEzOGM5YWVmODM3Yzk3ZmYyN2Y5YjIyNjNkOTM3YTMwYzY3MzFiYWU4NTcwNDJlM=
GI1ZjJjNTdmOWI5MTNlYzRhMDcxOTc4NjE0ZGI2NWQ2MDNmOTRhN2Q5YmVjMjE0ZTJjMDdjZDc0=
MTBmZWE5NGU3MmMzYjAwOGM4MmI5YWVmY2IzY2JkMTYyODhjZTg0NDM3NTMwZTExNzE0ZTc5Nzl=
lMzZjYzJlNWZkYzI4NjdhYTJmZjQyYTZmNmU2MTAxYTljNjgzNjhjNzhiZTVkZTVhNzY3OTk0Nj=
BlZTM3ZjdkN2FkZjQwNmIxNmMwYmQxZmI3MDYyMWI4MmY5ODVhNTA2NzA0N2M5OWVmZjcxYjg3Z=
jMzYzZjYWY4Yzk5YWY2NzM3ZThiMzdjOTU3MDQzMTg2ZTY0MjNjYTk5MGQ0NjIxODYzZDEzZWVl=
MzIzZTRkNGMyNTlhMjhlMjRhOTdhZDU0ZTgwZDZiMTdlMDk4ZjMxODEwMzJjNjMxNGNlZGZiMDc=
5ZmRmMjNmODNmZGZhMzNmMDNiZmMyNDZhZGM1OGE3NGZiNjdmMjFhZDUwNDYzNjRiYzhkZTg0Ym=
FiYmY3NWNiN2IwMTQ4OGI0MDg3NzhiMDQzOTM4ZDUwODk0OTQ5ZDc5MTM5N2Y5MmQwOGRiNWQyO=
GUyMjczM2M4MTU4MzAxMDAwNDRmOWQxMThjMGZhOWJhOWMzMTRmZjc0OGRhMDdjNjZiZjNiMDkw=
YTI4YzdjNzNiZjE0NWQ5NWE4Nzk0ZTlmZjgxMzUxODZhYTkyMTc3OTM1NWVmOWE1NjYzNmUzODA=
3YTdkZmQ5MzQ4MWEyMmZhYWM3MDRiNmJhYTFmZmMyNzUxYzljN2ExMzkyYzNlOTI0NTQzNjU3MD=
ZkMWRmMjU4ZjQ0Yjk5OWZlODBmMDUyNWJkM2RjN2VhOTI5MzNlODJhZTQxMjM3NzZlMGEyNWNmN=
jE2ZjBmMTY4ZTIwNTM3ZDgyYTA0ZDM0OTBjY2U5MmIxMWRhMzBlMDQyNmRjYjY5YzAyYmY3YmM1=
NTgwOGE4MmFmMmI5N2I2ZTJiMGVjOTM2NWJhYWZmYTY1ZTY1Zjg3ZTk5NmRiZWVmNDM2NTNjYjB=
mNTczZTU5OGIyNTM5ZjVkNmRlOWFlNjg3YTJhZTRiNWNiYTYzYTJlNTVhNzRkY2U3NWY0ZTNiNj=
MxNDM2NDAxZTFhYTFmYzBmOTRlMjgzMjAwNWRhOWM2YmVlZDdjMDFiOWYxMDI0ZTA2N2YzODg2O=
DEyMmI3ODExOWVmZDhkNTIyYzZkMzFiNjM5YjVlZDcyY2QxYThhNGNjNjQ1ZjFhNWFjOGI2NTFj=
NTI2MjA0ZmM3ZmRjY2I2MmEzM2JiZTkwZjNlZGM0OTYzY2Q0ZjZmMmY5OTY5MzJiOGRmY2Y3ZTh=
kNWI3ODg5N2ZkOTA0ZmJmY2ExZGUwMjk0MGNiNjA0ZTA4ODY3OWZiMDczNDFmZDE5MmYxODk1ZT=
ViYTE0ZTFiZGRkNDcyNTRjNjk4MzY3ODcxNDA5MDgzOWZkZmU1M2M1OTNlZmM5ZGQ0ODRlMmNmO=
DliNzQ5YWQwMTU2Nzc5NjJmYTI2ZjM2YmQxYjc5OTMxMWNlNzFmZmZmOGI1YTU2MjYxODVkM2M5=
YjBkMGU0NjljNzM5NmEwZmI0YTJhYmVlZmQxMWIwYjI2OWUwMjBkNTRhYjkwMzUyMWRiMDFjNWR=
iMzRiMDg0NjdmYWM1NDJhMjNhMmFlNmQxYWYyMGIwNjZjODI1N2VkMTA1MWRiMThkMGI3MGM4MD=
I3YWMzYmUwN2QxZjAyZGJiMjZkMTU3YzhhMmE5MzA2MTdlZjhmOTU2Njk1NTY3YmMwYzhlYmY0M=
mZkMjI0NTcwYjMzZGMyMDEzNjc0NzNmYmM5NmZlMjAyMGEyM2M1ZjY5OGJiY2RhNTAwZWYzOGU5=
Mzg2MmVjZWQ0ZTY2YjFhODcxNmQwNDEyOWE1YzI4YjJmNTNmNDY0ODc4NWZiYWEzMmI4MWE2YmV=
iYTVkNDBhYzYyMmE0NDU1NjZhZjE0NmNlMjlhOTBmNjc5ZGI4OTdjMDI0YTM4MGQ3ZmM4MWZhM2=
U4YTYwYjNlMWVjMGM5ODkyYmM1MzIzYjhmYzk5NjIzYWY3Nzk3M2EyMDg5MjVlNzYzNWU1MDdlN=
2Q4ZGRmMThlZTliODdjZjNiOTI0Yzc2ZmI5NjU5Y2IyYmQ4Nzg3NjUzYWEwZjg2ZTkyMjkxMmU0=
NTZlNzFiZWU0OGM1N2Y3ODQ4OWQ0MjRlMTE5NGU3MTgxYjVlOWQ5Y2Q2YjY1NmE4NDIxMjU2YjZ=
jMWRhMzgzMzAxYzc3NmM4NmMyZjFlNmUzOWVmODFkMjMyMTMwN2I0NWQwZjA5NDUzNDZiNzMzMm=
MzNDcyMjFiZTU5Zjc1YjMzMmYxYjJjYWI1MTIzNmM0MWJjM2JiMWJjM2E1ODUzYTBiMmM1YjcwY=
Tcx" style=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Rotem B=
ar Sela</a>
                            </div>
                          </td>
                        </tr>
                      </tbody></table>
                    </div>
                   =20
                 =20
               =20
                 =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                     =20
                   =20

                   =20
                    <div style=3D"float:left;border:5px solid #fff;border-t=
op:10px solid #fff;border-left:none;border-right:15px solid #fff;width:47%;=
max-width:47%;min-width:220px">
                      <table style=3D"width:100%">
                        <tbody><tr>
                          <td valign=3D"top" style=3D"min-width:50px;paddin=
g-right:10px;overflow:hidden;min-height:50px;height:50px;max-height:50px;wi=
dth:50px">
                            <div style=3D"min-height:50px;overflow:hidden;m=
in-width:50px;height:50px;max-height:50px">
                              <a href=3D"localhost:1333?u=3DYzJjMTBjYjA0MGE=
xNGI4MTBkMDlmZDE0MzJmMmJkYzU3ZjdjMjQ0ZjlmNGFkMTZjZjdjY2FkYWUxYTMxMDI0YzQzNj=
k0MTI0NDQzZDgwOTU1ZTkyYTQ2YjRiMmYwNDQ5OTdlNGRiOTZjZDc5MzRmNzZjY2M2OWYzYzIwM=
GFhMTgzZTBiNjk5ZjhkMzczMDEyZDllMGE3ZmIxMDkxZGVlMTUwYjZlNTJjOWRhMjY3MGU5YTkw=
NTcyNTRhMjQ3OWI1MGQ1MmQ2NjA4MTBjOTYzNjdiNmNhMjEwMjE0Y2YwOWI3OTNkODM2ZDRmODQ=
zNjVhMWNhZTlmNjc1NjIwNjhkYjNkZGUxMjlkMTUzZjI5YmJiOTk2MGMwYjBhMjc1NzI4NTE1Mz=
FkN2NiNWZkNDY0Mzg0MGViYTc3NzU0YWE3ZTIzMjZhMWQ3MTE5MDBjYzU1OWRkZGFhYjMxYWYwY=
WZlZGVhNWNkMGI5OWJkOTg3NTBmNzY5ZjljYzhlMGM4OGYxM2I1YzJhOWQ1NGM0YTczMDc2MTQ4=
YzNiYjdjYWRkYjc3ZjY5ODVhNWJiMGMzODU2MGMxZDBlYmZhNzNhN2UxMmM5OTgyN2VjMDNkYTQ=
2NmU2YTIzNWJlMGQyMmEyYmRjOTk3YTM5YWRiZjg4MWYyMWU4NDk4YzhiMTE4ZmJmZjE5YTdkYT=
JmYmNmOGUzNjdhNDhiOGQ3NGE1MDE4OTMyNDc4OWU3YWY3MWE1NDg2N2NlOWJmYzc3OTg5NDE4O=
WRiMWYxNjI5OTA2ZDhjZjIyZjFjMjAzNWRjZmM3NmU0MTJjMjE1Yzc4Njg0NTliZGJlNTY4MmRl=
MDJiY2VmODU3ZDNkYzYyMTY3ZWMyYWFmZDEwYjFjZDFiZTEzYzJhMGYyODY1YjU1Y2I2MWYwMTl=
mZWEwMjU5YjU4ZjViNDIwMmU1Y2Q0MWNiMDNjNzU0YzhmOGI1ZDUzOWQ5YzE0ZDJkN2I0ZWViM2=
I0NjIzYzlmOGMyMGQ2YTM1OGIxMjkwMzBiNTc4ZjFiNDRkNGZkYTY4MzdhZDBkZmNmZDY4NGNmO=
TgxNzIzYjUwNTA4ZTRiOGI1ZmFjZWUwYzcwZjU3YTMyOWM2ZmIzNDE3M2Q5NGYyMzc2NWE0YjI4=
ZWExNmZkNjYxYTQwYzVmNzU5MGQ3NjQxZDMwMGZmZjhkMjFmMTJkNzE5NjIxZWI3ZmZkOWJhYTJ=
iNTg4OTkxMTIwM2Q0YmFjOGZlMWFiMDAzZDkwNmUyYTIxYjQ3ODJjZDc5MjZlYjI4NzIwYTNlYj=
Q2NGU5ZGExMjU5OTNkNWJjY2Q5MGFmNmE5ZjNiMTEwNjNjYjcwZTEyNTVjMGM0YWM5NThmYTYwZ=
DY5YzM0ZGQ0YTFlNWVkZmYzYjg4NzhlNmNhZGY2NWRiMzNjMzA3OWY5NzgxMDJhMTYyYWVhZDM3=
NDFhOWE3NWZkZGExYzExNTVlODk1ZDI1YmZmN2NkYjhkYzkwYTZkZjM4YjU1MTUyYThmMGVlNWY=
xZTYyNzU0YjkxZTc4NzBlZTczNWMxZGZhZDE1Y2FjMThiYWJhZTgyZGU3MjcyMmVjNmJkNDBlMj=
Y1OGNjYjhkMjMyNzI3MTQxYzRjYzQ5MGIyN2M5N2YzY2ExZjIxZGQ1MGFkYzA3MDExMjA3NzM0M=
jBmYTRlMTNiNjliZWY1NzAyM2EzNDQ1ZTYxMzQzYzM4Yzg1MjE1ZDdlZTYxNmI2NzZhYmQ0MTI3=
MzMxODU4YTZkOGY5ODM2ZjUxYTBhZGVkYjVhZDRkZDk1OGZjMDllMzM3NmQyNzliNDMzZmM3ODc=
5NTU3ZDhhNGRjMzAxMzIyNTMyNjVhZDViY2Y3MzQzZWE5ZjU5YmYxMDIwM2MwMTIxY2MyZjhlN2=
Y0NTY5NGRlNTZkMTk3YWMxMzgwMjAyMWUyMmUyYmY2YTAzZjA3MDJkN2FmZGRiZjc4MDNkY2RkM=
jc4ZGMyNjYyNmYwMTc5Y2EwMDc2OTcyMjYzNjk0MzEyNTg5MTAzZWQ5NWJkNWQ2OGEwOGUzMjI3=
ZjFiYzQ0YTRiZjU1OTBlMDIxM2IxYzYyMzc5Yjc5NmFlNmUyNWY5OGUxYmUxMGQwZTlkMDZlM2R=
hM2ZmZTQ0MWMwNDNiNjRiODEyZTQ5MGQ3YzMwODBmYzg4OGUxYTdkOTczODA5NWM4N2E2YTQ4Nz=
E5ODhhNWYwYWNmOGFiMDQxYTkwNGU5MTBkZjkyYzZlODk5ZTM0ZDMyYzRhMGU2MDU5ZTYzNTRmY=
mNiMWRmYTY4MDg1ZTYyOWI1OTJhNWFhMWFhYmM0NGI1OWQ2YWY0NjdmNTAxNzNkOTZmMTFkYzNl=
ZjllZGFjNzc2MTc3ZWQ4YzI1MDU5ZTFjNDk1NDcwZDNhODk5MzlmNzc0MjA3Y2Y3YTQzZWQ4MjJ=
mZGQ1YWJlOGJmMWVkMWIxODlkMzdmMjc3NDY5NGFjZjNkMjQ4NGVkZDJhOTlkZDI5NDBlYWVlZj=
IxYTg4OTk4NTA0MWJkYzQ3ZGRjNmM2MTNjMDNkYjZkNzIyMDg5MzE1MzAyMTEzZGUyMDc5NjkxM=
jkxOGVkNTM4MjI=3D" target=3D"_blank"><img src=3D"https://secure.meetupstati=
c.com/photos/member/9/9/1/7/thumb_307479191.jpeg" border=3D"0" width=3D"50"=
 height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DYjRiYTQ2MGRhZmU=
3YzQwZWExMWZkMWUzODM5MmE2NjFkYzY5YjdiMzVlMzRkYzRhMWM2OTVjZTQ2MjVmMDA1ZmU1Ym=
VlNTVkNjU4YzMzYTMxNjA5YjUwYjgzZjZhYTkwMmJmMzk1M2UwOGFlNGM5MGM1MzhkMjAzN2QwY=
zk2YTdlNmU2MmI5NDE3ODY5ZTk2YzIyMjdkY2RlZjYyN2Y3MjIyYTBiYzNhYzA0ZjliMmUxMDVk=
NzhhNGEyNThiMGViZmMwNzFlYjY3ZmFkN2U2NzExNzkzYmNmMjRhOTQ5YWU0YzFkZmRiMjVkZDV=
lZmE0MDAzNjlhZTMyMjJhMzM3ZWQ4ODIxZjA5YWUyMThhNDA3NjliODNlMmIyZGNhNzNmNjZiMG=
EyYjUzY2RhOGYwNjljYmE5NjA5NDI5ODNlNTM0ZmM0OGZkMDYzY2FlMzcwMzg0ZWYyY2RhYTAwN=
jBhMWVjMjVhYzRmZjYzMmUzODhmMWQzNjk1NTRhNTBiYWMzZDM2MGRjMWQyNjI1MzVjMGE3MDVj=
N2MzZTc1MGFhODE5YzI0YTM0NTM1ODY2Nzg4Njg0ZGZhYjlhNDIyMGE0YmQ5YTBkZDU5OTlmZWV=
kNjIxZTVhZTQ3NGJhMDY5MjZjODZmZWU3ZDA4MDQzNWVhNjE0NzQ2ZTAzZDQxNTY5MGE3YjQzYj=
g1N2RkYTZhMWFlZDgwNzk3ZGIwYWZkNThmMDQwNDAwMTlmNzdmZGZiNzc3NTE5ZTgwMmZhOGI0N=
2MxM2FlZDJjNmUzN2E1OTE0YjBkNWI3ZDFkMTQ4ZGYzNzMwMDFjOTk0ODRhNjdmM2ZlOWQ5MGUz=
N2QxMzJlMTVlZGM5OGQwMDUzNjc5MGJhMWU3NjJhMTJkMzRhMjBlNmRjYzY4OWE1NmVhN2U2MTc=
4ZjdkYjVjNTNkYWY5YzY3NWU0Yjg1M2E2NWQ0ODkxMWUzZWQzYzBlNTkwMzM3OTBhMDNlYmFkMD=
FlNGFkM2FjYzVmNjAwNTM4MWNiZTIxMmQ5NWJmMThlNTQ4MThiNDEyOWIzNzExYWE5N2YzOWE5M=
zYyNDJiZDY1YTAyZGQ2MzdmODgyM2M4YWQwNjZlN2YzODIxMmNmNWE1ZWFkY2MyYTA4NDU4YTRh=
YmE5OTc1ZGY4ZjViZTEzMjEyMmQzN2NmMmE4OWYzZmRjOTEzYTU3OWEyYjBiNTgyNDY4MTliYTg=
3NDIzYWNjYTlmYmZjNjg4YmZlN2ZkMDRhNTIyOWU2NWI2NWRkZmE4OGNiY2JjMjkwYmM3NWUwZD=
YyMTI4OTc4ZWEwYjMzNzJhOGRiMzk1ZTM3MzFlNzM0NTgwOWE4YjA0NTJiYzk1NjVlYjkwNjQ2N=
2MyYzQxZmYyZWNmNTZmMThiMzE5NTMyMmFhNzBlODIwYWEyODM1M2Y2ZDI5NzMzOGQ2YjE3NjQ0=
MzIwY2MxZWZmZTRiY2VmZjJlZjViZTNiNDRhZmRkN2UzZjdiNDA4YWUxOGEyZDZmZmQ0MjIwZTh=
mZDk3MTYwYjJkNzg1ZGNjYzVjZmZiNmViYjUzZTY0Yzg4ZTgyNjJhZGM2OWUwZjI1ZWU2YjA4ZT=
QxM2MzNTA3YTI3ZTVhOGQ1OTg0YTE4NjM0NzVhOTI2YzZiNmZmN2ZiMmFjNjlhMTVjMTc3ZWQxN=
Dk1Yjc2YzJlMGU3NWNlZDRlNzUyNjhiNjYxODdhYTc2MDdhNTFhYjg3NTAwZDA1NGQ2ZjM0MTEy=
ZDdmNjc2OTc2NjViZTkxNTVlMDNkMWM2MmU1YjI2ZTJlNWMxYTQ0YjczMmZkM2NhYTVhNTlhM2Q=
4MzY1NTBiZmM1NDQ5N2Q5OWU4YzgzZTM3MWViMjAxNGQ0NWZjYjhmYzQ2ODE1NTkwYmM1Yzg4OW=
UzM2JhODYzMGQ2ZDc3MTdkZjMyOGU4MzYwYmY2MGYwYTFlNzIwYjM3YjZhZTc4ZGQwMDg1MTk4M=
DgyYjE3MTBlODAzYTNiZDViOTMzZjEwZjVmNzI4NzU2NzIwZThjOGRkZmVlYzgyNGQ4OWNlNTk1=
YWQ1NTI4MDg0YjVkYTgwNjMyMTNkY2EyZmY0ZDg3YWZjOTU5NGNkMTdmNDM4YTAyZTVmOTVkNmE=
3YjRkYmFkOGRmNmU4MmFmNmVmYTQ3MWE5Nzc2NjJhNjJjN2JlYjQ2NTk4MzY3ZDJhZDY5OWZiMD=
lkZDY3MDFhMGIwMThjNGM1OTFjZTZkM2Q2NTM4ZGM0OTAzM2M4ZTczN2U2MWIyZjNiMjhjNTJjO=
TQyYjAwYzVlY2VmN2VkMzA1OWRlYjE1ZTgzZTAxOTE4ZTBkNjUzY2E0ZDA3ZDY2ZTFhNzEwMmJl=
NzE5YzczYWNlMzcxMTRhOTJkODNmN2JhY2RiZjExNmUzMDIwYzlhODMzYjMzNzg5ZTVkMWQ1ZTd=
iNGU1MzkzOWM2ZWE0MjY2YTY4MzZjYjJmY2VkMzllN2YzNzM2NjZhYTg2MjQxNGI1NTY5ZGUzZG=
ViZjEzODBmZDZiYTNjNDJkMzU1MGQ1MzM5ZDlkZDM2MjI1MzMxNTNmMzg3NjE1" style=3D"co=
lor:#0066cc;text-decoration:none" target=3D"_blank">Karl Vargas</a>
                            </div>
                          </td>
                        </tr>
                      </tbody></table>
                    </div>
                   =20
                 =20
               =20
                 =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20

                   =20
                    <div style=3D"float:left;border:5px solid #fff;border-t=
op:10px solid #fff;border-left:none;border-right:15px solid #fff;width:47%;=
max-width:47%;min-width:220px">
                      <table style=3D"width:100%">
                        <tbody><tr>
                          <td valign=3D"top" style=3D"min-width:50px;paddin=
g-right:10px;overflow:hidden;min-height:50px;height:50px;max-height:50px;wi=
dth:50px">
                            <div style=3D"min-height:50px;overflow:hidden;m=
in-width:50px;height:50px;max-height:50px">
                              <a href=3D"localhost:1333?u=3DZjg5M2ViOTAyZjc=
wMDdmZTM3OTBmMjMzYjI3MWFlZjU0MGEwMmNmNGNhZGMyYWZjNGJhOTJlYWZmNGIzZmQzZjBiNz=
Y3ZDI2YTFmYjg5MGJjMWYzODZkNDEwNTNjM2VmMGRmYjQ2ZmYwMWJmNTFkZGZkMWM5MTFkYzk0Y=
TczMzVjNjEwZDYzNGYwYzU2MDNkYWM4MzA4NjgwZGQxMmI3NGFhZDBlNzkwMTI0MmNkZDc3ZGNm=
MDI1MDlmZDk5YjU1NmU4NTVkZjM4YmJlZDVjZDBkNjI4ZGQzMDEyMmU0MTIxZTYxMTNmMjMwOTV=
jNDkyZjk5OTQyZGU5Y2IzYTBjOTg1NjQxNjFiN2JjMDAwMmU3YzAzNTQyYWQ5MGExOTcwZWQ1MW=
QxMWZmZjc5NDk0YzkyNDEzMjMyNDM5ZTMxODkwNTg4NGQ0MTIyZDRiYmZjN2IxYjMwMGM4MDg0M=
DVhYzE1ZjVjMTE5MGY3OGU2MGRmNjRmZTk1M2UzMjY3OWUzMDk2NjAxMDJhYjc0NGJlMTJjMjMw=
YTVlMTAxNzk0NWNkNzgxZTc3YjdhMjkyNThlMmQ5MDFhNGQ4YzY1NDg0MGYxMWE3NGNhNmM0MTF=
mY2EyMDVhMTNjOGY1NDFjM2VjZDMzNGZkZjE4NmRkMjE4MjhlZGYzNzZiODVkNjkzZmNjNzFiMW=
RmMjM3MDM1M2E1OWJjM2U0OWQyNTc1ODAwZTAxN2U4MzJhOGRlODExZDZjMDk5ZjE1NWUzNTRiZ=
GY1NjdlZWRlODZlODZlMzUyMTE5YjkxNGUxNGEyYzVjN2UxNzVkYzk2OTU5MDU4MTBhNGNkMTJk=
MmI4ZjYxNDYwOTM0ZDRlZGNhODRiZTUzY2E0ZTRmNzAyOWI1OWQ4ZDlmNTIxNGE2ODQzZmI4MGN=
iZGFlYTZhNjBhZTZhOTU3Yjc5ZTdjZTA0NDJhNGNkNTIyYzZiNDUxNjJiNTliOTcwODAwMGRiZD=
ZjZGE1MmZlZDUzNDhiNjJjNjljMzRhOGYxYWY5ZjQ5NDQxYzdmYzI3NTcwYWVmY2E4YWFkZDcwY=
jQzOTNmMjY1ZjM4MTdlZjQ3ZDFhMTM3MjA3NDYyNTdmYWM5ODM2MTY0NTNhMjM3ZTA5YmJiMjQx=
NjYzYmJkZTc1NWJiZTg4ODhmZjEwYzdiNmVlM2Y2MzhkMzQ3YWQ4NDJhNDhlY2U5ZTk0NGViZGE=
xMmYwMTU1ZmJiOTdlMjJmNTRhZDE3MGQ2NTdlYmYzMzM1Y2FmMTRmNGE5Y2UwMDNkZTYxZjQzM2=
VhZTRkZDFkNzczNDBiM2Q4YzRjYWUwZDc0YmU2NjA2MmJiNTM1NmI3MjUzMmY3ODliY2Y3YTgwZ=
Dg3MDc4MzA2MGI1MTAwODc0MDFhZGM4MGViNjc4NWQwZmE0YzczMjdjNzUxOTNkOGU2MjBiN2Fj=
MmIwNGI2OWJlY2Q2ZTgwMGRhMzc4ZmVlNjhhMGQwZGQ3YjVjNmVmNTNiMTkxNWNkODg5MjNlYzZ=
mZjhkYTM5NjU3Y2E2YTI3NzgzMDRmNjJhNzVhMzc3MTBjZTk5MzZlMzRhZmRiZTdiZWE5M2FmOW=
ExY2EzYTRmNzYxMmRjODBmYTc2YmU3MGQxY2UxNTEyYjAwNDE0ZGQwMDIwMGE3OGZlYmFhMDdhO=
GFhMmMzZmZmZWY1NThiODM0YmRlZDE2NWU2Nzg3NTkwNjk1ZWIzNGM0N2Y0MzAxYzNmY2ZmZTA4=
NTFjZmI0NGIxZGZhNDM3OGY3MGZhMmFiYjIxZTA2NDY2ZDgzOTgyNDIxOWUxNGJhMDIyZjk1OTd=
hNzBhZGM0ZTM5NTJhYzMxZjM0YjQ0YmE3ZWUyMTI2ZGI1N2U5YjY1ZTc4OTQ2Y2M5YmFlNzA3Ym=
Q4YzUyNmRiMWYzYzg2MTIxMDYzM2RmN2M4YzYwYTdlMGM3NjIxMTA1ZTdhNjExNTMzN2ZhYjcyN=
DNhOTMyZWM5NjM0MGE1NzU4MDAyMGYzMmEwYjZmNjY2ZDExZTE0ODg1Y2I2Mzg1OTNmZDhjNzdk=
M2ZlMWUzMmE5NTk4NzU4MWYwYjM2ZmQ3OGNmMmZmNjQ3ZDNhNmVjOTM4ZWExZjY0NjlmNmQwOGM=
2YmJkNGQ3Zjg5ZGY5ZmU1MmZlZTY4YTAwNDllMDcxZTU5NWIyNGI4MDQzNzZhZmY0OGVhZTViOG=
MxNmM2YzI1MWMwNWY3NDkwNTk5MjJlYzk5ZmE4MmM4OWFlNWFmMDU3YmIzMWUyYzIyZDM5MmI5Z=
mQzZDBlMWRmMmI2NDM4ZmRkMzY2OTFlNWZjMDMyNGIyNjExZjQxZGU3Njc0N2YyOTBhMTA1YThl=
NGE5MjVjZmU5N2ZmOGE5NDA5ZTU0YjliYjJiNmU0MGY1YjNmNWQ3ZWUzNDZjMDAwMGViMTM5ZjE=
2YTg3MjA2YzQyMmJiY2U2YjRjZmUwZDkyODdkZTY1ODgxZGI0MzZmODNlY2ExOWY1Y2MwOWMzZj=
BjM2E4ZmI5MTk3YjIyNzljNjI4MGQ4MTRhYmNhZGQzMjg5MzRjM2FhZTg1NDk2M2NmZGEyMzQwO=
GMxYjExYmVhMTk=3D" target=3D"_blank"><img src=3D"https://secure.meetupstati=
c.com/photos/member/a/f/8/3/thumb_314024931.jpeg" border=3D"0" width=3D"50"=
 height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DMGI1NDkxMjQyZWY=
4NGRiZGY5YTAzMDE3OGIxYTNmN2U4ODY3OTc1MzJkZWY0ZGVjNWMxZmQyN2M4ODIyZDNjOTMzZD=
c0NzdlMzZkNTExZjc5ZjRjNzE2YzRkZTQwZjM4MGU3ZjYzNGYzOWM1ZGFkM2E0MDEzMzlhMGJlY=
TA5NjY3MzU3MDM1Y2QyYjUwNGY3ZjA2ZmIxMzNkZjcwYzc1ZTMxYTVlZTFkYzMxNGU5MWRkNDQy=
NTc3ZjQ5M2M1MTA2ZjQxNTNmMDI1NTI2YjdiM2YyMzY1OWVhYWE1YzQ4MzZiNTEwYmFhNTNjOWQ=
4YTJlMDE1NGNkYWJkOWQzNGIxZmJiZDNlZjZmNWUyODgyYmFkNTM2ZTU1ODg2ZWIwNjM0OTI3Y2=
U4YTNkY2RjMzYyZWFlOTFhZjFmNWI2ZDU0MWQ0MWExOGFhNjAyNDlkZDZkNDVjMjA3YjBlMjdkN=
GIwMjc0OWY3NGJjNzU5MmUxZTk4MWU5NDFiZjE0MTVmNzVjYzg5MzMxYmFlYjgyZjk4ZDI1OWM2=
YmZjMzlmMDFiN2M2NGY1ZTc3MGZkN2I1NDU0ZGUyMzM1ODE1ZDJhYmI3MGI1NDNmZjU0ZWMyMTI=
0OTNlMzVkMmEzNDg0MGU4NzBhOGM1MzAxM2NmNDQzNDg5ZGFkMzFkMTkzZjg3MzFmZWU0ZDRkMD=
k5ZjNlOWM3YWQ3OWU1NzY2NjIyZGFiMmZhNWNjOWU2M2U4ZmVhNGMxMWJmZTU3ZDc2NjI0ZGY0M=
TEyNjk5OTUwYTY4MjcxYjVlOGVmM2U0OGViZmU4ZmQwOTBmNTUwMDQyZDgyODA4NTA0MWZjMGM1=
OGM1ODVhMzk2YjdlYjZkYTliNzc5YzY5YjhjMDlkMDNlM2VjMjBkZTYwYWUxM2E0OGRjODZjYzZ=
jZDU0MzU4ZmFkMzhhYTI4YmM0YmQ1YzM3MzVkNjExYjEyMWYwM2Y3MjU1MTgyYWMzZWM2ZjNiOG=
FmNzU1YWZmOThlNGQ0ZTcwZGViNTg5YWEzYzQ1Y2ZiZDFmZjI4YzNkODQ1YTk3ZWI5MGY3NmZiZ=
TA5ZDFlZWY2MjcyNGY2M2Q5YjQ4MGYxYzlmZmNkZDNkZWRhZjFlNWU4Y2M1YjM4NWRmYTQwYzA3=
Y2U4ZDRiZDM0NDhmMTE5MDIwYzI3YTQ3YTU1YTdiZjFiMTJjZjc1N2M5ZGEwNzExY2Q2ZWQ1ZTB=
jZTMxMzE3NGY4N2Y0YmNkY2MwZTU2MTJmMmFjZjkxMGZkNTc5NTc4NTRkOGQwZWRjZDc3Y2NjM2=
NkMzU1ZjU3YTM3MmE1NmViODdiMzZiMTM3NjEwMWJhNzUwMjk3ODA3NmE2Yjg3NThiZGZmZDA5M=
jIwMjY4OGFhOTQzYjk4ZDJjMWY4M2U0NTU1ZjlkOWE2NmM2ZDg3NjVhNWM1OTRlOGUyN2VkZjUy=
YjdjN2I3Y2Q2N2Y5OTZhYjY4MDJkZjc5Nzg2YjNmYzgwMjEwNmNkNjY4MTc3NjUwZWUxOTQ4NmI=
2NzU5NTE1ZGQyMjZjNTZkYWZmYWE3MzYwZWRjNzhiZTM1OWRiYjIzNDIwZDVhMGEyYThlZWMxZG=
NiOTIzNWM0NTdlYTRiMGY4ODk5ZDVkNGE3MTFmNjI1MTA5MWNhZmMyMTczZjAxMDJmNzc1MGFkN=
TNmNTYzODA0NzNmMzVmODYwYjdhYmI1MWM5M2U4NzJkMGJjZTQ2NTVhMjNjMjViZGM2YTE5MjEw=
ODYwM2Y0NjYwMmIzMmFjYTIwYTEyM2E5NWM4NDMzMDU3MjRjMTJkNDZhMmJiYTdhZmU2MjIyYmU=
xNzRlMGRjN2U3ZTEwMjFlZGY5ZDc2YmUyNWM3NTUyMzNhZDZkZTNjNDU5NDg4ZTNkMGY1ZTZlND=
gxYTE4ZDNhMGU5NWQyNjIwMjFhM2I3MTM4ZTViYTA5YTEwMWRlZmFlYTFkMzM4OWQ3ZjEyNGRmO=
TliOGEwN2FkODMyYTkxY2YyZjg0ZTlhMDg4M2IxMjI0ZTYyZjE5YTM2ZTBhNDZmM2RhYzcyZjNi=
NTBjM2VmNDg5ZjNmMjdkNWQzOTUxYWE1M2I4YTY5YjYxNmY2N2QxMWNiZGQ2YmExMTc5NzkxMzN=
iMmJlY2QwNDRkMzZkZGMxYzA2OGVmNDU5N2E2NDFmMWU4M2M2M2M1ZGQ2YzkwMGFmZDRhZDc0ND=
NhYjQ3OWI3NTEwODkyYThiYTkwMzc3NjgyYTM4ZTg4MTg2ZTcyMThlZTFkNTZlNjYyYjhkODQ5N=
2Q5MmE0NjA1ZjI0ZGU1NmE5MzNlMmQzOWMyMDQzOTE0NzNmMjdjOWFiOWU2YmJjYjJjMjY1ZTQ4=
N2MxZmUxNzcwMDIwZTIyY2Y3YjM3Y2RiM2YyMmE0MGQ0Nzg3ODkxMDE2OGZhN2Y1NWYwM2Y0NDN=
lNzNmYjJiYzRmOTA3NjE3N2Q0NTNhNDZmNDZkNDJjYzBiZTZjNmU1MDE4NTMxM2U4ZGQwZTAyNT=
EyNzc4ZjdmY2ZjOTM2ZTdkZTE2YjViMjg0YjY1ZmRkZjFlZWIxOWE2YjY=3D" style=3D"colo=
r:#0066cc;text-decoration:none" target=3D"_blank">dor hazan</a>
                            </div>
                          </td>
                        </tr>
                      </tbody></table>
                    </div>
                   =20
                 =20
               =20
                 =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                     =20
                   =20

                   =20
                    <div style=3D"float:left;border:5px solid #fff;border-t=
op:10px solid #fff;border-left:none;border-right:15px solid #fff;width:47%;=
max-width:47%;min-width:220px">
                      <table style=3D"width:100%">
                        <tbody><tr>
                          <td valign=3D"top" style=3D"min-width:50px;paddin=
g-right:10px;overflow:hidden;min-height:50px;height:50px;max-height:50px;wi=
dth:50px">
                            <div style=3D"min-height:50px;overflow:hidden;m=
in-width:50px;height:50px;max-height:50px">
                              <a href=3D"localhost:1333?u=3DNmFhM2YzYTkxYmR=
hMzM0Mzg0YTFiNTcwM2Y2ZDRlODVjNzdhMjc4OTNkMjc4NWZkOTY2YmQ0YzE0MGNkZTU3Y2M2ZD=
M1YzIzM2JkMTEwODc4MjUzMmZmYzk2YTllYTAyZjc4ZmZlYTc3YzNmNjVhMzBiYzVlYzA3MmMyY=
mIyMTIxNDgyM2YzYTIwYTUxYjkyYTFjNzM2OTZjZTY3Y2UzM2E2YzU1YmZlMGIxMmVlMjNkMjk4=
NzA4NzUyNWE2Y2VlOTYzYWU4MmE0YWNmMTA4NDM2NjNhMWIwNDhmNjk2MzdlNDgxMzUxMWIyZWV=
mNzA1NDBmOWNlYmZjZmZmYWZhNDVmMTQ2NWIwY2MyMmNiYTBkNjg1Yjg1MWVjY2NhMGZiOTdhYz=
hkZTk0M2E0NjRkMGVlZDZiNzkwMmVmNmViYzcwMTJhZDRlZDgxZGQxMWFkZTM5ODgwMWYzNGQ4N=
GZlNDZkMmRlOWIzNDE3Njg3OTM3ZWE3MGRiMGVjMDQ3NWY5NGYzMGU3NmY1YmFjZWNkNTcxNmQ3=
M2Q0ODU1ZGUyZTM0NjBmNjY2MWE4ODRjMzQxNmUxZmU5OTY0YzdhZDExNmM3OTI1ZjAwYzA5ZGM=
xMjJjYWUyOGRhY2I0ODViNjJjZDc3NjFhNDEzNWNlOTNkNTM5MmExNDI2Nzc5OGViYTE5MmQ3MD=
BmZTAyYTQ5MWQ4NjZjYjUxM2Y1M2QwYzZkZDZiYTZiZDhjODBhZTk2ZjViYWU1ZjYwNDc4NmIzO=
ThiNTM0YzA2NzE4MWIzYjE2M2RlYTNkM2FmNTE1ODFkMDg2MDQ0NjJkMDhhZDAzOWY2MGYxYWI5=
YTAxMzIyZThiNjViOTZjNjYyMTEyYjVlYjU4YzY5ZTAzZmQ1ZGZjYTNlMTM4NWZkYTQ4ZGU4YjQ=
yOGJmZTVhNzFjNWZiMjc3NTAyNTkwYjQyZGZkZTZjNmM5ODYwODEwN2E0NzM3MDRiOWI1ZTUyZD=
g4OWI4MGY0ODQ0ZjY4YjVlYmY3OGExYzI0MDYwODlkMWE2M2EyOWQ3NDE5NmFkYTAwODgwN2YxY=
zFkYjE4ZWNiNTk1YjY3Njk1ZTI0ZmQ1MGRiNzUxNzlmYmIzZDY0ZmIzMmNmMTk2ZGY2YjlhZGQ4=
MThkNjNhNDFhNmNhZDE3ZmIzMDYxMWMxMDI0YWNiNjkyZmE2MGU5NjkwYjljYzRhYWVlZjMxMjk=
xMDAzMGVhZTllNjIxZmVmNDM5MzNhOTlhMmY5ZTgwZGQwZTBiN2U5YWViNmNiOWE5M2FiY2NlZD=
FmZWJhNWZkNGRiYjNkY2I0YTQ3OTUzMWRkZDc1ZWY3NmJiMTcyZDU3MDk2NTQ4YmMyM2QxYzM5O=
WQxNTQyNTQ0MjkwM2ZmYWQ0YmQ5YTg1Y2I4NzQ0ZGQyOTFmNmZhNjRjODNiOGFiOTNkODg0OTRm=
MjAyMTE2MWFmNDFmNTVhYzY4MDNkYTg4Y2MzYjAyYTcwYzBiNDE2NTg0MDMzMmU5ZDAxZTI2ZDl=
hM2Q4YjcwYTA0NTFlOGE3MDQxZDBlM2VkMDBkOGI4Njk2NzZhMTBkOWJjYmY2Yjg4Y2M2NTE3Ym=
EwM2ZkNzQzZmYyYzY4ZDlkMGI0NWMyZjk3ODRjN2E4YTU1NmUzOWYwZGMyNWY4MzA0OTUwOTkyY=
Tg2YTVjNTczZTNlMjZmNjYxNDZiN2Y5NzlhNGI0NGU4Y2E4OTE5ZmU0OTZlNmIwMzgyMzNjZDU5=
MGE0MjRhODhkYWQ5MzAwN2YwZmFiM2RkMDBjYzM2YTk1ODA2YzczZWY0ZjY2OTczNTA4NDRlMWQ=
xMTZlMzM2YmRmOTlkNzIyODgyZjMxMTA0MDIwNGQ3OWY2ODg5OWNkYTIwOGJkYzVhNWVjMzM2Mz=
UzNDZhZjc5NWUwNWNkMmI5NDJjYjNhYTFkM2UwNzVhZTE0YTIwNTdhMWEzMzQ4ODU5YWYwNzNkM=
DA2ZWFhMGNlYWM4OGFhNjg2OGE4ZDcwZDllNzk1ZWQ4Mzc2OTE5NjFjYTg2YzI4MDM4N2RhOTQ0=
ZTVkYzAwMjk2ZDI3OGU2NzYxMDgxZmYzNzBiYTQ3ZGI5NGJkOTJiMWU2MTVmNzRjNmU2NjMzOTB=
kNWJhYmI2YjVhZGZmZGFmYzcxMzIzNmVlYmY1YmZmMDkxYTI5OWIzNjg1YjljZWZmMjc5YmY0OT=
gzMGFiNjM0YmM1OGY1YWRmZmZmZjY5Y2M4NTI5MjAxZmRkNjg0MTI5MzQ0NWFiNDAyMTJhOTk5Y=
mJmNzQyNWI1MjFiY2JiNjE1NWU3YTYyYmE4NTNmMTdkMDFiYjM3ZTQzNDkzOGZhZTRkOWZlNDM2=
ZDMyY2JlYWY5NDQyOThmYmI2NzRjMjA0MzY2MmM3NWI5MDdmNzMzMjZkYzUyNzIzZGE1MzU2Njk=
yY2NlY2U2NTAwNzlkNGUyZTRhYWY3YWFlOTYxY2U1NmY2YzM2MjFkZTFlYThlOWViNDc3NTY0NG=
ZiNGNmMDJjZjdiNjI5YjBkZTgwMTYxNjg4OTI3MGZhZTZkMWRmZTU5NGQ0Mzc1" target=3D"_=
blank"><img src=3D"https://braze-images.com/appboy/communication/assets/ima=
ge_assets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" border=3D"0=
" width=3D"50" height=3D"auto" style=3D"width:50px;display:block;margin:0"/=
></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DYTk5N2Y5ODI2ZDE=
xZTllMTAyYWRkZTExMDBjM2Y5ZTI5NTkzMzIwZTRiNmM2Mzk5NGZiMjU5MGQwNWM0ZGFiNTVkZm=
U2NmQzMzYwNGEzYmM5ZmRkMzUwYjgwNjBkMzg2NTE1NDFkZjc0MjYxOGVkZTI5MDM4ZmNkM2M4Z=
DY2MmM5NDNlNjg1NWUwYTAwYTMxMWY3NzE0NzcwMmFiNzY5OWNmMDQxOGYxZGZkZmE2ZTYyNjk0=
YjNkMWMzMDJlOTliM2UyZDI0NTE5ZTgxMWVmZTU3NDJlNzk4NWY3MzA2OWM0Y2RiOWJlYzhkY2R=
hMGI0ODRmODBiMzM3NDFjZGYwMzkxNDRiOTJjZjIwM2MwYzAxODEwZjU0MzVmNjM3MjI2ODc5NW=
FjMGI2OTcxYjE4MGI0NmQ2NGEzNjVkYTQ5NjZiMjMzMmQzOTJkNDRiZGE1MDI1ODM2NzhhMGM0N=
mE1ZDhlZTBmZTQ0MzRjNzI3M2VhZTU4ZjM1Mzg4M2NiY2QyNzE1YjAwODI5NWQ3YzlkZTU2ZDcx=
ZjA2MjYzODM0NWU4YzBkYmZhOTM3NzRiNmNkZTM3N2E2ZmJiNDhmNzQ5YTFiOTMzNzhiNDJmZGJ=
hMWNhNDkwNTZiZmNkZTNhYmY1OWEyODYxMGI2NDYwOWE2MDU3YWNmZTA3ZmM4MTAyYjM1ZDBjZm=
Q1NjdkMDU0ZWQ2NjlhMzAyNmQzZTBkNDk5MWFlNjQ3ZjAxYzRlYzY1YzA3NWZkM2RiODYyNmRhY=
WI5Y2ZjODJlYjc5MDdhZDBhY2Y0Y2JmZTgxYTBiNjM5YTZkZTMzMjVmYjM2ODBiY2Y2MzNjMjJk=
YmE0OTY2ODBkNjcxMTkwZjAxN2QxZWUwODI0N2EyZWI0ZDM5OTcwNjM4OTdhYTI0ZWIwYjkzZmI=
4NDc1NGFiYzE5MDliMWMzMTQ5YjE1MWRlZThkNzVmZmU1OWRkYzI5NDBmZDNjMjc3ODU0Yjk4MW=
I5MTZhMzZlOWE2YWQ1NzY5NTFlNzZmYzE3NzU3YTQ1Njc4YjVkN2IzMDcyMDFlYWM3ZWRlOGU5Y=
mYwZTEyZjNmY2I4MGE1ODRlNTA4MTZiMzM4YzEwZWVlYmIxZTRmNTU5NTJiMDI3ODE1YjQ4ODgy=
NGFkMjk0OGRmMmQzOWE1ZDQ0NDVhOWE0YWI5NmFlOWZlNzEyMjdhMTAzODJjMmI2MGI0NGM3NDY=
0ZGE1YWNlMjE3N2VhMDgwOGI5MzEzZGQ2MmU1MmJjYTI5NWFiNzQ1MDgzZWRiYjUxYzQ4Mzk1YT=
kyNzZjZjNjYjExMzhlYzJmMGQxZTY4NDU5NDIyNWYzZDVmN2QzODdjYzU0ODIwYTcyMWU0ZjM5N=
zdmNzU5YzAxNTZkZGYyZmQ2Yzk3NmVmMTJiZTU0ZmM5ZDM1ODQ1NjEzNTRmYjk0ZjVkN2E3NTJk=
NGU2MmNlOTE2YTNlNzhhOTE2ZWI0YzI3YmE2ZTExMzg1YjA0N2UxNzMyMDY2NGQ0NGZmZTk4YmY=
xODM1Nzc1MGE2YmQ1ODU4NjA5YjQ1YmMxOWRiNTVlMDhhMDgwZDlkNjY3YmRjMDg5M2E5MjdkOG=
YzZGE3NGIzYjM3ODljYTUyZDcwNmFiYjNlZmRjZWQ3Mzg3ZDljMjllNmI2ZDI0YzdkNzc1OTU2N=
DQ4ZWFlNmVhZGNiMmRmODg2MDVjNjZmYWEyNjU2MzMwYzVhN2RlYzkwYzMzOTY3MTFmZTA5NmEw=
YzJjYzEwMDZlYzY5YWI1NDQzYzgyZmYwOTBhNWFhMzQ3ZDk3MDM5M2FhNjMxY2RlODE5OTE4ZDA=
xZWYyOTk5OWNhZjA2NDE0ZjA2NDkyZWU1YmE2NWI0Yzc3ZmM1YTY3YTFhMTViZmViNjBmMGQ0Mj=
I5NWE0N2IwYmNkNTRmZDk4NWM0NmI4NjNkMjY2NTlkZmU5ZTRhM2Y2YzU2ZDM3OWI2YmIwNjI1M=
DIzNWQzMmUxMDcxYzk4ZWU3ZmEyYjM5ZDQzMzBlODRkM2ExODU3NWM4YzlhYTMyZTU5NDM4M2Vm=
NzI2ZDI2Y2E5MzhhNTJmN2JkMTMyMjZkZmMxN2Q4ZGMzMWNkNDRiZTdjNTFiM2ViNDE4ZTBjODc=
yMGJmOGU0OTMzOGVlZDMwYmM3MDRiYTMyM2E0MmJkMTNkN2NlMmUxMDdjMGVkYzFjZjU4ZWZkMj=
gwNDVlYzcwNjEyM2VjYzc1OTVhYjQ2MDA3ZTZkMWRkNzk1NjhmNzE4YWE0NGQ1Zjk3M2YzNjIwO=
WU5NjhlNjZkZGYxMzUxZjBlN2U5NjRiNDc4OGZhYjJlNTZhYTVkYWFiYWZkZDc4YzM5MDBkOWNl=
MWY5Nzc5YmZmYTg3NmVjYTE3MzIxMTE0ZGM3MDk3ZThmN2Y3Zjg2ZGRiYmM0NTJiOGU3Mjg2MDg=
5OTY5ZmE4ZGU0YzcxZjcxN2YwYWUwOTlhZWU5OGRmZTUyNjE2ZDAwZWFjODA4Yzk4ZGJmMWU5Zj=
NkOTc1ZjZlOGE1NzEzY2NiNzc0ODEwNTM4MWEwYTRmNmE4ODQxMDhjNTc0N2Qx" style=3D"co=
lor:#0066cc;text-decoration:none" target=3D"_blank">Owen Granot</a>
                            </div>
                          </td>
                        </tr>
                      </tbody></table>
                    </div>
                   =20
                 =20
               =20
                 =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20
                   =20

                   =20
                    <div style=3D"float:left;border:5px solid #fff;border-t=
op:10px solid #fff;border-left:none;border-right:15px solid #fff;width:47%;=
max-width:47%;min-width:220px">
                      <table style=3D"width:100%">
                        <tbody><tr>
                          <td valign=3D"top" style=3D"min-width:50px;paddin=
g-right:10px;overflow:hidden;min-height:50px;height:50px;max-height:50px;wi=
dth:50px">
                            <div style=3D"min-height:50px;overflow:hidden;m=
in-width:50px;height:50px;max-height:50px">
                              <a href=3D"localhost:1333?u=3DN2NmNjc0MzY4ZGF=
mNzViMDFmNjJiNjljOGE2OTBlN2M4ZWNiZGIwN2JhYmQxNTM0ZDI5YTYzNGE3ZTk0MzY3MDg5ZW=
IzNmZkMWFmMzIzZDMwMDA3OTY1ZGU4OTY1OWY1OGE5MWZlYzk2YWEyMDczNjNlZjM1ZDJiMjg3Y=
Tg1ZGM3NDQzMTNmNzIxOTJiMjBjNTliNzUxOGIzOTE5Yzg3ZmYzYzE4NDk2OWRjYjA2MjYxZmMz=
NWY0NzllOGU0ZjdlODNlZTBhODVjZDM3ZWNlNDYxYjMyYWI5NGMzNzE2NjEwOTY4N2E2OWJlNjN=
iYTY2MWYzYzk4ZTg0OWZkYWRlNTMyNTQ5MDUxOGUzNTQ0Y2ZjMWMyZTM2NDk4MTFjZGJiN2NiZT=
A4NzlkZDViZmYxMDljMjJlNjdlOTBhOGIxYTA5OTkwZjFmM2RhOTg1ZmYzMzhiZmM0OTk5Zjc0Z=
jkzODc1ZGVlZmRjYTM4MDdiNjdiM2RlNWRlZDYyNGY1ZTk1NjRkMDg2Nzc2NWNkNTllMjFjYjcy=
NDU1NmNjYmRhM2FlNjNmYjBlYmU1ZWU0OTk2ODNhZGIxMWIwNTVkMDNlYWM0OTk5MTRhYTVjYzY=
xNzdmNzMwNjE5NGMxNGY3Y2MxMTllMTg3NjQwMWY5MGE1ZTk4MjBkODZmYWZmNzEzODFiNWY5ZG=
U1YTU5OTYzYTViZWVlY2Y4ODY2NjliNTNkMmIzOGE2OTk5NmY1MzRiY2RhYThmZGMyMjI0Njc1N=
TI2MzNmMzdhOTMyZGU0OTI2OWRiZTkwOTNiNTI3MjRkNTAyZmJjOTBkNTljZmYyZjdiZjFlOTk3=
ZjE4ZDRlNzgxNWUxNmE5M2JmMjFlMGRiYzhmZTM0NzE1ZjQyNGVlYTlhYTdhNzNiZTRmZjM3N2U=
xNTkzMWZiYTU0MWI5YTk1MDNiOTllYWFjMjYxMmIyZmZhZjBmNDk1Mzc4YTg3NjZlNmEwYWE5ZT=
A4MmFjMGE2YWUzZjVmYjQzOTVjMWNkMzE0M2IzNGU3YmJmNGQ1MjQ3MDkzYjMyMzIzOWVmNjQ4M=
jFhMzRhNDhhN2UwMmNlZDU4YTIyYzA5Zjk0MTk3MWJlYTk2NTFiZWE4YWI1YzAwYjg5NGQyZmVl=
NGY3MGQ2MjBiMTMwODc5ZDk1NTk1NmM4MjE5MDg4OGUwZDg3NmYyODRlZmY4ODA3OTE2ZTkzZWY=
1NWRjZjUwMTNiZWFjMzljZWQ3ZDQ0ZmY2ZjZhOTQyNWU0ZjZjZDdmOTQ4NTFiYzJkYTI1NjNhMD=
c3ZTExZmUwZjZjMDE1YTRjZjhiOTY2ZmUyNWY2Yzk3NzYzZWE4NGU5OGEzYmJjNzFjNTIwZGUwZ=
jI0YjM1NDMxMWEwMmIwMjljMmMyMjQ3ZGJhNDAzM2MxOTZkNDZkOWE4ZmQ3YzQwMDM0ODgwN2M5=
YmNkMzgyMGY3MDgzNDA4MmYyMWEwMTY3MzEzZTZhMTg2Njk3NDRiNGFlZDA2MmQ2ZDI1Mzk1Mzl=
kNGJiZjU4YWQzMDM0NjhhMTI4ODU1ZmI0ZmRhYjk4MzgwZDJkM2EwY2RhMjA0ZWQ4MGNhN2M0YW=
ZiNTM1ZmE4NDlhZDQ0ODNhODNlZTM4M2NiZDdkZDgyYWU0ZDEzMWNlZTY4NzhmOTJjMjA5NjRlN=
jFjNTU1YzJjYjc3ODczNTE3YTc4ZGEwY2QzNTc4YTcxYTk5Mzk0ZDdmOGJkNjQxNTVkNTg2MWVl=
YjEzNjdjYmE0ZTExNWIxZGZkN2ZjMDU2ZDEyNWJiZGNlNmRlM2VlODRhZDk3ZjA0Y2RmMDkzMzI=
wMDkxMzUxMmJlNzUyMGFjYTJmZDQ3ZDI2YmQxM2I0ZmM4M2U0NGYzZWNjYTYwNzdkMTZkYjMyMj=
IwZjYyYzdkOWFlYjg1M2RhYjY4YjU4ZWQzYWI0YWUxZjBhZDM4YzMzMTdmYTgyZGNhNzIwMWMyN=
DkxMTU0M2U5ZGMxYmQwYWVlY2M2ZWZhMWNiZjE4NTQzNDEwZjNjYjY3M2Y5OTlkYWE2MTgxZTVj=
NmU3NjQ4YTc0OTFjYzcyYWVhMTg3YzUyMGE2YjlmNmQ4OTdkMTQyYWNiMzYxOTU2ZDAyZGNlZjk=
4ZWZlMGE0MDI2NGU0MjkyYzBlZWI1ZTJhYjE3NTNiZGVhYTMzMmIxZDgxOTM5ZTMwODBkMTljOD=
RmYTVhMGM2Mjg3NjkxNjQ4NzAwMmRjYWM3M2JkZGE2MjA3OGQwZWU1ZmExMmM4YmMyNTYyNjIwM=
DhkMmM2NmZlNjU3ZDViODhiZTk3ZTkxYmNiODVjNTA1ZmU4MjRjNmEyNTFlMDY0NmFlYjU0ZTFm=
MzhhZWQxNDE4NzI4MWQ2N2NmNmVlZWY3OTQ0N2RhZWIzMGJhNzU4MzRlODRlNGZjNjAzNWJkYTd=
jZDZiYTllZDUzYzVlOGFjNzcxOWI2ZjcyYjA3OGJlNTg5YmYwZTA3ZTRjMWY3Zjk1ZmMxMDQyOT=
ZhNDRjZGUyMmYxOWE3OTUyNGVjZDdmNjY2NDM5MGY1MzBjNTlhNA=3D=3D" target=3D"_blan=
k"><img src=3D"https://braze-images.com/appboy/communication/assets/image_a=
ssets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" border=3D"0" wi=
dth=3D"50" height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a=
>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DMjJkYjE1ODVmOTV=
mMWM2NjVkZDA2MmI4ZTMyNDBmYzNlN2MyNjFmZWYxY2VmZDc2YWY5N2MyZTQwYmNlNjkyOTc5Nz=
VkZjMzYTA0Y2Y0OGRhYmRmN2FiZjE4N2UwNTNiODU2ZmYwOGRiZTEwYzU1OWFkOTIwZDJjNTkxY=
TNiYWQxZTAzNzBjYzg1OTAxNDkzZDc1ZjBjMDJmNjY3NGRhMzc2ZDVhY2YyZDZlZjNkNWFjZWEy=
MWJkZGVmYzJhYzJkZjAzNDc2OTJiOWYzMzgwNzJhM2Q5YjU3Y2Q5OGZjZmFkODg0MGFlNTYzZTI=
2YzlhZGJmYTU5YTM5ODEwYmZjYWI1NzM3MTMxZjViYTQwNTI1NGFlOTMyOTY3NThlNmZkNDc2Mz=
A0OThlNmZhZjUyZmVlZWRhNDU4YzQ3YzcxMjI2ZTE0ZmNmNmVjMjhmYjk0YWI2MTA1NzEyZWQzO=
DlhZDI1NjQ5NDJlYTAyZGU3MzM4OWFiZDE2M2YyMzQ3YzBiODdhNDU2MjcwZmUyYmFkMjk1N2Y4=
YzA4ZjM1NWY0MGIyNGE1MDE1YTMzZmMxZTRhZmM0OTYxOTY1Y2E1ZmRhYWNhZDQ2ZTIyZGI0OTU=
xMGZlZjQ5NzAzY2JhMjMyZjdkODQ0MjY1ZjdlYTI0MThlYTIxMGUyZGUwMjJjMTgyNWM1NWYwNm=
MxMTk4MTljMzAxYzkxZmQ2NzQ5NDM2MjM2OTUyYWVjY2NlYTE1NzJiNmFlODljODg0OTM5ODFlZ=
mI3MGI3MDg4OThhODRjNjdlM2I1MTM2M2Y1NTk1NjExN2E4M2M2N2NjZTFhZWNhMGQ0YjM4MmJk=
ZGJmY2MxZDg1YTUyODJjMWE0OTQzYjkwYzhjMDQ3Y2NlZTI5YjdmNzM2YWEyYjA3ODI3ZDdjZTR=
mYWY1ZjgzMjc4NDI5NzM3MWJhYmY5MmJjNWJmNTJkMmE0ZTlkZDExZDk2NTY3NGQwM2RiNTZlYW=
U0ZDhmNDU3YmE3MTFmYjUzZGFjZjA1MGY1ZDNkYmE2YjQxYWIwMDY0MTFjMWYwZmQzOTk5M2UwM=
2UzMTRhZGY2YzFlMjgxNzhlOWRhZDM4NDhmOGZlNDgyZTg5NDZhN2YxYmEyNDgwYjBlMjMxYzI1=
ZmZhYTA3NTY3NGMwMmZiMzI0YTRjMjJiOGFkNTRkOWJmZjBhMWI4MzBmYWI1NjQ4MjFmZTI4ZDR=
hY2Y3MjE1ZDM5OGE1MTQxNGYwZDJhNzk1MTdmNmMwOTQ3NDQ5NzFkYjFiZjIwODU2YmU0MGYyNW=
NkMjk5ODMyZjMwMGFlNjQxYzgwZWYyMzMyODY0YjZjZTkwZTEwMzc4ODYxYTY5NGQyMzhhYzc2N=
2ZmYTMxMGVjZmQ1MDYxNDQ0ZDBkZjE2YjE5N2IyYjdjNGJmZjE3Y2M3ZjE3NjNmOTkxYTkyNzNi=
NTk3MDAxZjdkM2EwZDExYjE0MTJlZDAxZWIzNjUyNzhmNGRmZTcxZTgxZjc5ZjMxNjg2ODYwMWI=
4YjljM2FhNGNhZmVhZDQxNWM0MjAyZGVhNDJlN2Q0MGRmNDkxMTA3YWZiNDliZjRhZTc1MGQ5Nm=
RjNDE2NzZlOGRjYTE2ZGQ3MTI4MjAxZGYxZDg4MzJhNzY4MGE0NDYzMDExYTUxZjBlMTExNTM4M=
mM2Yjc1NTIxN2I4OGUyNTA2NDA1ZjBmYWRlZmJhNTc5MzBiMzA3YThlMmRmM2FjODgxZDJjODVk=
NTU1NDUyZmRjNThmYmY3MGU2MTJhZmMxMTYwYWI3NDYyYzQ4NWRiZDRmMWMyYzJmZDdiYWZmN2U=
wYWU2NmFiZDNiYzRiZTJkOTFkOTE4MWEyOWQ3YzA2OWI0OWRlOGNhYjQ5OWIzMzU5YmJmNzc0Mz=
ZhOTliYWU1MGY3NTgxMmZjNDkzMDk0MDI2ZDExZDQ4ODViMDI4NzQ3ZWQ3YjcwMWEwM2UxYWEwN=
jlmNGM3ZmM0NGIzOGE4OGFmYjE1OGJmODFmYzI4NThiZDliNmY2ZWNjY2MwODhmNzA2NGE5YWQ3=
ODU0N2QwMjk1NTEzNTU3ZTViNTMxMjlkNzdhZjZhYWYzZDVlNTNhMTg2MzY5NmQ4MWE3YmU0NjV=
kZjMzMzQxOWM0ZGFiY2QxYzA4ZjNhMzUzYmJmMjI0ODNlOTVmYzcyMzE2YTVmZGYzZjAyNmM5MW=
RjYWJlYzIwMmQ3ZDAxZTMzZmZiYWU4ZjE5YTNlYzkzNjU4MWJkNTgyMTVmMDY1OGJiMTQ0Yjg1Y=
2VkY2UyN2U2ODljZWMzOTVkYmU3MmMzNmU2YmY4NmI1YTM0MTQxMjdkOWM0MmM0ZjliMDgwMzc1=
YTk5MDliZGM5YzI2YWQwMzY3NmEyMGViYjA3ZjBiNTllYTJmYTdkZThhMTJmNzc4NDc1YmM0Nzk=
2MWNiZGEyMWY4NWQ4Njg2YTAyNTMyMjY5MGM1YTc5YTk5YjAyZDkzZTRhODg0MDYwNGUwYWI1ZT=
Q3MTEwMDFjYzg2MjA5ODI2NWQ5NmYxN2MwYmJlZTI3MTc5NmJiMA=3D=3D" style=3D"color:=
#0066cc;text-decoration:none" target=3D"_blank">Yahli Gitzi</a>
                            </div>
                          </td>
                        </tr>
                      </tbody></table>
                    </div>
                   =20
                 =20
               =20
               =20
              </div>  =20
            </div>
          </div>
       =20
       =20
       =20
       =20
       =20

       =20
       =20
       =20
       =20
       =20
       =20
       =20
          <div style=3D"border-top:1px dotted #ccc;clear:both">
            <div style=3D"border:8px solid #fff;border-width:8px 0">
              <strong>Event description:</strong> Join us for our October R=
eact-IL meetup - Powered by Codux!

Agenda (All talks will be in Hebrew, the meetup will not be recorded):

18:00 - Meet &amp; Mingle

18:30 - Opening words

18:35 - Off with T...

             =20
                <a href=3D"localhost:1333?u=3DNGRiNThjNmUyYmQyNTJiM2Q1NWQzM=
zM2ZGE3MDVhNGNiYjQyMWE4ZjA3MzdhM2FiMTJjNmU5NWNlOWVjNjMzNGQ0YmIzYWFmOTE4OTJl=
NWRkMGU1MWMyOTFmNzk2MjllMmY3ODczNDU0Nzg2YzYxNjE0MGI0NzRlNTE3OWE3M2RiZDUyN2F=
jOTJjOWU0NjJlNzg5NmZjMWE3YWQ5Yjk0ZWRjYjc2YmViZDM2MzU3NTg2ZDAxYmUyMjk4MWRkZD=
BkYzE3NzYyZWQ2Y2E5ZTk4MWUxNzIzYThjZGE5NDA5MmFmNTI2NzU2NGRjZjVmMGMzMzVmMWVhN=
GE5NDNhNmZhMzEzYjExZWY4Y2ZjYTY3MzE0YmEzOGJkMjRkMjc5M2NjNzE0YzQ4ZWFkOGVhZTQ5=
YmRkMDJkNmIyNTkwNzA3ZTQ0YTZiZDE5NjViMzA1YjljOWY4ZWU0YzlhZDIwZjRhMTc4ZTdhMDc=
wYmRiZGNiNTNjODdkNWM1YzJmMTRhNTUyYjkzMGQzZjBiNzIwZGE3MGU2ODhkYWIxZWE0NmVlOG=
Q3ZjU2MWM3OWRhMGZkMzcxZTMwNzM4OGYyMGVlZDJhZTdkNWEwYmRiMWRmMmZmODU2MDZiNDMxN=
GRhNWYxNGJlMmI2NjNlMTFlZWUwNWMwN2I0NTFiMDg1M2MyMzM2MTIyZTI3OWIwOTQ4ODY3OGI0=
ZDMzMzMzYjU0YjU1M2RjZjM3NjgxNzA5ZTRjYzkyYjNlMWE5NDI2Mjc4NDNlNDJjNGMxNDgzNDc=
1ZjUxYzc5NDg0MDFjN2I5ZGY5NWNmODlmYjExNTdlM2MzM2E5ZmYzNDQwYTMxZThkOTIzNzg2Yj=
gzNmRmNDY2ZTYxZTRiYTVkYzA1ZWM3NTJlMWU4MTU0MzQyNjcyMmIxOGU2OTMxNjcwOTg5NmYxY=
zk2ZjYwZjhlMDgzNTkyM2M5ZTY4ZjFlZWViZDM0ZmI0ZDljY2MwMmU2Mzk1YTVmZTQ3NTFiZDA1=
MjIyMDkwNTI0ZTAyNWNkNzdlMTM1ZjgwYTNhNzQyM2U4ZWEyZDY3OWNiN2RiYjkyZmY4ZjA1NzA=
zMDJjN2RkNGU0Nzg3YzNmZTNkMmYyOGQ3ZjBiN2VjM2M2ODJlZGVlZGI0OGQyNTFlMDNmMTY0Nm=
Y4M2EzODA3YjM5YjUxN2Q3MjJkNjU0NWMxY2E4ZjQ3ODhjN2M1MmVjNmM1NTBhMmJmNWU2YTZjM=
2Q5Zjg4MDk2ZDM0ZTNiMTA1MGI0NDc2MDNiNzNjOTk1N2RhMDM1ODdhNWIwYmUzYmZiZjlhNmI1=
ODhiYTUyYzcxMjhlZGUxNTYyMDVlZTI0MDIxMTE2NThlNzNiMDAxMjkzM2ExOGNhYzA2NjQ1MjE=
1MDYwMjcwNGM2YzdlZGQyMDMxNzY5YzM1YmQwNDY2MDY1NTVhN2MyZjVkZmIwOTE4ZjdlOGYwMT=
U0NzkzMTk5NDYzMzA5ZjJiNWZmNWE5ZTI1NTBhMmU3YmFhOTZhMzQwMTY2ZDA4NGU3YjA0YmEzY=
zZlOTZiMGE1MTMzODBmMDNlYjcyMWM2NzFlYjNjOTQ4OGFiMzllYjQzNWU2NTgzOWM4Nzk5OGQ2=
MzViZjQ2ZWUzNGM5OGRkYWI3NDU1YWE1ZDM3MDFlN2E4NjNmMmQ2NTY4ZjA2ZDg4NTM0NzMyY2I=
zMWFjMmVkNzgxMjQ0ZDg4YmRjMzgwZjQxY2EwOGE1NGJjNWJmNDM4NmZhZTU4ZGYxNzkyYjNiOG=
RiZGQ3OTA2NjI0M2I3NDcyMDU5MWNiMzQ2NDM4ZjQzMmI5OGMzYWJhYTI2ODNlNzc4OTJjYzdhZ=
WY1NzA5MTU5OTFhMzMzOWQ5NWQ3NmEyNzEwNDZiMThlYjNlZjExY2FhM2ExZmIzNThjOTE0YWI5=
ZWUwZGQ5YjdmOGQ0NzIwNDU5NGNhNTg0NjAxNjdiMTE1YWZlOTU3Y2ViZWRhMzdlN2JlZDAwYTF=
kM2ViMmY4YTQ3ZDU4NmRkYzgxZmJjM2UwNjRiMzc1YWI4NTYwODk2MDkzMTdhN2IwZDA3MzZmNG=
Y3NmQ5ZWI0OTU1YWQ4YmUzZDg3YThjNzk0MWEzYTgzMWVjMGFmMThkN2MwZjliM2RlNmM0ZjAxN=
zY4OGFlYTUxMTYzMmVmOWI4YjE5OWRkMjU3NTU1YzZhNTlmODlhMDY3Y2Q5YWI3YTEzYmFiYzYy=
MjRmMmRjM2M1MGVlZjJiNWM0NTYzODIxOWFlODVhOWEyMWI2M2M5ZThiZWYzNDI3OTlhZjQyM2U=
zNzg3YmU4MzJkZDI5OWFkMzY1OTEwMTljZTMyNmUwZjg4ZTlmZjRjODNiMTVmOWIyMTVmNTM1Mj=
MxZWE0ZDllYzM0ODU2YTg3ZjliOGI0ODIwNWIzZDIxNDY0YTNlYWJmOGQ5OGE4MzhhMDQ3NzFlN=
TgyNDhlZjA0NDYwNjMxZWM3YzM4NzdmOWRlMDVjYTZkNzA2YzNjM2RlZDQxNWI2M2QwYjRmMjZl=
NjNlNzIzMWUwY2YwN2Y0NjhjYmMyOGVmN2Q0YmFlY2M=3D" style=3D"color:#06c;text-de=
coration:none;font-size:12px" target=3D"_blank">
                 =20
                    Learn more
                 =20
                </a>
             =20
            </div>
          </div>
       =20
       =20

       =20
       =20
       =20
       =20
       =20

       =20
       =20
       =20
       =20
       =20
       =20
      </div>
      =20
    </div>
   =20
   =20
    <div>
    <table cellpadding=3D"10" cellspacing=3D"0" width=3D"100%" style=3D"wid=
th:100%;min-width:100%">
      <tbody><tr>
            <td align=3D"center">
            <table width=3D"100%">
              <tbody>
               =20
                <tr>
                  <td align=3D"center" style=3D"max-width:600px">
                  <p>You received this message because you are a registered=
 member of Meetup.<br/>
                  <a href=3D"localhost:1333?u=3DZjVhYzJlNjliNWQ2MGYzYjYxNDh=
iODY4ZjEzNzNkOWQxODZiMDhkMDQ4ZTFlMmQ2Mjk1ZGY3OThlOGM3MmFlYzY5NjNjOTA0OGRiZW=
Q5ZTcxYjVjYWFjY2U1MmU5NjVkNzI1ODY1ZDRhNzI4YmFmOTk3NWNkYmUyNjNlNzUwMjI4MzUxY=
WI5ZGZmNTJiYTgzZmY2Y2U0ODQ3MTdjMWYzMTUxZDg1ZWRlYjlmZmIzMTUwNmFjZTE5ZjVlYjdj=
YmQ1MTEyMzU3YzFiMDM5YjUzZmQ2N2FjNTVlYjRjOGFhY2Q5ODc2Y2FjMzA1MmM5OTk4ZmU1ODJ=
mMTEwZTFkNGI1ZWRkZWRiMDhhYmYyZTIxNjU4NjkzMjU2NWY1MWNiMTUyMzJjZDlhYmYxM2UzMG=
IxODE2ODBmYzBmNDNkMDY3YmUwMmY4NDYwNDhhNTQ1YjM0MTkzN2MyNGIwMWEyOTFiNDhkNzA4Z=
TUzMzQ4YzBhZWNmODllOWE4Y2E4OTNhZmIwNDcyYjNjZWE2Yzc5ZjI2NGJhNjg0YjczNGE2MjI2=
ODUyNjMwZDQ1OTI2NWFjYmQzZGM3OTYyN2I0YWMwMGY0YzFiMWQ1MTg1MjBjOTBlYTIzYTViMmU=
0OWJlYTdkMDVjOGQ0NmQxZjk5ZjFiMzZkNjM2NzY2ODkyODYyNjRkMTI1MmQ2MmViNjQ4MjZlMG=
FjYmRkMGY2NGIwMjEyM2EyZTJkNDdjYTJlMmZkZTIxYWQzMDMxYzVkZjRmZjZmOWQyMzExNjFlM=
jBhMGFmY2RhODVmOTIxMTE3MmY5OTVlOTQwNzk1NzcxODY2NGM5Y2E3MGFjMDliOWM1NzE2MGY5=
NWZhNWRkYmFhMmQyMzdjMTNhZDlkZGZlZjUyZDM3MDk4ODUzN2JhN2U3NzVmYjg4MjJmMzczM2R=
mM2YwZTI5MDUzNWZlZDYxZGU2ZjRiYTdmNzdhYzE0NmI4Y2I1MzMyNjFjMjcyZWYxMTk1ZmY0MT=
gzMTdhYmZmNDljZTU0YmI1ZWIxMDM4ZGQ4NzM1MmVkMjcxODg0OTZkZTk0YWE0MDlkNWEzNjJiM=
GRiOTI4YWQ1NjhjMWY5NmM0NDNiODEwYzAzMGU4MjU5ZjQyZWMxMmZjNDNhMzhhYzU5YzJiMjVj=
ZjRmN2ZjNTI5ZmMzNDIxN2U3ZGU0NzE4YWFhYWEzZTViZDQzZjRmZDY0YTRhYTliNTM1ZTI2MTd=
mYzM2MjNiMmU4ZGE1M2YzZDEwZDE0Yzc0MzhhNzA4NzQwZGRhMjFmMmZhYTZlMThjYWM2OWQ5Nz=
MwNGI2OWU2OGZhNGM0MmQ2NmY3YWI3Y2IyOTlhNmI4NzUyMWQ1MzI0NTdlZWE3MTc5NDAyY2VmM=
zJhMDZjMzg2NTc4MTVmMDkyNDkzNjdlYzhlOGFlZjk3MTc4YjEwZGIzNDVhMWIxZmU3ZjBhZjll=
OTE4NGRmNzQyMTIzZjJhYTc5MWY1ZjlmNWIwMzExNDNkYzM1MmNkMzYzYTJlZmFlZTQxNDY1MWF=
jMzJjY2I0YWQ4Mjk5YWUyZjhjYzBlZWRlMjZmYjNiZTU4YmQ3NGJmYTM5NmRjNDllYTUwZDcyYm=
ViODNjNDY5YzFkMzlhZmI5YzZjOWQ1YzY5OTk2MDFiYmVmMDMzZjEwZmIzOTVkNmRjMGU0ZDc4Z=
TRkZTExZGRkMzU4ZDYxMTFkMzFmNTExYjBlYTg1MGY4MTIwZDE5YWQzNmE1NzVjN2Y4MTg3Y2Zk=
ZDIxMzkxMjhjODJhMTNmODY1YmE3MjRlZDA4MjIyNzM2YmM1YWY3YmE5NjBhYTQ2MzM3YWEwNjV=
kOGUwM2M3YThkOGZiYmYyYWQ3ZGQ5MjMyM2MyMTQyZDBhMDgyMWY4ZmExMjcyYTlhZGFiM2E1ZD=
VmZTE0ODU1ZTIxZjdiMDNmZThjNTdkNzBhYzY0MzUxMDMwM2NkNDE4NTMwZTBjMDEzZjk5MWUzO=
TBhMzMwOTY0YjcxYmI1NTc1ZGY1MThmMDkyZGVlMzEzNzc3Y2M5NDA0YTViNDU1MjA4N2JhMmU3=
YmE2NTU5MDNmNDMxYjc2NGRlMmE0ZGU2NjY1YzQ0ZThjMDEwYzZjNmU3ZWQ5ZGY2MThlZTFkNjU=
0MTI4YjVhYzU3Y2I1MjZhYmEzOGZiNWE1ZTdlODUxNDkxYmU0ZmI5Y2M3NjgwZjg1NWMwMjcwMT=
hkNjUzNjBiYTlkYWI2MDZmYzMxZDk1NTYxY2U3OWI3MDExY2VhYTQxY2U2YTMzNDg4NDFjNzVjO=
WVmZGFjZGQ3YWEwOGQwZWZhYzdkYjAxNmExMjYwNTI3YTYxMDk3MjkwNDVlMjc0NDdmZWQ5MzMw=
Njk4MDE0ZDhlMjAyZTQ0MGZiZmQwNjcwMzFmNDE3YjgzZDVhNjVmYjEzOWZmOTVhNDg4YzUwMzE=
2MDQxN2NkZjA4MDM1NGM4YTFhOWViYmMzYzIzYjgzOTkzMjlmZjFjMDU3YzgxZTI3Zjc3ZTFlYz=
NlOGQ0OTZhZTFlMjU1NGI0YWJhMDViODM5NjY1MDlkZGQ4MjFlOTI3YzgyMTA4MDljNTI3ZGFhO=
DkzZmNmY2E4NGY3ZGJlOWRhNmNhMjU5NTAwZDAxN2Q5MGRjMDM5MTE5NDUyZTk0MmUzM2JhNjQ4=
MWNkYjQ3NDUzYTcxMzhlODQyNjQ1OTIzZTE1MmFiMzYyZjYzNGQyNjc0MGQyYmI3ZGFhZmM3YmJ=
jMjRlNDAwNmYxZWFkMWE1YzM2NzBhODVhNTFjNmZmMTExNWU2MGM5YTgwMGM0ZmJlN2UwNjVkYz=
lmNGZmZmUxYzEzZGU3MDM0YTJhYWNiOGU2NDM1MDM4M2M3MDk0Nzc4MTJjMzE1ODMzNGQ5YzZmM=
DZmMjllY2UzYmQ5NWUxNDRiZGRkODlkZQ=3D=3D" target=3D"_blank">Unsubscribe</a> =
from this type of email. <a href=3D"localhost:1333?u=3DMmUxMmE5MDI2NmI4Njc1=
MDVhNjcxMDAyODJmZTBiNGE0NTNjODA2ZmI1ODE5NjRhZGY1YTBhYWJmYTEwZjc3ZmRiMTY4OTk=
yZThkMGJkZTk2Njg0ZGIwMDVhNzViNTQ2OTIyYmJjM2RiY2I3YzRhMDNhOGVjODRmZGJhMjI3Yz=
U4YTQ4YzhkOTY0ODdhYmE4NGVhZTU0MDc2YjEwMDA3NWMyZmMwNDJjZWMyMzZjMGNmZTMzNDA2M=
TRiNTU5ZjY0ZTViZTVlMDRkOGE2MTI2MWI2YmE0OTMxMmYxZGU1ZTk3NWUzZThmN2Y1NTQ0Y2My=
OTMxMDFiNDU2YWFhZTQwYjAyOTczYjg4N2M2MTZjMjRiYWYxMjdkZjBjZmJiZmU1ZTY3MmY5OTY=
zNWRkNGFmMTE5NTcyYTFhM2YyNTkyYzFmYWQxZGU1NzgzNWRjYWM1ZmFjYTNjZWUyMWY3MTg4MD=
djMzM5ZWYwMGJmZGY0OTBlZjYxMTU5N2FiZTQ3OTI0OTcwODgxOTk5ODhiYzIxOWMwMmM1NmU3N=
2YzY2YxMDc1MDQ3ODE4OTVkOGRhODVhMzczOTJkMzcxNGQ1OWY0N2RkZWJjNTY3MTZhNDg2YzAw=
ODBmMTZlMWNmNzNkMDA3MDAxYjQxNzAzMGZhODQwZmI1NzZjNTZiYjYzN2Y2MzRjYjg5MzAzOTk=
1ZDBlNzU3NzU4ZTM2NTU0OWRmMTJkYmQzMzBlOWE3OWFiMWU5NDM1ZTQ0OTAwZGE1NzljZDhhMG=
JhNzMwY2IxY2Y0OTFjNmQ2ZWNiYTUyYWQ4ODY0MjU5Y2YzMzJhMDJmMzljOWE2ZjFkYzIwNzA4M=
mUwNzQ3NTNmMmNiYzcwOWI2M2MwNDAwMmQzNDRlNjdlOTA4NjQxYzA1MjYwMjhjZDc2MWYxODMx=
Y2MzOTM2OTMwMTZkYWQ3YzZkNzliNmFjYjQ3NjhlZWU2NzM4NmVlOTU0MGMzMGUzNTAwNGZmYjk=
0ZWYzYWRkOTIxNGIyN2Y0MGYyMzI2Zjc0ZGMyNGZlMTNlNTliM2I5OWVlNzk0YTBhY2Q0MTY5NT=
lmMTFjZjM1YTk2ZTJlYzZmNjFkYTlhMDRhZWNlZWYyZmRiMjJkOTBiZDkwMzcxNDk2ZmEyODgyN=
DRhYTUzMjY3ZmVhZDFhNzY1YmM5ODU4NjFmM2JjZWY0ZDlmZmMyMDllYjdjMDg2ZWYxOGZlNjBk=
NzFmMTI2NzI1NzQyZDA0Y2I4ODc3NGI4YjA2OTRhYTMwYmQyY2VkMTVkNmY0NWZhMzM3N2IwZTh=
hMGJiZTFmZWE0YTc1YTU5YmQ1NTEwOTNjM2NjYzE0NGMzYzAxYThkNzZlZGQ0NzAyMGIzMmFmYz=
YxYTc1ODA1ODRjZGM5MDIyYmE5ZmU5ZGQ4ZjY0NDBkZTAzZWNlODI2MTI3MzM0MGE2MmM4MjY3M=
Dk2YTI2NTYxNTk3MjYwNjE0YWVkM2M0MDM1NTlhMzY4NzI5YTgwOGNjMDE5YWE4ZTA3ODEyZTlm=
NzE1ZTk4NzI3MTliNDIwMGIyM2Y2MDQwZjRlNGIwZTE3ZjA0YTg0YjgyMGRiYzMxNGZlZGU1ZWV=
hMWZkNDYwZjI2YmIwNjY1YjM3OTE4YzE0YjdiYzI2ODM2NGNjMTE3MjlmMmVkNDZlYWQyNjkzMW=
I0MWU3NWNlZjk4YTE1NmJmMTgxZDdiZWM2NmQ1M2U3YWUxNDliMzBlZjJhOGE1MmY2ODVjMjliN=
jkxYzEzODdmYmIxYzgwYjkwYjg2ODYyYWNlOTE0NmVlYTNhMGQ1MDc3ZjAzZjUzMTI1YWRjMDdh=
YWVlMzZjZGYwYTg5ZWE4MDhjNWMyMWY1YjdjMTAyMWRiZWMzNjNlMGVmYjMwY2MxNDFkMWIxNDQ=
2NmQxYTdmOGY5ZDRiZTQwZmE5YmU1NDlhZjdlYTIzMTBkNmNhNjAzNjY3MzQ4M2JhODdjYjg3ZD=
U0NGFmNDcxNzFhNGE1NmVkNjA5NmJlNDEwM2RjZjE0ZDZjM2Q2NDdkMWRhYzg3YTQ1NTYwM2Y3N=
GEwMDQ1ODkwMDMyNDM0NDUxOWU0NjBlMzk0MGJmNjRmOWU3ZTM4NWFhZTA0OGQ4YzA0MDQ0YWZl=
ZGZhOGEwMTlkNzQ5Nzk3YWQ2M2E3OGI1NmQ2M2U4NTRkNTg5YmExNmM0YWYwYjNiYjNkMzU1YjE=
4ZDI1N2U3MjJhMTMwMDA2NWViODhkOTQ0Mjg5MTA3YWUyNTMyYTJlNDI5MDBiNDhkNWNkMDkwZT=
gzNzkzYzRmYTZhZWU0MjhkZGFmOGI5Mzk1OGNmNzlhODMxN2U0YTVjYzE4MmViZTNmYmZjY2UxY=
jJlODcxZmIxOGMyNDQ3Y2E1YzgzYTE3MGZhZmM5OTdlMDcwYzdjZTM4NGNmMTNlZWMwNWM0Mzdl=
ZjViNGNhNjAzN2FiNmMyY2FhODA1MjVkZGEyNWZlMWYyNDNkODQyNjkxYTJhNmUyNjY3Yzk4MDZ=
lNDFlY2ZmNjQ3YTIzNGMxMmNlNTVmZDMwNWYyNzJiODgwNTQzY2E5ZTY2NjJhZTc0YmIzNjAzZD=
k2ODM4ZmRkZjk4YzRiYWJiOTZkZTU4NzBhNmJkMzk0YWM1YmJmZWUxZTI4OGE3YmQxMjFkZGE5O=
DUyMjU0OGFmNWU2Nzc2OGE1OTIwY2Y5YTQ5NzkyOGJjODI0YzNiZTJlOWM0MTg5ZTk3YzcwNGZm=
NjkyNDBiYWQ5ZjczNzIwNzQ0MjQwZWQ0M2E1NjRmMzc4NmMxYjk0MTA2MWVhYzkzZmFlYmQ3N2I=
wYTNlYjEwMTNmMDBkZmJmMWI4NjVhY2NiMzFjNDQ1ZDkxOGQ2NjNiZjMzOGQ5Mzc2NDkxZTA1Nm=
Y5MDUwMmE1OWJmMzY4OGIyNzdlMTg4YjQ5MjM4YzlhZDM5ODJlYTZkMGYyNDQ3NDM4ZTljMzhiN=
DlhODAwNTAyZDcxYWM5OGE3YzYwMDk0ZjE2NGMwYzU3N2U1YzZjNzFkYjZiNDU0MjY3YWNjMDMx=
NzExZTc2Yzgw" target=3D"_blank">Manage your settings </a> for all types of =
email updates.<br/>
                  Visit a <a href=3D"localhost:1333?u=3DM2ViNGNmZTk0MTRiYjJ=
iZWJkOGNhNDA4MmEzODA1OGI4ZmZiNmM5OGU4MTVjM2JjZTJjNTQ1OTEzODhkYTlkODRkYWZkZD=
Y2M2VhNTA3NzE1ZjJiZGM3Y2VkMzUyMjczODJlZDUxZGRlYzE0ODNkMzk4MzYyZWIyNDlmZmYyN=
TM2NDQ4NjU4NWI0YThmNjM5NDI3NWNkNjIzMzgyMDliMzBjYTFhMWI4ZjFjMWE0ODY3YTU5MzY0=
ODQxMDI5ZGZkYzYwMDAyNWZhOTQyNmFjZjQxMmQ2MGFmYzBhMGEyNmNmZmMwMzk5NzY2ZDQ2ZDg=
1NWQ0NGM1NGYyOGMxOTM5NTBjZDIzODMzYzY5Nzk5OTcxMGM1Zjc1MmJmZTdmMzNhNGE2ZmFlMW=
QxZWM2MDJlMjViMTJmYjAwMmM3YzkzNzRmNGE1Y2QzMGE5MDMwMGNjYjFhN2MxZTRjOTA3YmFlZ=
GVjYmVhNDkwMzYyZmE5NzBkNzQwMjQxMzg3MDc0OWI0ODhlMTMwYWExZTFmMDRhYWQ2YjU0ZGU0=
ZGE5ZWU0ZjlmOTMzZWNlMmE4YWUzZmNkZGFhNmU0NDEzZmY1MDU2MWRlZmRkNjhjNzYyZmJhNWI=
0YWVlNzYyMjc3YzljZjZjZTJkNzdlMDdkNTJjNzVkNWE4MzZlNjEzM2NiM2U5MWVmMDU0MWZmMz=
UxYmY4MDIzN2M2YWJhZWYyNDc2ODBhMzZiMWQ1NTNmNDIyYmM4ZTdiY2M2YzlmZDkyNzBhOWYyM=
GM2YjQ0YjlhNTlkMDc5YWY5NWM3MjQ1NjE5YzYyMTc3N2ExNzBhYzZiM2I0ZDliMTdmMmE1NjJj=
MmVhMDY1ODYyM2Y5NzUxNzQxODVkNDU5NTc3MGRhZmEyOWRiZTA4MmFkMzA0Yjc3OGUxODRhNDY=
2MWIzNWI1NWRkY2Y0OTZkN2UxMzVkZGFmNThhNmY2NjhlZGM5OWYwNjBiNjA2YzFlN2FjZjQ1Mj=
AxNThkYTM1YzNmM2JkYzczMWU5OGRhOTBjMTg0MjlmZTYyYmIyZjQ0NjViYjYwYjI4OWUzMDY4M=
zllZWFhNzZiYTc0MjBiMzliZWNkM2Y5OGY1ZGI1ZjVhMzMxZWRmYzU0MTM4N2UwNjM5ZDIyYTlk=
NGQ2ZDA3NjJmNGRhMzI3NTUyNmQ1MWE3ZDZjYzEwMmY2NzBmZGRjZDQxNTEyMjlkZmE5MDZkMWN=
lMzU3ODYzYTU4MzNhYjAyZTU2MmQ3YjU2NWI0MWQ0YTY2YTBjYTliY2VkZDAxYjA3ZGQ1N2IyMT=
Y0MDMzNzFlMDhlNDdlNDEyYTA0MjhhODk2YmJhYTllNzc0OTg4NzY0MDE5OWI1NGVjZmJkZTQzN=
mQ2YzdiYTk3MmNlN2Y5YThlZGRiYTM1YTQxNzgwY2RjZjUzYzdjOTgyNDU5NmQxOWUxNTk1YWYw=
ZTlhOTVlOTZmNThjNmRmOWQ5YTViYzEzMDY3YzBmMzRiMTgzOWRkZmIzZWEwYmY1MzExMTcyNWI=
5MjUyYmI0OTk1NTQ3MzNjMjAyMDZiNTRmM2NkN2QyYTkzMDQ3ZGY1MTFkODQyZGE5NGNhNmIyZD=
A3NmUyZWM1ZTBlMmNjMGUzYzE1OTkzOGQ5NGJmNzQ4YjhlZWQ1MDJjZWZjYzc3MzAzMWFkN2QwM=
WIxOGI1Mjg0OTgyZjc3MmZhNzk4ZjA2NWQyNDg2Y2YyMzQ5NWI3Y2UwMTVhYTEzMDFkZDZhN2Q5=
ZjQzYWIzZGU5YTk5MWYzNzk5Njg3YmU0ZmU0N2E1NzA3YWE1MDU4NzMyOGJiY2Y0MjQwZjk0Njc=
yNjU5NTlkODhhZGI4MjcwNmFhMzY2OWI4MmEyY2FkMjc0OTgxNWY2NTZiNzRmNmQxMDgyZTY2Yj=
NlZTdjNGVkZGRiNDFmODUzYjFiYmU4ZjYwNzM4MDExM2Q1OTcwYmVlOTZiMzY3NGYzZTM1NGMwN=
TEyN2YzODIzMzMyMDg0YWQwYWYyNDUzMDg2YTBjNWU4MmY1Njg3ZGQ0ODg1ODdjYWVhNjY2ZGNk=
ZTRiZDA3Y2M4YmYyNDg1ODE0MzFmZTdmMzJhZTYxNzY3YjliYjEyZWYzM2FhYzAxMTRhZGZjYzU=
wODc2MDFkYTRiZTVhMzlhZDU5ODA0ZTE0Mjc5YjMxNTJjNTVkYzdmYjQ5MzE4YzhmMzg1OGNmZj=
Q2NjRiNDJjNDY5ZDQ5Y2YzNGQ5NTdkNDdjZGViYjYzMDQ3NWYzODRmZjZhZWM2YTFmMzcxMzAzZ=
jRjNmY4ZjFiMmVhZGE1MTM4ZWZjY2IwN2ZjZDg4ZDZmZmZhODU2NGZhNmJlZDRiZWJjYzZhYjYy=
NzVlNzQzYThlOTAwM2M5MThmNWMwOGYyZjQ1ZDdmYTU3ZmZkNmJjNjZjZDE3NmFlMzZhN2JkMGV=
kMjM0ZmQ5NzdhNDE1MGRlZmEzNzU4NDY4MDNlYzVkZThmNjgyNTg2MzIwZTRhMzMwYzVjYzlmZT=
QxODkyOWQwMDQyNjg0NDc1YWZhY2I2NjQxMjk2YmQxNTAxNjE2MGJiMGY2ODM5NzE0OGNkNGQ2Z=
DM5YjFjNWE0NzExNjM4MTQwZDc5NWVkNDkwNmEzNGU1YzY1NTg2MjE1MDBkZjU4OGRhMDFiMDUx=
MzVlNzNmZDViMjZiZjg4NjlhOTIxY2Q5NGVhYTA2MmRiYzFiMmE4MDc1OGZmM2I0Nzk5MGU1ZmE=
1MzlhM2QzNjU1YWQyZDc2ZWQ4YzE4OTAyNmMwNDQ4MGI0NGNhMzE5M2YwNTA2YTVkMTU0YjFjOD=
hlYjc5YjEwY2IzNjIzOWEzNzVkMzQxYmU2MjAzZTgxMTBlMTJjOWZkMjcxNTk4M2YwOTlmODQ5O=
TY1ZWQ3ZjBmYWI1MDc4YTVkMDYzOTI1NWQxNjM0MTAxYTAyODYzZDRhNTE3YTMzODY5ODI4NGQ4=
NjFkNGEwZDY4Yjg0MDUzNjQwMTczY2RkOTYxZTg1ZjdmYmE2MGMwMmZmMDhiZjhjN2FhMmMxMzc=
yY2U4ZGJlY2E3M2JmMmYzZmFlMDY4YjQ3ZA=3D=3D" target=3D"_blank">your account p=
age</a> to change your contact details, privacy settings, and other setting=
s.<br/>
                  <a href=3D"localhost:1333?u=3DODA5ZTZkMzgwZWE5YjYwOGJiMTI=
xYWRhMTdmYTQ4OWUxZDY4NDQ2MWUzNDIxYzViOTNhYjE5MGNmNWNlNzc4MzIyZmM3YzJkMjgwYz=
JmNDAzNmIxZDQ3OTAxOTM1OGQzMzRiMWJlNGQwZGI4MWNlMWY0ODU3MGI3ZGY2MDc0Njg5YmI4M=
mY5ZTRlY2M0MGZkZGJjNzZiMTIwMzNkZGE0YmRlMDJmZWFkZWQ0NDA0N2U2ZTU0MjQzN2EwNmRj=
MTVhZmZlMTFlMjU5MTFiMzE5N2QxOTg5Y2VhMDZiODUyYjEwOTJlMGE0NjcyY2JlMTFjYTk2NWI=
3ODA1MjJlMDk3OWEzMjBhY2UxODhjOTc4OThhZmE0ODA0NTE3MGFmZWEzYWFmMmZhMDNmNjZlZW=
E2NjE3YTQ4ZWM1M2ExMmQ5MDU2ZGQ3YzIxZmM4MzNkMzQwNTM1NWY2OTEyMmQwNzc0MTZkZTQyM=
jc4NTBlNTRmMmU5MjcyYTdiMWI3MGYwMmRmZmU0YzM5Mjc4NTgxNWUyMWM2MTMzMmY5YTFhZjVi=
NmE2NzIwYWE3MDJmOTIwYTJhMGJjODg4YTQ5OWQxNmFhMjNkMzY2ZjIwNGExMTJlN2Q3ZGExOTM=
3ZDY1MzQ0MGRhMzQxYWQ0NzExNjBhOWI4MzdlM2ZlZTA1ZDZmY2I2MWY2MTRhOGJlM2ZjMzZiMz=
gyYWFlYjBmNDc0OGExOGIzNjU0NjA4YjJmMjA0YjMyNWI0ZWZjMTRlMjZhMDViZWI3ZDgyNzIwM=
DFlOTNhMmM4MDM5ZTI2YWVhM2U1NGRhODk1ZDNhYmQ4YzJhZDVjMWYxZDJkODI2M2JhNTMwYTkz=
MDk5MWIzMmU0MGUzYmViYjcyMzQzMjM1NTI3ZmI5OGE0ZWY2NWFkMjFhZmI2MWI1Y2Y3MWY1MzI=
zZTY3M2FlMDM2MmFmNGIzNjZmNDViZTI3NDNkNjk2YmI4NGU0NWI3ZWJhNjg4MDgyODhlODU1MG=
IwNzY2MjM4OTZiZDc5ZmZiZjEyNzc0ZTFmMTg1YWIxNWE3OWY4ZWFhNjYzY2Q5M2JhODhlN2E4M=
TVlZWYyZDdkMzJiYzllYzc0ZGFjMzA5ZmExM2QyNDEyZDdiMmRmNzhmYTJlYTQxZGU3NTQxMDQ1=
NTMyOWQyNjUyMzMzYzY2OGMwNzBhZmNlYjhhZGUwMGY2Y2I0YTQyMzhlNDFmZGVkNWNhNGM0NmQ=
wY2M3MWM3YmZmMDUwMDgzMjA5NWU5OGM4M2MwZjJlY2UyODRhYzgyYjU5OGU5ODlmNjE3MGViMG=
UyYmQyMDIyMTA0ZDA2NjYyMmRlNTkxZjBhMzE5MDk4MjI4MmRkZTQ5OGFjOWM4NjJmODBjOTI4Z=
jJiOGVjNDBjZTNhNGYxMjlhZDRjOWQyMjcwM2E4YWIzZWYzMDkzNWMwZDZhMmE5ZmQzMTliZGIw=
MDU5OGU4ODNiNDRjYmJmZTY1ZDA1NmRhZjUzZTk2NjNhYzU1M2JiNDU0OThmNjg2OWE4MGZhZjY=
5Y2E1M2U4ZWUxMGM4ZjdjOGM4YzdlYjg2MGFlZTQxODE2ZDQwNmQyY2FiNzdmNmY0YzZiZjEzYj=
c1NDAxYWY5ZTg3ODE1ODZiNWI0YWYyY2YzNWYxMDA0NmJkNjk2NDJlN2UyOTg0ZjdjNTQ1MGIxO=
Tc3MjA0N2Y4MWNlNzBhYjAzY2M3MmUyYWVhZmY4YWIzMGM2YTk0OTk5OWY1YmU3YzdiZTQzMzdm=
ZTJiZGE4YTQ1ZWU3YTVhNWI1MzNiNmIwMjNlZWM0ZGU1YzFlOGRmNTQ3MjE3ODM3Y2JlYzlhN2R=
jMzI4NTNhYzZmYTI2NjY2NzM4N2ZkZjJjMDc2MTA5MWIyNjNlMWQxYmNjYzBiOWQ1Zjk2ZmU3OD=
c3MjRkNTQ2MTMyZmU1YTE5MWE3NjkwMWMyOGQ0OTU0ZGM2MTQzOTIxZWQ5OGU4NGUwY2ZjMDdiN=
DJjYjc4YTkyYzk3MzdhMjhhYWYwMTEzYmM5NzJjN2UyODlhYzUzMjI0MzU2ZTE3ODNlZDEzYmZk=
NjBmMDgzOGFmZmVjODMzNTg5NTZjMDM0YzI2NmVjODhhZTE0NDJkNTY1MzA0YjM3ZjQ4NmJmNzg=
1NTlkNzVjNDZhNzdhMGJhOTgzNjA0NzA4NDYxNjNiMDkwOTVhMzc4YTA2Njk5MjlkMGQ0ZjViNT=
MwZTA3MTVlOWUxMjE2MDk5OTFjN2FiYzk4MzQ5MTAyZWVjNDVkYWExMmZhZGE4N2ZmMmY3YjQ1N=
mRlZjBkOGUzOTc2NzYzMzFiYjlhMGIzNTljODhmYTFkNTJjYjU5N2I4NGYxZDExN2I5MWI0ZTU1=
NDQwZGVjNTEyZDgxZDBlODE0OWEwNGVhZTI3NzkwNDVhMjQ0ODM0YTljNTZmMTBlNmJmM2IyMDl=
kYzc0ZWMyNWNhNmQ1ZTYyNWI3OWYwNmUyYzdkY2NlNTgxNzQzMzFmYTBlZjViODQxNmZjNmFlOG=
U4M2FjYzAwNjljNDg2MTQ1Nzc2ZTFkZWNjYjFjZjc2YjY1NzVkMWE3ZWQ1YjcyZTExODM1NDBmZ=
mIwNjdhZjhhMTc4NDI5NTM3NGU4NzE5ZDg4ZTcxMTllMDU0MmM3ZDBkZDQ1YWNhNzRiOGJlNDAy=
MmJlMzZiNGRlNDEzODI5NWQ0M2I2MzYzMjc5YjQ3YjYxZmM4OTJhYTU3YjNmZGZiMDZlNzU2ZTB=
lYTQxYmM5YmY5ZGNiZGVhYTJjYTU4YzZkNTQ0ZDdhMGZhNWMwN2IwOTVkNDFlOWM4YjkwNGZjZm=
IzZDBkMTNiZTNhNTEwZTY1NTkyOWI2MDk4NTk4M2M2ODBlNGEzNjQ1ZjhiYWM3N2MyMGQ1ZWE0Y=
zIyNGMxNWIwY2ZhMzVhYmY1YTAxZDc4NDJhMWE1NDljNDg2YjU4NWFkNmE0Y2M4YjQ2ZDk3ZDA3=
OTBjMGMzMTk=3D" target=3D"_blank">Meetup LLC</a>, POB 4668 #37895 NY NY USA=
 10163<br/>
                   Read our <a href=3D"localhost:1333?u=3DZDYzNjBkZThhN2NhM=
mM3N2RkMTU2MzE3YjI4MWM2NjQzMzQ3Y2M0NGFiMWFlYjUxM2FhOTBlY2JmMzc4Y2U1Mjk0ZDM5=
YjZhZTYxNjc3NzE4NzA0NmVhMjdkYzY4ZTcxNDA4MzVlMmE4ZDg3OTdhMjkxNTU2MGQzMmQ3MmE=
5NzY4ZWQwZDFiYzkzZjIyMTc0YjBkM2ZmNjI3MmMwMzI2ZjI0MmFmMjA1M2MxNGI2ZmM2NjM4MG=
ZjODYzYmViODc0YjkwMmI0YzMyNGJjNTg1YzUwMGYxZTI4NjVhMjcwZDdjYWZkYzU5MzUwYzY3M=
GU1N2ZiOWQ0ZDU1MDIyMWRmMzYzMjg3YWQ1NWQ0YzJlM2NiMjUzNjdiNmI0Yzc2NjcxNWFkMzM5=
NDU5ODZkNTdjZWYzMTBjMGE4YmJhZDNhZjNlNGNiYzA0NGM1YTk4YzZjMWM5ZjI2ODIxNjFhNjg=
0ZmFhYTcyYTdjZTUzN2E0Mjc5MTAzOGQ3YjlhMWQ1MmE4YWUxZjlkNzZmZmZjYzBkMjFiMTJhNj=
BmZDNjNjI5ZWJjMmNhNDM3MzZjZDcxNjhkNmJiNGM5NmIzMjk2YjkzNjRlOWQ0MjQwNTNmYjQyM=
DM3MWZmY2I2NTUxMGM5YzhlNTc3NDcyMzY5MmFmNzc1YWMwYTEzOGQyZDZjYzY0MTE1ZDc4ZjU2=
MGJkZTcxMzU3OGViMjJhZmMwMDBiYmYwYTM4OTZkMmYxODk5ZmIxN2U5MjYzNWJhNDA0MGQwOGR=
jNjQ3OTM3MjcxMzMyZTAzODI3MmE4ODA4ZmZkMGQ3NjhmMTQ0Nzk2Y2QxYjUyNGM2YmM2ZDgyOD=
YzNDhjNjAzNTY5OTMwZDdmZGY5NjYwMTJhZGE3NDc0NGIyZDI1ODQ3NzUwYzdkYThhNzc0YTIzO=
DY3ZjkyNDVjMzMwM2NmNjU5YWZmNjFiZGFmODA3ZDk2MmY4ZTI4ZjhiZTU2NjM1OTQ2ZGIwZmFm=
MjcxNjE4MzM3ZDMxMTllNmRjMTkxYjViYjYxMmQyNmFiYzc4ZmU0MzZjYmVjZGYxOTFhOWU1OTI=
3MDE0ZjkyZmNmZGNlMzYzNzU3YzQ4ZTJmOTRjYjRiN2ZmNzcxMDg1ODRjZGVjZGU3MWRhYWZkMz=
g1ODcyZTlkNGU5NDNhMmE2Yjk3NmM0ODM2YzNiOWFiYTgzNjcwN2RiN2EwMWQ0ZDQyMDNmN2E0O=
TJiNjNmZTc4MDhkYjMwNjI4MTMxNmZjNWQ2M2NmNzU4N2Q3MWU0MDRjMzg0MTM4OWY0M2M0Mjc5=
NWY0MTQ5ZmMwOWY1NWEzYzQ1NWUxOWNjZDkyOWFiMGVlOWExM2Q3Y2E2ZTc1ODEzOTMyMzRlYTN=
hZDYxNGJiZTQ4Y2E3NjYyOWZmMzVjYzM5NTRiOTY5ZTFiNWY5NzQ2ZmE4NTIzMmY5OTcxMmM0Mj=
VmZjI1NzI2MzIxODAzNWU0MGI0NDE3ODg2Nzg0MzZhZDgxZTM2YWZjZDYyYTgzOWYzNjA2MzRiM=
zFiODFhMmFmMzVmM2RlMWUwODI0MWQ1OWJhYTViYWEwOGU2ZjgwNDVjMTNkODVmM2ZlMTFlZDRl=
NTlkNzEwODA2YzM4Y2JiOWVjZjE2NjQ4NDIzNzllZDk3ZjliNjFkYTk1ZmEyMjc1ZWEwNDMzNjU=
zM2I5OTNlZDVkYTJkZjVkZDM1ZDdhMTc5ZDQ1NjE1ZDcxYmU2MzU3YTQ2N2Q3NGY3NTRmNTJiYz=
g3NzJkMDdkYzhlODUxOTE3ZmUyYTIxZWJlNWE4YTVkMzQ2ZDM2NmM5NDM2MDNlZTExNmIzOWM4M=
GZlYmYwMjU1N2RmYjUyNjZkZTc0YWU2MTBlMjQ3N2ZhNDdkMjA3Y2UwMjZlOWQ4Y2IxODU4YTU2=
NTZkYzFiMzM5ZjAyOWRjZTEzZDkxNTVkNjRjODY2OTE5ZGViYzI5YWI1YTQ1N2NlMGM1ZTc4ZDI=
yOTE0YmY4ZGI0ODQzYjAyOGRlNzcwMGYyODczMTEzZDJlOWQxZDM0ZjhhZGM0MWZmYjYwYTg5Nm=
I0YjU5ODI5OTIyODllNjk4MjI5MmJmYmIwNDE4YTNjZDIyOGJkYjk2ZGUzMGNhNGRmMmVhMGE4Z=
jI0YWRiNDY1OTY0NTg1ZjkzYjBjNmU0MzhlNGUyZmRiMDE2NmMyNWRiMTgyNGJiZjc0YzYwMTIz=
NDY4NzlmMjBhMDcwMGFjM2Y4NTU4ODhhM2VmOThhYjgxMTk0YWI3YjI5ZGRhZjhmOTVkMmQ0NTQ=
yMGU4MmUxZGUwY2MyMzJkY2VlZWNkZmFlYzU5OTI5ZTVlODcwN2U5YTJhMDkyZDYxMGVjMDk2NT=
dmYjhjZGViMTY0OWM3NWVkMDY0MjNjZjE4YWEzZWU0NGRhZDhlN2IzYWY3YzZjYzYxZTk1MDU2N=
GIzMTQ5ZjBkMjRlMGYwMmU4ZWY5ZmMwYzhlMzMyN2NhNDRlYjMzMWE0ZDFlN2MwZTY1MTk0NmEy=
ZTI2NDI2OGU4NGZlOGRlYjM2Njg2ZDZiZmI5YjBmODQyN2ZhZjA3MDIxYmY1ZTFjNGFhNjEwYmU=
0MjJlZWUwZDY4MTJkNzEwNmEyMTExYWEzZDM3Zjg5ZDUzMWI0MjExOTBlYzlmMzJkOTg1YjUxMG=
M2YzRmMDkwMzQ4NTRmYWQ4NDY3OWEwMzRmNzczNDM0NmJhMTRlYmUwNjkxMGYyMmU3N2QwOGIyN=
zA1ODhhMDIxMTQxOTEyYjYzMWRjZGY4ZmFhMWEwYmQ4ZGIwNzYwNzU4YjM0YzdjYTk5MGRlMThk=
NTEwZjZlYTUxOGFhNWI0OTU3M2Q4NjVmMTE4ODZjNTdjNzY0ZTFiY2VmODRkYTM5ODJhNDhhM2J=
mNzgxNGEwOGFhY2JmYTI4YzZhYjIwNGIxOTVlODRkNDE5OWZhODBiMDQxYTY4MzkzMTFhZWY0Nz=
Q3NThlM2YzZjUyZmQzMDI2ZTNlZTNiYjMwMGQxMTUzMzkyZjRhNGZlMGY5NTYyODAxMWZlNzU3"=
 target=3D"_blank">Privacy Policy</a>.</p>
                  </td>
                </tr>
               =20
              </tbody>
            </table>
            </td>
          </tr>
          </tbody></table>
    </div>
 =20





</div>
<img src=3D"http://clicks.meetup.com/wf/open?upn=3DA3lgiRN-2BIi6uxIl-2Fq5Uf=
WBJ-2BfK7KBf24eIqLeNF0vjkQnEpxQ0EHASAraIp-2F32iimNuEasv2JxmIzGhGBMbPKjeq-2F=
hqJYz2mI1CMioNKRemj0xdveA-2B3t7g663iVpjkG6KBLfh1sQJOa3PYhQ1qddI97bsw0JyI3SE=
7VHwQ0lM4RadSH2MYtYWwOjJoi8LbHSFPoBLQ7-2Ba4LRAmu-2B8VW6Dpe2xaNBy9Ct50rTJpkI=
pBWbcReJYfcUzffCQ10V2vPfwbqPG33qWw0TuCcjX7Y8xrBaJy5aDOI0vJyuCm2QwVLBuQynSMl=
qHxaB2IqBRJJl-2ByYm1lkVN42NIegHEQj9KXXEobnXvvy9tI5GP26TMPZVrhHm6iRJVR4tASAb=
ErTbSh-2Bsuo491ARs0XSRCEaed-2FhcQXj3XW9CiBIKYZPbNTbAAeKKQ0j5vTVHEbrjilaqxPI=
0nmikgTdJiYFbhJoHQ8Sc59URjtmIl6wmxl67hXGR82oLbLmR2M-2BVf-2FQKwg9NsvGN-2FHgJ=
97ezZrpDddsyqn-2BU-2B9-2F0uup-2B5zqnDBHBq37tTt35-2F5uzeFt7PZq6dK2R6Ot-2BCe3=
o5dPUCjSaDmb5w2HC7442vM39tYj1FhzSZBURqpmwxoN-2FRNMgWznZlgkELo16O5VVSLKvDRgd=
8IQIy68ICU4DSnGXQ5mX4DnymX1fx7snsm3XlF6cPnDPIcRNaRj4Q5DSC-2BihHJDHciJ4V-2BK=
SmjkEje75065WOrqc84-3D" alt=3D"" width=3D"1" height=3D"1" border=3D"0" styl=
e=3D"height:1px!important;width:1px!important;border-width:0!important;marg=
in-top:0!important;margin-bottom:0!important;margin-right:0!important;margi=
n-left:0!important;padding-top:0!important;padding-bottom:0!important;paddi=
ng-right:0!important;padding-left:0!important"/><p></p></div>
</div></div>




--000000000000c2168b0607354883--
