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
Subject: =F0=9F=93=85 Wednesday: Join 258 Developers at "React-IL October m=
eetup -
Powered by Codux"
To: <yurik1776@gmail.com>


React Israel invites you to keep connecting

[image: Meetup]
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1lMbY-2F0BB6sl1-2BGb-2BU4Xb61IYOfzSGDr1WLA6MC9Dyq9-2F8g3ZHmsfIhK4v=
jh2BPLpwsD6Iy-2BmFCfGEumnmGhsB4xvvr0JsqTn3JcdmaNJdQmw-3D-3DvXJK_mbs2f7SyB5W=
yT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL=
7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi1=
5lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyM=
BdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAt=
IzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w=
4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2=
BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2=
F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzB=
kMuYcNFUP9xOpzJv2vpvSBjIFGYEbrjBhMAi21co2FCsIhZnrKJewkpTm7WBnwutHXJlAJlUJDv=
bEuQETsXXiENn2Qli7CN1a-2BATluyPWxGCU2ytGejP-2Bo3WCJz-2FzK0agRzVeLfPJ-2FjUdN=
WfHf95-2B7cdr86lgCguEBV2SB5I-3D>

Wednesday
React-IL October meetup - Powered by Codux
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1mn7VTUUxQUkEDFdfiCqWyg-2F-2FMaMVZ4MzDI9jVPqTK1Zw-3D-3DP4-r_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vgBOFzapgaIhHp3ZemhfNGsZHQ-2F-2FD58qpwVhto5iYYGmjrvgl=
RxvacHMdCeK9vLEillil3r5o-2BBlQS0-2Bw6V36i2gX7HUrTI4poEZv-2Fdn0mhAHS2Wvjiq4R=
C3XTAO1sg1THO45tyVYLTspJACPdfK0YY-3D>
React Israel
Wednesday, October 11, 2023
6:00 PM Asia/Jerusalem
Yigal Alon St 98
Yigal Alon St 98
Tel Aviv-Yafo
[image: Add to calendar]
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygnFybTO64pAGCxg8iW9n9tib8DOnxrJm7vrL6SBlzwZP=
YJWTDJ-2F6HZWI-2BaHp4BMoIFj9fPLCDKFmU0J-2BUKr5Uxw-3D-3D95l0_mbs2f7SyB5WyT-2=
FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUO=
iGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpA=
M0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE=
9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxr=
OvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4Ump=
Zkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgc=
hzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dn=
Hp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuY=
cNFUP9xOpzJv2vh3BMFmE2GxPf0ass3kTNxsTSU8teChfWihCYB-2Bi8dlih5bTe0scP-2F435S=
ue2qGk6PhrweH-2FgOHGWEVo-2FPfU4qIHfrCz8hHEBFOsCMqsPeIrv-2FBQfkzupyuEfksAQZY=
NQBVsgANEdtvu-2BKlUqpzFcjc-3D>

Add to calendar
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygnFybTO64pAGCxg8iW9n9tib8DOnxrJm7vrL6SBlzwZP=
YJWTDJ-2F6HZWI-2BaHp4BMoIFj9fPLCDKFmU0J-2BUKr5Uxw-3D-3DQ-ew_mbs2f7SyB5WyT-2=
FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUO=
iGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpA=
M0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE=
9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxr=
OvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4Ump=
Zkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgc=
hzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dn=
Hp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuY=
cNFUP9xOpzJv2vgvaEBNpl9-2B3WR-2FrXzUqVmCV5gLWHgEaJeX05JE01BaGUtyj-2FueEmCyQ=
8XCo6lvLyf1L7TRhYxGEbKP0CWEL-2BW6a5-2BLp3KefE8CUm-2FAWSgtMwmBj0OhveOfdZm29J=
zH50mVg2tf1I-2FCYx6W4pbPnKMA-3D>
*RSVP today*
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygNvHx-2BSJtSG68Xqf20oab3TbrB0eA7frZ1Js6tzMQ0=
P64BY3MJUfnfv5wpJllkti5HzY2fY2bVktjqTFaLyWQmwlZruB4VZiXUDU-2FWWlwYUlt2oa6ff=
ir6ml5ImmyFoI2ZuXFfYARp6fvWeH0ohfDbw-3D-3Did5s_mbs2f7SyB5WyT-2FI4mP44SLtVUK=
r2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm=
-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCX=
CEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvM=
JER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMH=
Tv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKya=
UjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4x=
DM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBc=
o1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2=
vhJA4VuzjbGWYVl9MKYpc9JAhjWys5tBNdjP1OteGFBo7UOVZ63hV6SCkrPVFDHtuZc1PphlzlT=
d4Ioe2JXW9NqsoQ-2FYZAKm87joHWdyP2-2FhrgJ41oUSu-2F76D05e-2Fe6DYbTYzq3US0Dts8=
ybRfGM8Hc-3D>
258 Developers going, including:
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3erUsSEUUHtbb7Ew2lUS6tw-3D-3Dw2vy_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vjika6hVtM-2FAaJXMPOhKE6hhwfESHpe-2BDaLUurMIEcMEV2akGsgG4=
bMdklBlS5JQswMr8hwtbuzvre4CfMzsO3ADynLXBegGiY61YjIlQUTPXPpmKSv0GAm8veeseMFF=
I7S2VHe-2BYyrRsojo7pKNtCY-3D>
EventHandler Productions
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3erUsSEUUHtbb7Ew2lUS6tw-3D-3DIv2j_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2viLfOO3RR54NYCQyzUT-2FkJPr2neSkh4yszyludfO-2Fk-2BWJ7-2Fq-=
2F-2Fbj7kZt6f3USf7LUeiu-2FHu3qdbMD5hRYzJOjw5oic1E59goVF83SYkGAtc76SOpyAcaXn=
Tc123X9-2FG7q65jlS326GT-2FWPmmwRplviY-3D>
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3pPcCtSYas3XmXopoPiuGUg-3D-3DtM_q_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vtaPLR1ieJ-2F1ct5E-2BUMFFhw428dZ7U7C9FWGTdUeoAwGH7H0oDTT2=
fjGq652SQ1Qxo40-2Bdz1GNZROzDSKoyXkcxN-2FtkGuyRlDGn4W6ULDW7a4wWExi0HVgmm3cIE=
lOBl0Fay2o-2FGAYGKbpz6VHGFWGk-3D>
Rotem Bar Sela
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3pPcCtSYas3XmXopoPiuGUg-3D-3DcfCR_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vrETTn1u3-2BxXNPGH3H7vsrYqoW-2F-2F41j-2BauORvMazolnxA1vfo=
zmaEd2-2BIgRQhpPL198aHv6jxFId9bNm2Y8rbvu-2FEkpGap1MYeMO496w8-2B89KJPsocT5qS=
yCJEGehDN1GOxp6Hdhna-2B8Cnx9lVQbrTk-3D>
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3RNVRk4ChePwbzdIOMiph2A-3D-3DBi1X_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vtD8-2BNUIeOfDRjdSIKm5QgZ-2F-2BV1dR1NAcSU3DtM8TUEsTQu1nrS=
mef5j3FA6m2fpC-2Bzlp1Bsz-2B43eWxKLp-2FIu4d7uhiH0-2Butiv7yLkzrfGkWuiqGhP-2Bc=
WITLqQB54jPWyeAya4-2FVyreP4Woxv-2B34EcM-3D>
Karl Vargas
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3RNVRk4ChePwbzdIOMiph2A-3D-3DUd4b_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vlHSTXLZ4lCXS-2FXNfkAqf4JioT3Vqf189-2BHa3nDCl7VjezDd1KZHr=
vKtaov9io1HqCsAx15rKL2ko7YowGuJoQ7oAg7UV5GsT-2Fo-2BH9qzS4osVHvNyPxFs6-2BPJ7=
ckn6nuniKxFF9Pb8dSuP13IgR4I2U-3D>
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3Q3-2Bl3lKdNtFk4ry-2FVIMVnw-3D-3DIIWY_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vtJcgwwDFNQhTkl1DD54EHN-2Fg7D-2FdxEkQ-2FTfEDSsWOMxxnb=
liD5-2FNQrbPKEXjX5-2BK7vICLxp03fMwqwbaeL0lfvxRbH4Vrp6IE-2FYFEJ-2BNUW9BJ3mX6=
KRAEGCOL3YyjqoDRvXtQr8yT-2BgS8MOOTM54lk-3D>
dor hazan
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3Q3-2Bl3lKdNtFk4ry-2FVIMVnw-3D-3DeB4x_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vl8urg9SMm3GYav1y4WHzT9R6qbNrLi7hJjJ1v5rNSy-2B3ucWkbX=
PMvm3oOLwxBFspL2jiy0ofbPZZ55gU7ARpLdeKaqMBexuAfnARnS7O2XaTKIZzgxJuMT01oYq5p=
dud4gedQ6Afenn-2BoMrfoLSqTA-3D>
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3PZCh-2FQcXyiqPed0-2BxFhAnw-3D-3DNNEs_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vnOWKaGGnf2rpQwYs1bSFESdUFVMzJb7KRZaltSxcwqpZrNt9HUFk=
FK4Anj3yy2y2fjvkWBHfXt7nSCLXaTHDSR39ej2z4HEDoMvo8rMHoeNXz2QRUvLmgBb-2FwM84V=
cHxLfiPW19xO1-2B-2FrRGXKPdGOk-3D>
Owen Granot
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3PZCh-2FQcXyiqPed0-2BxFhAnw-3D-3DqnhV_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vpsER4SEQIZgR1ENVThC8pNaE8DJeSCpGC723zYC4LweEQg-2F50B=
pHizLM6y9s4oJsiAYnLGJ-2FTjRwiSFkmEkrsn9SsobX1eh5Lp9CQIBdeY53p4Xm3XVuFGSuWSk=
6vwc3-2BsYTk63yLw0rlhQ8Nk5XRs-3D>
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3EUW800fgVoXgFldfVT2MEA-3D-3DPOwm_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vpflDJnwZpD-2BfjUwl8ITJNqceoPEM-2BzMeM53Kcx2kk1ZIsaOU7zR2=
B5FvekWLiXi3uSu4DkIvpOvp4z31ie4W9c5XdtYEjzlmLZSF3OxnFKBgfETD6dbZLv38gpUy89i=
D-2FEsNvKJSwQJUp4CdMTNgcI-3D>
Yahli Gitzi
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3EUW800fgVoXgFldfVT2MEA-3D-3DppTh_mbs2f7SyB5=
WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESo=
L7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi=
15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYy=
MBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFA=
tIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05=
w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-=
2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-=
2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1Kxz=
BkMuYcNFUP9xOpzJv2vnGgAMeZr2UOY7ZzC-2BLuWyJDk9XNXuY0nIHTntdkiIGUEs5P6GZqRzW=
9ehde8PO9HqZjmacImFBiy0EO4YkuaJFa8DIAjzGKk1H3w7WU1mWxZD-2FS-2FNN39FiMoe1UpI=
p5qnEwwQQjoUG7A32MccunZPo-3D>
*Event description:* Join us for our October React-IL meetup - Powered by
Codux! Agenda (All talks will be in Hebrew, the meetup will not be
recorded): 18:00 - Meet & Mingle 18:30 - Opening words 18:35 - Off with
T... Learn more
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1mn7VTUUxQUkEDFdfiCqWyg-2F-2FMaMVZ4MzDI9jVPqTK1Zw-3D-3DE_GE_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vt4bJJqqHN0lGzDP8KogI0dzbQGKxIEx5vMh6aSDqJuuxFi5khJYj=
M9ogtzEyFW-2BbFycDOrX9Zmy9OYLTz-2BNKO2dcLUMH88n7gdQrbIUfaSoxZDZdow05NM6qN6w=
nqo1u0M82uKVDwSmYA3cbOrR2c8-3D>

You received this message because you are a registered member of Meetup.
Unsubscribe
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1lpexBOJyqQikV03RvlxyQD1nQMxXAAYhtaUunMV52-2FQH0nJHVdaIqrs-2BuSZJz=
7CDV0w68sOd0WTjtjVQ-2BFelT60d4NZNLySFAlS-2FM8WT4VI4sHHznpnEdHBgfuNQS16TNvrn=
6VXERa4sSABDC17RHFEO5NZG7kNkJZOuM-2FsX8KNA-3D-3D5hQN_mbs2f7SyB5WyT-2FI4mP44=
SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1=
v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQ=
bWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8s=
pvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iY=
D6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-=
2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHno=
vKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQ=
DJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9x=
OpzJv2vtwWvobUP605n7C5gCs7yd5UwXOVcJ1efZwqIp6da5pldtuR0K-2FsktPNLxsZaWbr95P=
Y-2BN1nihdnYIdvV6458zsfxHSDtAMJTe6ktgq20g-2FAkYs2IAIYPHDQ731Hg8L8kJ93LaYJdK=
NCda8wYjbkKv8-3D>
from this type of email. Manage your settings
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1kuV7KZhf1LUuXid5Kkjrv9aec-2F-2FSAO-2B57XcBhbZ6R8hc6WbZ0sIXmRb8m4o=
1q78DdouhEVRcZzr-2FzIvs64ztH7bkWyPjmQniJfVSu5XDVByL26QqHYsyKuXRZYWBvbofBmIW=
zKUsjJppe02xoK4P2Swr5JF0ssH43ljhyAq-2F7uc125qT0-2B8IJu-2FHcZRpobEVHMASfuJOY=
omGl6v9a3fLSarl1N_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkN=
cyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiE=
XpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4x=
uIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiV=
BrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ=
-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxo=
t7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQ=
aJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMo=
zLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vs0fuo9N5SqqyDt5wlqKEQNc1aW-2=
BCXfYwjhE-2BhaIHjl41oc7lQyDxaFPE0-2BiUioq6HXnlpQgRDSdr9ZH52IvCHt9jxj8TaJ703=
-2FDDHRdPukSj9BE1aRxJ5vsHAHQZfcBjqtXbexTO-2BB1U2-2FQi16kgRU-3D>
for all types of email updates.
Visit a your account page
<http://clicks.meetup.com/ls/click?upn=3D8Y2vsX5dSU9BIj3r0FDX3hKPTxoZ-2F4Co=
TjtrmZj9WRLwKZRAorXPNMZVwCIVN5rVR5S-2FriZ5VfraAjoH5-2FdTE-2Fcg-2Fd1VKL6k0PL=
POHWrN7aN9RtHy-2FRWWuBpoT-2BpQP4GZpR4-2BOLVmsIsnEM0Tv7bqaOQEQoIiYUqe9npvZGH=
XFMvLBG6v8dm9RCoaILXjk8lkyMdMqSnRoZhx0f0CeIwqt8A-2FZz31mbqFJWEFEXwHJWJw-2BT=
FnTCK-2F2WehtgRSJg-2B6fjX_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8=
PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi=
1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzf=
A5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2=
bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1=
g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxs=
YyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVR=
I9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhp=
cwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vrMa-2F1LfRzn3vtAZdRu=
NGsRLA0T03UQ-2BdyDtNEBcn1heMZT1QAiAgyxVsOy96wjoTFsYZZul2L0Y8YfRTwAGcseuU7y3=
fXFsmPCDtQoegHEc7teee1gkIn7tXABEnZI-2BEpz-2FhmGm7aVE7PU8-2F0WxZ-2F8-3D>
to change your contact details, privacy settings, and other settings.
Meetup LLC
<http://clicks.meetup.com/ls/click?upn=3D8Y2vsX5dSU9BIj3r0FDX3lSPClZdoQRTM8=
7Zc9pGBVv4IaI0DdWeyx54S6KDP8i-2BOSVZC175vkMReJkNBj5X8Prg7vFYRNWc70lXLMDjiw5=
v9Q5UaGw28FxozMcn5tEC8OBY1beVHbAlN92HnoWtn3eqVc0MMadYDkCm5jhJLkO52kBI8AgVlX=
DiPx-2BR383p8Kzk2qrnEXKIIngIIyKDEF-2B6HF-2FoZvhEtI14-2BGJMZUA-3DWytf_mbs2f7=
SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsb=
LESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRM=
atNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5=
HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8=
mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5Gyd=
zL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37E=
MEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJR=
LN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW=
1KxzBkMuYcNFUP9xOpzJv2vkYMeOl3iRNmLfdvl8PdzzKiCnbanzKnO6nuhXP3aiZe5FMU-2Baa=
Y-2BzUDab1qyk9otrcm-2FLtWt6K3uAZZk-2F20Be5xvc3C04fCSGfOFnDQOIESGWNA1YLZD2ZE=
pb2knqKaYQEORffwr3qWvQv0O5-2FDA4g-3D>,
POB 4668 #37895 NY NY USA 10163
Read our Privacy Policy
<http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4C=
zodbRR1Rd1lhUUqAoqop-2FiYO7Df4o2hT-2FcFCBR08Iq5f5UuOkTBHBmKbla2vsR6PMPp2js-=
2BBaNaeISosCb-2Byhg1iLdCQ2dtHaGqqH-2BDPlcIei5dUxTbRF968gnXM2xso9eXniAirsqcd=
Du915CJO4sKffGXvJcaVhHTz5LccxPRgrZgeVsy9UghHpVYXO3vtpfkIFbelwNwTD4t2HbIITQE=
xq2g7gJyPdgkI_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfx=
Gqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT4=
3K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik=
8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTV=
NEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FG=
eidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7Na=
wFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkA=
S7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtj=
K3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vqW-2BBWiUKdSYBzvLCC-2BUQGKR6stGw=
1VOc-2F7wbpLOinryec4c7oEHUkenWFOR7vPG2L-2FicV96wUOMSkhCHp8LU6p2Z3COg0Euivlb=
vsOf98uNSgf5M6bk3vcyqKAXuJ-2FBYHGskR2XM4pheu5N97KciKo-3D>
.

--000000000000c2168b0607354883
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong cla=
ss=3D"gmail_sendername" dir=3D"auto">React Israel</strong> <span dir=3D"aut=
o">&lt;<a href=3D"mailto:info@email.meetup.com">info@email.meetup.com</a>&g=
t;</span><br>Date: Thu, Oct 5, 2023 at 7:35=E2=80=AFPM<br>Subject: =F0=9F=
=93=85 Wednesday: Join 258 Developers at &quot;React-IL October meetup - Po=
wered by Codux&quot;<br>To:  &lt;<a href=3D"mailto:yurik1776@gmail.com">yur=
ik1776@gmail.com</a>&gt;<br></div><br><br><u></u>
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
http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4Cz=
odbRR1Rd1lMbY-2F0BB6sl1-2BGb-2BU4Xb61IYOfzSGDr1WLA6MC9Dyq9-2F8g3ZHmsfIhK4vj=
h2BPLpwsD6Iy-2BmFCfGEumnmGhsB4xvvr0JsqTn3JcdmaNJdQmw-3D-3DvXJK_mbs2f7SyB5Wy=
T-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7=
tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15=
lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMB=
dHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtI=
zxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4=
UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2B=
NgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F=
0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBk=
MuYcNFUP9xOpzJv2vpvSBjIFGYEbrjBhMAi21co2FCsIhZnrKJewkpTm7WBnwutHXJlAJlUJDvb=
EuQETsXXiENn2Qli7CN1a-2BATluyPWxGCU2ytGejP-2Bo3WCJz-2FzK0agRzVeLfPJ-2FjUdNW=
fHf95-2B7cdr86lgCguEBV2SB5I-3D" title=3D"Meetup" target=3D"_blank">
              <img src=3D"https://img1.meetupstatic.com/img/email/meetup-lo=
go-110@2x.png" width=3D"110" height=3D"40" alt=3D"Meetup" style=3D"border:0=
">
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
          <a href=3D"http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2F=
uV5MohrYpdrra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWyg-2F-2FMaMVZ4MzDI9jVPqTK=
1Zw-3D-3DP4-r_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfx=
Gqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT4=
3K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik=
8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTV=
NEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FG=
eidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7Na=
wFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkA=
S7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtj=
K3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vgBOFzapgaIhHp3ZemhfNGsZHQ-2F-2FD=
58qpwVhto5iYYGmjrvglRxvacHMdCeK9vLEillil3r5o-2BBlQS0-2Bw6V36i2gX7HUrTI4poEZ=
v-2Fdn0mhAHS2Wvjiq4RC3XTAO1sg1THO45tyVYLTspJACPdfK0YY-3D" style=3D"color:#e=
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
              <br>
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
                  </span><br>
               =20
               =20
               =20
                 =20
                 =20
                 =20
                 =20
                 =20
                  Yigal Alon St 98<br>
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
                      <a href=3D"http://clicks.meetup.com/ls/click?upn=3DXb=
aZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygnFybTO64pAG=
Cxg8iW9n9tib8DOnxrJm7vrL6SBlzwZPYJWTDJ-2F6HZWI-2BaHp4BMoIFj9fPLCDKFmU0J-2BU=
Kr5Uxw-3D-3D95l0_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNc=
yfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEX=
pT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xu=
Iik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVB=
rTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-=
2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot=
7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQa=
JkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMoz=
LtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vh3BMFmE2GxPf0ass3kTNxsTSU8teC=
hfWihCYB-2Bi8dlih5bTe0scP-2F435Sue2qGk6PhrweH-2FgOHGWEVo-2FPfU4qIHfrCz8hHEB=
FOsCMqsPeIrv-2FBQfkzupyuEfksAQZYNQBVsgANEdtvu-2BKlUqpzFcjc-3D" target=3D"_b=
lank">
                        <img src=3D"https://appboy-images.com/appboy/commun=
ication/assets/image_assets/images/6131205644145f38056fdd69/original.png?16=
30609494" alt=3D"Add to calendar">
                      </a>
                    </td>
                    <td>
                      <p style=3D"color:#57646c;font-size:14px;margin:0;fon=
t-family:arial,sans-serif">
                        <a style=3D"color:#57646c;text-decoration:none" hre=
f=3D"http://clicks.meetup.com/ls/click?upn=3DXbaZ37larFA-2FuV5MohrYpdrra25M=
tI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygnFybTO64pAGCxg8iW9n9tib8DOnxrJm7vrL6SBl=
zwZPYJWTDJ-2F6HZWI-2BaHp4BMoIFj9fPLCDKFmU0J-2BUKr5Uxw-3D-3DQ-ew_mbs2f7SyB5W=
yT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL=
7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi1=
5lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyM=
BdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAt=
IzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w=
4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2=
BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2=
F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzB=
kMuYcNFUP9xOpzJv2vgvaEBNpl9-2B3WR-2FrXzUqVmCV5gLWHgEaJeX05JE01BaGUtyj-2FueE=
mCyQ8XCo6lvLyf1L7TRhYxGEbKP0CWEL-2BW6a5-2BLp3KefE8CUm-2FAWSgtMwmBj0OhveOfdZ=
m29JzH50mVg2tf1I-2FCYx6W4pbPnKMA-3D" target=3D"_blank">
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
                        <div><a href=3D"http://clicks.meetup.com/ls/click?u=
pn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWygNvHx=
-2BSJtSG68Xqf20oab3TbrB0eA7frZ1Js6tzMQ0P64BY3MJUfnfv5wpJllkti5HzY2fY2bVktjq=
TFaLyWQmwlZruB4VZiXUDU-2FWWlwYUlt2oa6ffir6ml5ImmyFoI2ZuXFfYARp6fvWeH0ohfDbw=
-3D-3Did5s_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi=
0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K2=
1OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hk=
wj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw=
-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeid=
tvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP=
2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7K=
Gcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3h=
hnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vhJA4VuzjbGWYVl9MKYpc9JAhjWys5tBNdjP=
1OteGFBo7UOVZ63hV6SCkrPVFDHtuZc1PphlzlTd4Ioe2JXW9NqsoQ-2FYZAKm87joHWdyP2-2F=
hrgJ41oUSu-2F76D05e-2Fe6DYbTYzq3US0Dts8ybRfGM8Hc-3D" target=3D"_blank"><str=
ong>RSVP today</strong></a></div>
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
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3erU=
sSEUUHtbb7Ew2lUS6tw-3D-3Dw2vy_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vjika6hVtM-2FAaJX=
MPOhKE6hhwfESHpe-2BDaLUurMIEcMEV2akGsgG4bMdklBlS5JQswMr8hwtbuzvre4CfMzsO3AD=
ynLXBegGiY61YjIlQUTPXPpmKSv0GAm8veeseMFFI7S2VHe-2BYyrRsojo7pKNtCY-3D" targe=
t=3D"_blank"><img src=3D"https://secure.meetupstatic.com/photos/member/5/c/=
3/6/thumb_309683606.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=
=3D"width:50px;display:block;margin:0"></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3erU=
sSEUUHtbb7Ew2lUS6tw-3D-3DIv2j_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2viLfOO3RR54NYCQyz=
UT-2FkJPr2neSkh4yszyludfO-2Fk-2BWJ7-2Fq-2F-2Fbj7kZt6f3USf7LUeiu-2FHu3qdbMD5=
hRYzJOjw5oic1E59goVF83SYkGAtc76SOpyAcaXnTc123X9-2FG7q65jlS326GT-2FWPmmwRplv=
iY-3D" style=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Event=
Handler Productions</a>
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
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3pPc=
CtSYas3XmXopoPiuGUg-3D-3DtM_q_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vtaPLR1ieJ-2F1ct5=
E-2BUMFFhw428dZ7U7C9FWGTdUeoAwGH7H0oDTT2fjGq652SQ1Qxo40-2Bdz1GNZROzDSKoyXkc=
xN-2FtkGuyRlDGn4W6ULDW7a4wWExi0HVgmm3cIElOBl0Fay2o-2FGAYGKbpz6VHGFWGk-3D" t=
arget=3D"_blank"><img src=3D"https://secure.meetupstatic.com/photos/member/=
9/1/0/e/thumb_312457134.jpeg" border=3D"0" width=3D"50" height=3D"auto" sty=
le=3D"width:50px;display:block;margin:0"></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3pPc=
CtSYas3XmXopoPiuGUg-3D-3DcfCR_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vrETTn1u3-2BxXNPG=
H3H7vsrYqoW-2F-2F41j-2BauORvMazolnxA1vfozmaEd2-2BIgRQhpPL198aHv6jxFId9bNm2Y=
8rbvu-2FEkpGap1MYeMO496w8-2B89KJPsocT5qSyCJEGehDN1GOxp6Hdhna-2B8Cnx9lVQbrTk=
-3D" style=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Rotem B=
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
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3RNV=
Rk4ChePwbzdIOMiph2A-3D-3DBi1X_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vtD8-2BNUIeOfDRjd=
SIKm5QgZ-2F-2BV1dR1NAcSU3DtM8TUEsTQu1nrSmef5j3FA6m2fpC-2Bzlp1Bsz-2B43eWxKLp=
-2FIu4d7uhiH0-2Butiv7yLkzrfGkWuiqGhP-2BcWITLqQB54jPWyeAya4-2FVyreP4Woxv-2B3=
4EcM-3D" target=3D"_blank"><img src=3D"https://secure.meetupstatic.com/phot=
os/member/9/9/1/7/thumb_307479191.jpeg" border=3D"0" width=3D"50" height=3D=
"auto" style=3D"width:50px;display:block;margin:0"></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3RNV=
Rk4ChePwbzdIOMiph2A-3D-3DUd4b_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vlHSTXLZ4lCXS-2FX=
NfkAqf4JioT3Vqf189-2BHa3nDCl7VjezDd1KZHrvKtaov9io1HqCsAx15rKL2ko7YowGuJoQ7o=
Ag7UV5GsT-2Fo-2BH9qzS4osVHvNyPxFs6-2BPJ7ckn6nuniKxFF9Pb8dSuP13IgR4I2U-3D" s=
tyle=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Karl Vargas</=
a>
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
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3Q3-=
2Bl3lKdNtFk4ry-2FVIMVnw-3D-3DIIWY_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6=
c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My7=
81oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPm=
WhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2F=
Ak145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F=
7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC=
-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2=
BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0=
hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vtJcgwwDFNQhT=
kl1DD54EHN-2Fg7D-2FdxEkQ-2FTfEDSsWOMxxnbliD5-2FNQrbPKEXjX5-2BK7vICLxp03fMwq=
wbaeL0lfvxRbH4Vrp6IE-2FYFEJ-2BNUW9BJ3mX6KRAEGCOL3YyjqoDRvXtQr8yT-2BgS8MOOTM=
54lk-3D" target=3D"_blank"><img src=3D"https://secure.meetupstatic.com/phot=
os/member/a/f/8/3/thumb_314024931.jpeg" border=3D"0" width=3D"50" height=3D=
"auto" style=3D"width:50px;display:block;margin:0"></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3Q3-=
2Bl3lKdNtFk4ry-2FVIMVnw-3D-3DeB4x_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6=
c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My7=
81oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPm=
WhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2F=
Ak145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F=
7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC=
-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2=
BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0=
hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vl8urg9SMm3GY=
av1y4WHzT9R6qbNrLi7hJjJ1v5rNSy-2B3ucWkbXPMvm3oOLwxBFspL2jiy0ofbPZZ55gU7ARpL=
deKaqMBexuAfnARnS7O2XaTKIZzgxJuMT01oYq5pdud4gedQ6Afenn-2BoMrfoLSqTA-3D" sty=
le=3D"color:#0066cc;text-decoration:none" target=3D"_blank">dor hazan</a>
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
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3PZC=
h-2FQcXyiqPed0-2BxFhAnw-3D-3DNNEs_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6=
c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My7=
81oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPm=
WhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2F=
Ak145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F=
7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC=
-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2=
BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0=
hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vnOWKaGGnf2rp=
QwYs1bSFESdUFVMzJb7KRZaltSxcwqpZrNt9HUFkFK4Anj3yy2y2fjvkWBHfXt7nSCLXaTHDSR3=
9ej2z4HEDoMvo8rMHoeNXz2QRUvLmgBb-2FwM84VcHxLfiPW19xO1-2B-2FrRGXKPdGOk-3D" t=
arget=3D"_blank"><img src=3D"https://braze-images.com/appboy/communication/=
assets/image_assets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" b=
order=3D"0" width=3D"50" height=3D"auto" style=3D"width:50px;display:block;=
margin:0"></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3PZC=
h-2FQcXyiqPed0-2BxFhAnw-3D-3DqnhV_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6=
c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My7=
81oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPm=
WhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2F=
Ak145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F=
7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC=
-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2=
BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0=
hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vpsER4SEQIZgR=
1ENVThC8pNaE8DJeSCpGC723zYC4LweEQg-2F50BpHizLM6y9s4oJsiAYnLGJ-2FTjRwiSFkmEk=
rsn9SsobX1eh5Lp9CQIBdeY53p4Xm3XVuFGSuWSk6vwc3-2BsYTk63yLw0rlhQ8Nk5XRs-3D" s=
tyle=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Owen Granot</=
a>
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
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3EUW=
800fgVoXgFldfVT2MEA-3D-3DPOwm_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vpflDJnwZpD-2BfjU=
wl8ITJNqceoPEM-2BzMeM53Kcx2kk1ZIsaOU7zR2B5FvekWLiXi3uSu4DkIvpOvp4z31ie4W9c5=
XdtYEjzlmLZSF3OxnFKBgfETD6dbZLv38gpUy89iD-2FEsNvKJSwQJUp4CdMTNgcI-3D" targe=
t=3D"_blank"><img src=3D"https://braze-images.com/appboy/communication/asse=
ts/image_assets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" borde=
r=3D"0" width=3D"50" height=3D"auto" style=3D"width:50px;display:block;marg=
in:0"></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1nORoJnIM0RYXR7qjmUXbr3EUW=
800fgVoXgFldfVT2MEA-3D-3DppTh_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1=
fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJ=
LSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTW=
lQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk14=
5aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6D=
sLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0=
aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrq=
jcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlub=
qjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vnGgAMeZr2UOY7ZzC=
-2BLuWyJDk9XNXuY0nIHTntdkiIGUEs5P6GZqRzW9ehde8PO9HqZjmacImFBiy0EO4YkuaJFa8D=
IAjzGKk1H3w7WU1mWxZD-2FS-2FNN39FiMoe1UpIp5qnEwwQQjoUG7A32MccunZPo-3D" style=
=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Yahli Gitzi</a>
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
                <a href=3D"http://clicks.meetup.com/ls/click?upn=3DXbaZ37la=
rFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1mn7VTUUxQUkEDFdfiCqWyg-2F-2FMaMVZ4MzDI9=
jVPqTK1Zw-3D-3DE_GE_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyY=
kNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzH=
iEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv=
4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymci=
iVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7I=
TZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4b=
xot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2=
FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgc=
MozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vt4bJJqqHN0lGzDP8KogI0dzbQG=
KxIEx5vMh6aSDqJuuxFi5khJYjM9ogtzEyFW-2BbFycDOrX9Zmy9OYLTz-2BNKO2dcLUMH88n7g=
dQrbIUfaSoxZDZdow05NM6qN6wnqo1u0M82uKVDwSmYA3cbOrR2c8-3D" style=3D"color:#0=
6c;text-decoration:none;font-size:12px" target=3D"_blank">
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
 member of Meetup.<br>
                  <a href=3D"http://clicks.meetup.com/ls/click?upn=3DXbaZ37=
larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1lpexBOJyqQikV03RvlxyQD1nQMxXAAYhtaUun=
MV52-2FQH0nJHVdaIqrs-2BuSZJz7CDV0w68sOd0WTjtjVQ-2BFelT60d4NZNLySFAlS-2FM8WT=
4VI4sHHznpnEdHBgfuNQS16TNvrn6VXERa4sSABDC17RHFEO5NZG7kNkJZOuM-2FsX8KNA-3D-3=
D5hQN_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDd=
xNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21Ocwt=
kJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2F=
hOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiW=
PmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf=
4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPC=
itVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9=
jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdk=
XCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vtwWvobUP605n7C5gCs7yd5UwXOVcJ1efZwqIp6da=
5pldtuR0K-2FsktPNLxsZaWbr95PY-2BN1nihdnYIdvV6458zsfxHSDtAMJTe6ktgq20g-2FAkY=
s2IAIYPHDQ731Hg8L8kJ93LaYJdKNCda8wYjbkKv8-3D" target=3D"_blank">Unsubscribe=
</a> from this type of email. <a href=3D"http://clicks.meetup.com/ls/click?=
upn=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1kuV7KZhf1LUuXid5Kkjrv9aec=
-2F-2FSAO-2B57XcBhbZ6R8hc6WbZ0sIXmRb8m4o1q78DdouhEVRcZzr-2FzIvs64ztH7bkWyPj=
mQniJfVSu5XDVByL26QqHYsyKuXRZYWBvbofBmIWzKUsjJppe02xoK4P2Swr5JF0ssH43ljhyAq=
-2F7uc125qT0-2B8IJu-2FHcZRpobEVHMASfuJOYomGl6v9a3fLSarl1N_mbs2f7SyB5WyT-2FI=
4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiG=
yizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0=
h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9c=
gfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOv=
vJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZk=
rzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchz=
fZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp=
3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcN=
FUP9xOpzJv2vs0fuo9N5SqqyDt5wlqKEQNc1aW-2BCXfYwjhE-2BhaIHjl41oc7lQyDxaFPE0-2=
BiUioq6HXnlpQgRDSdr9ZH52IvCHt9jxj8TaJ703-2FDDHRdPukSj9BE1aRxJ5vsHAHQZfcBjqt=
XbexTO-2BB1U2-2FQi16kgRU-3D" target=3D"_blank">Manage your settings </a> fo=
r all types of email updates.<br>
                  Visit a <a href=3D"http://clicks.meetup.com/ls/click?upn=
=3D8Y2vsX5dSU9BIj3r0FDX3hKPTxoZ-2F4CoTjtrmZj9WRLwKZRAorXPNMZVwCIVN5rVR5S-2F=
riZ5VfraAjoH5-2FdTE-2Fcg-2Fd1VKL6k0PLPOHWrN7aN9RtHy-2FRWWuBpoT-2BpQP4GZpR4-=
2BOLVmsIsnEM0Tv7bqaOQEQoIiYUqe9npvZGHXFMvLBG6v8dm9RCoaILXjk8lkyMdMqSnRoZhx0=
f0CeIwqt8A-2FZz31mbqFJWEFEXwHJWJw-2BTFnTCK-2F2WehtgRSJg-2B6fjX_mbs2f7SyB5Wy=
T-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7=
tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15=
lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMB=
dHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtI=
zxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4=
UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2B=
NgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F=
0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBk=
MuYcNFUP9xOpzJv2vrMa-2F1LfRzn3vtAZdRuNGsRLA0T03UQ-2BdyDtNEBcn1heMZT1QAiAgyx=
VsOy96wjoTFsYZZul2L0Y8YfRTwAGcseuU7y3fXFsmPCDtQoegHEc7teee1gkIn7tXABEnZI-2B=
Epz-2FhmGm7aVE7PU8-2F0WxZ-2F8-3D" target=3D"_blank">your account page</a> t=
o change your contact details, privacy settings, and other settings.<br>
                  <a href=3D"http://clicks.meetup.com/ls/click?upn=3D8Y2vsX=
5dSU9BIj3r0FDX3lSPClZdoQRTM87Zc9pGBVv4IaI0DdWeyx54S6KDP8i-2BOSVZC175vkMReJk=
NBj5X8Prg7vFYRNWc70lXLMDjiw5v9Q5UaGw28FxozMcn5tEC8OBY1beVHbAlN92HnoWtn3eqVc=
0MMadYDkCm5jhJLkO52kBI8AgVlXDiPx-2BR383p8Kzk2qrnEXKIIngIIyKDEF-2B6HF-2FoZvh=
EtI14-2BGJMZUA-3DWytf_mbs2f7SyB5WyT-2FI4mP44SLtVUKr2OPPphMmhug6c5u1fyP8PA7H=
yYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v3BZBm-2FRTDdiK8My781oJLSFi1RsP=
zHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQbWKXCXCEHj23mTCNYPmWhTWlQzfA5rV=
Av4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8spvSQvMJER7TxQ5fZ-2FAk145aF2bCym=
ciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD6UBMHTv1eXdstkt-2F7d6DsLq1g-2B=
7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2FYKyaUjEy12tyqFZYC-2F0aZxsYyhH=
4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnovKfJ4xDM1YSGITWhm-2BMrqjcVRI9ho=
-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQDJpOBco1XuDZGRTsIn0hlubqjhpcwEZ=
gcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xOpzJv2vkYMeOl3iRNmLfdvl8PdzzKiC=
nbanzKnO6nuhXP3aiZe5FMU-2BaaY-2BzUDab1qyk9otrcm-2FLtWt6K3uAZZk-2F20Be5xvc3C=
04fCSGfOFnDQOIESGWNA1YLZD2ZEpb2knqKaYQEORffwr3qWvQv0O5-2FDA4g-3D" target=3D=
"_blank">Meetup LLC</a>, POB 4668 #37895 NY NY USA 10163<br>
                   Read our <a href=3D"http://clicks.meetup.com/ls/click?up=
n=3DXbaZ37larFA-2FuV5MohrYpdrra25MtI4CzodbRR1Rd1lhUUqAoqop-2FiYO7Df4o2hT-2F=
cFCBR08Iq5f5UuOkTBHBmKbla2vsR6PMPp2js-2BBaNaeISosCb-2Byhg1iLdCQ2dtHaGqqH-2B=
DPlcIei5dUxTbRF968gnXM2xso9eXniAirsqcdDu915CJO4sKffGXvJcaVhHTz5LccxPRgrZgeV=
sy9UghHpVYXO3vtpfkIFbelwNwTD4t2HbIITQExq2g7gJyPdgkI_mbs2f7SyB5WyT-2FI4mP44S=
LtVUKr2OPPphMmhug6c5u1fyP8PA7HyYkNcyfxGqi0xZDdxNfSy-2FTUsbLESoL7tUOiGyizH1v=
3BZBm-2FRTDdiK8My781oJLSFi1RsPzHiEXpT43K21OcwtkJPw6S7viGRMatNi15lpAM0h63nQb=
WKXCXCEHj23mTCNYPmWhTWlQzfA5rVAv4xuIik8hkwj-2FhOys-2Fb77y5HeYyMBdHE9cgfJ8sp=
vSQvMJER7TxQ5fZ-2FAk145aF2bCymciiVBrTVNEw-2FiWPmSK8v2ve8p8mlFAtIzxrOvvJ8iYD=
6UBMHTv1eXdstkt-2F7d6DsLq1g-2B7ITZ-2FGeidtvsaf4jyUAnco5GydzL05w4UmpZkrzi0-2=
FYKyaUjEy12tyqFZYC-2F0aZxsYyhH4bxot7NawFP2JTPCitVCUb6ia37EMEm-2BNgchzfZHnov=
KfJ4xDM1YSGITWhm-2BMrqjcVRI9ho-2FQaJkAS7KGcvr9jjn0FpDU2sJRLN0-2F0dnHp3ViIQD=
JpOBco1XuDZGRTsIn0hlubqjhpcwEZgcMozLtjK3hhnjdkXCGF9rFVrWnW1KxzBkMuYcNFUP9xO=
pzJv2vqW-2BBWiUKdSYBzvLCC-2BUQGKR6stGw1VOc-2F7wbpLOinryec4c7oEHUkenWFOR7vPG=
2L-2FicV96wUOMSkhCHp8LU6p2Z3COg0EuivlbvsOf98uNSgf5M6bk3vcyqKAXuJ-2FBYHGskR2=
XM4pheu5N97KciKo-3D" target=3D"_blank">Privacy Policy</a>.</p>
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
ng-right:0!important;padding-left:0!important"><p></p></div>
</div></div>

--000000000000c2168b0607354883--
