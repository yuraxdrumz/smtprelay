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
localhost:1333?u=3DYTMwMDE0NDg5YmJmYTc2ZDFmYjM0ZGRmOTM1NDVhNWM5MzI2MDNhYzAx=
NDQ4YmM2OTViMjg5MWQ2YTIzYzAyMTRlZDU4OWRhODJjNjVlZWUzYzNlNGZiNjUxYTExNDBjMzB=
lNjc4NTE5Y2QzNTJkMTI4NDdhNTIwODAwNDY5MGVlMTY2N2Y4OGJkODg4MzI5YjMyNzJkMDk3Nm=
I2NWNmYWY1N2I3YmZhM2U1ZWVjM2ZkOGY3ZWM4YmM2NzFjZThmY2Y0NmExNWY5NDhkYmM1YzUwZ=
TdlNmEwMTMyYjEyYWIxN2RhMTQwNTBhMDQ2NWM5OGY3ZmNhODBiMDUwNjY0MDZkNGJhNzcxYTVl=
ZDNiODA0ZDczNmZkOTNjNmIzZjBlZjAzOWY1YjM0MDE1Yzg4YThkMGRiZTgwZGEwYTI3NDU5ODN=
iMDc2MTM3ZWU3ODIyODRmN2Y4NjEwNGFiNmE0MmM3OGY1N2NkZTUxOWMxMzQ2MWNlZmU5YzNiMT=
dmMmVkYzE2ZjhmZWVmZjg4MDdkYTA3MmU5Yzk2NTVjZjQ2ZDIyYjU1ZjJiZjRkYTdmNDhkNTFiM=
GVhYzYyMjcwMjdjZDQ3MjJhODE5ZmFhMmQyMWVlZjIxNjI2YWUwN2ZiNDQ3ZGE5NzRjMDgzZjgz=
ZDFlNjMxMDIzZGIwM2YyY2U1NThhNTQwNTE2MjJjYzYyZWRhMDM4YjJlN2VjZTNjMzE4ODc2Y2R=
jZjlmY2RiNWMzMGVlNWNiZThjMTY5ZWM1NWU5YWFhZTM1YzU1Y2YxYzg4YmUzYTFjMWVhMmRiYm=
IyNzFkMTAxYjM0NWU0ZjJlMDJkZWRmNGM1MjI1ODdiZmIwYTZhNGU3Yzc1ZTg1MDU1ZDM4NTVkM=
zYwN2Q0ZTM4MDU5Mzg2Y2ZjZjQ5NWNhYjMwODU2NWE1ZDQ5MThiMTAwMzI0MjNjZGZhZmE5YjZi=
NDNiZGFhMTI4NTI5NzUxZjQ4ZDBjMDVlYmFmODMxZTY5OWJmMTc0OTJlZjQ4YTQ4NDEyNzUwMTg=
1NGRkY2QzMzNhNGI5YjU3OWIxOWUwNzk3OTg5MDZiYmYxZThhNDY3OTBiNzBkODkxZDUyYzg3ZD=
ZjNDhjMWM2Y2JiNDViZWMzZTZlZjZjMzMyOTQ1NzBiZTczMWViN2IwMzFiNDU0MGVjYjI1NTg3N=
mNhNGMxOTEwZmJjNmI3NTRkNmQ0ZjA0YzBjZTk3N2UwNDk0MGI5M2Q5NGYwZDhmMWMwZTJmMzg3=
OTM4MDBhZjFmMzA2OWZmOTQ4Mjk4YWZlMWNkYzJiNTY2NTMwZjQ3MTE4ZmNhYTExZjFmZTAyN2U=
2ZDAyZDBlNjdkMjg5YzBjNWViZmY0ZmQ1MmNlZTQ1NzYzZDI0YzU0ODBkYTA1Y2M1NTliNmM1ND=
FlMzU4NGQwOGJlMzc0N2QzYjg5MThlNmZmYWM1NmZmYTY4MzEwZjA2YWFhZGNmOGQ4NDNjN2NlO=
TJkOTY5YjEwMDdmMjc0YmViNTU3Nzk3Y2YyOTQyNzc4ZTc4MDNmOGUzM2NkODY3NmVkODZlMmUy=
NTFiYzAwZjQwOGU2NDg5NTJkOGE3YThhOTczODg4YTQ1YTZmOWIwOWU5MmZmN2IwOWUzZGIwYTg=
5MzRlOWIxNTA1NjM1Nzg0MmZjMTdmN2RlNjRjYTc2YzBmMGFjN2QxZTI1OTU1MDg2NmY4NDYwMW=
YxZmMzN2M0MWE5Zjk2NDYzMDM2ODgzYzM3NzEyZjE4NTgwNzFiMjUyODE3ZTNmMTI1NzU1NmFjN=
jViMWM0OTAzMTk5MTY2NDRlYThiMWJlNDEyMzk2ODNlZDA5MTFjOTdhNTA0YWZmZjdmNjdjNzMx=
MGIxNTY4NDRkMGNkMWJhYjUxNzI5YTc0MjczZmI2MjIyNmY1MzcyMWEwNGNkNGNlNjAyOWRlMTZ=
iMmY1NzExMjliYTVhZmE1MTBhMjg2NjA3ZWI1NjgzMWQzZWRiMGI2YzVkNTdmZjMyOWFiZTI1Yz=
RiZDkyZjYyZGY4NDdjNzA3OTQ0Y2VmMTdjNDZiMmFiMWJiY2RmZGQwNzA2ZDc1YTdkYTliYzZkM=
DhhMTFhYjdmNTAzNDE2MzY1MjRjYzI4MjM2ZjllYzkwMjY1ZjE0ZTM5YWQxMmI4YzBmNjY1OWY3=
NTBiZWJlNjhiMDlkYjg4ZGZlNWQ1NmFiZWQ5MjRiNjQyYzlkZjI2ODk0N2EyMDY1NmIzY2RiY2R=
iOTkxZjJiOWEyNjhjNWNkZDM1ODYwYTUzMmZmOTUzMWJlNTliNzFiYmZlZDU4ZDQ2MGQ0MWIyZj=
FjMjJhYWE5NzUwYTQxNmFlYTI0MTU2ZTE0ZTEzZDcyZGIwNzFlMmU5MzhjNWIwMzU0NDZhZTg5N=
DlmOTY2OWExMzUxNDkzMDg5NzE1ODJkYmJiODA4OTMyNzVkODJkN2FhYzdmMDA3ZjNlZjgwZDA2=
Y2Y2Y2QxMTQwNDJmZDRkOGY5MjdjYzU5OWVjNDI4N2MzNWE5ZTE2MTUzZDExMmNhMzdkMjg4YTM=
2MjllZDk0ZWM1YTNmODJiNjZhZjgxMmViZjA1OGM3OWYyMDQzNDI5YTEwNWEyZWFmMWZkMDFkYm=
Q2N2E2MTg5NDIwYzBjOTEzODllODlhYTc0YjRkMWUwODJhYjdlNjY0N2IwMDU4MjliMjk3YWFkN=
2VhYmFjNDkwNDQ4MmE0N2Q0NWM2NjA1MTNiNmVlYjhlNzgzYjMxMTlkMjJkZWQzNDQ4Mg=3D=3D=
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
          <a href=3D"localhost:1333?u=3DOWI2ZTQ5ODkzNDBmNWNjY2U2OWQ1MWY1M2I=
5MDhlMWY3MTBmMWQzOGUzYmM5ODg0M2U3YmJkOTk2YTk4ODFhZjhkMTBkMzgxZTBmM2U0NjZhND=
I5ZjFlZjU3NTY3Y2E3MDllZTRhZTBkYjk2Njc0Zjg5MzBkYTY4ODg0NWRhOTI2YmEzZmE0OTc5N=
TI0MTg1NWM3OTY4NzAyODY4NDJjNjhhMTcxYzU5ZTc5ODNhMGQxMGVhNmZjOWEzNWVlY2ZkODIy=
YmE2OTU2ZmE4YmY0YjFmN2EwNDQxYThiOWY5YjU0ODZlOWEyZmY1MTU1YTYwMjc4ZDZhMmIwMjd=
hMjYzMjZjZmFmYzNkMmJhZjcyZDhiMjVjYmJmNmQzNDc4OGFhMWMyOTI2ZDQxNzI5NzI3NzlhNj=
liNmM3Y2E0MjE1YTI4YWUxZTc0Nzc2MTEwNzcxNWM3NTgxY2NmNmRmNzE3MmE2YjE4YThlYjkyM=
mJhMDczYzJkZTkxYjYzMDZhZjEyMWU5ZTdjZjA2M2Q2YTI0MzFjMmJlYmQ3ZDdmNWE4ZGUwZjRh=
YTlkNDdmNGMyMDBmOTg3MTA2YjY5ODgzMTBhMThkZDgwOTgxOTJkOWNhN2FkOGRlODVlN2UyZTI=
4MjFkY2E5NjdhYTI0ZWU4YzdlYTI3OGVhNmEzZGQzNjFlMzkxMWRlNWNkNWE4MTBjMTRmNTgzOT=
gyZTk2ZTg0OTU4YzgwOWY1NDE2NDg0ZTY3ZTA5YzBhMDdkMzc5MmQ4YzkwMWZjNDYzNDUxZDdiM=
GQzN2JmYWE1ZDJjMzJiMjgxZGQ3MzhiNDc1NjQzMTc5YTZlYWQ2NzQzZjA5OTU3YzQ3NTgxNjEy=
NThlNzljZDE0NjQzYTUxZTEyZjM3YTQ4MTgwYjAzNTBhZjlmOWVmZDhkMDQ4MzFjM2Q4NDA0NzA=
zMDY2NmIwYWZkMjkzYjZkOTA1MTFiYTgxMmQxYmYyNTRkN2E4MGU1YmQ5N2NkNTcxYTE1NmI1OT=
MwZjcwZWZhMmViNjFmMGRjMWVlZjRkN2Y4ZDAwNTc2ZDcyNzEwNWExYzMyZmM1Mjk2NzI3N2UwN=
jIyM2Y1MGYwNWQxNDAxMjY5M2U0ODk3OGUxNTE2MDdiYWJmMWU4NGYwNThlOTNkYWVkYjRhZTJi=
Mjc3Mzc3MzY2NGNlODJjMGQ5ZDEyZjViY2Q2NjU0NzA4MDljMjdjZDlmMjlmYjZjZDk1MDdlZDh=
kZTY0OGNhY2FlZjBiYzg5ZDE5NGI1NDU5ZDYzODc1YjM3NTg2OTg3ZmIxMmMxZTIwZTZmMjFiN2=
YzN2MyZmEyZjQwZTZmNzZiZTVmZmYzNzJhMTI2MjRhMzc0MGE1NGQzYWQ3OTE4NWMzZDMyMDNjM=
WFjYzM1ZGY5NTYwZjc2NGVlZjUzYTUyODBiY2QzNmNhNGFmM2I4YWUyYWE5MjE5MjJhYTYxZTkw=
NDFiOWIyZDU1NjdmMDZlMmU1YWVmYjFhNDI5MGRlYmRhMmFkZDQ3ZDY5Y2ZlMTc0ZWQyMTVhNTR=
jNmMxYjQwZGU3OGYyZDA5YWE1OGVjZTJjMGI5Mjg1NWUzYmUyMTI4MGZlOWYxOWVlOGUxZDZjZT=
JhY2ZjNzc2MGFjOTY0YmI5MzFkZTY2ZWNkODIxYjNjMDI2YWJhZTk1NzhhNmMyNjQzZjhhODFlN=
zdhZTMwMWVjNTIzOTVkYzVlNDNiZjYwYmVlM2IwZmM0ZjY2MjI5NTYyZTE4ZTBhNmZlZTk2Zjhi=
NDBmZmNmNTFlNjM0NWFlMjc5YzljYWQxODIwYzQwZWE5YTA2ZjRiZmM5ODNkY2NlZDdiY2U3ZGE=
1YTI4MWMyNGFkYWMyNTFkMzQ1MGU1ZmE1ZGM0NTAyZDZmNjIwMTNjNGM3Mjg2NmEwNmRkMzVmMz=
lkZDY5ZGI1ZmQ5ZjFlNDNlNWU4OGIwY2MwNzU3MGU4N2Y2NGFhZDA3NDgzODIyYjJmNTdkYzZiM=
2MwMWZjNGU3NTRlY2JlYTgxMTAxMDFjNWQ3MDQ3ZWFiNjU1M2FlMmIwNjgwMWM4NmUyN2UyNzI3=
ZDQzNjA4Zjk0YzExNWRjZmEzNzU2YzJlZjQ5ZmVmNDhkYWNkODJiZTY3MTAyZTg1NmNhNGVjYmY=
yNGYwYWUwMWQ4MGQ4MjMwZGVmMDcwMTczZTdlZGJiZGMwYjc5ZDJlMDJkYTAxNDNmYjQ1YmE1Nm=
I2MThmNTg0MmM2MmNlZTY0YjI0ZDM1MzAyNDMzMTQwZGE3ZjAzNTNjYmM3NmViNjI5ODYxMjdkZ=
jJkOTZkMDFkMzk3NGE5YzgzMzRlMTI1ZWYwYjZhY2RiOTMwNjc3NDFlNDNiNzBjZWFmODg4OTA5=
NWU2YzFmODc0OTJiMGVhNzEwNTBkNGYzMDA0NzM4YTBmZDQ5NTRmMjUzZmJhNTMxNmM3MjY0MWM=
yYjdmYmQzMTVmZTJjNDhhNzViZTg3NjMwYzEwNzhkNTI0MDZlYTUxNGRmNDA5NzczOTM4NDE0OG=
IxNDU5OGFmNjE2ZjhjYmIwYTgzZDMyZTUyZTlhZDExMDA1NWY4Yzk=3D" style=3D"color:#e=
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
                      <a href=3D"localhost:1333?u=3DYTdjNTMxMjE0OGVmOGZiOGY=
zOWQzMDBiMzNiNDEwOWUzNzJjMmIxZDllNzRjY2Y2M2JiMDIxY2MxOWM4NDg2YzQ4YWJkODk0MD=
VhODU5NDBjNDFhY2NiYTUwNWIzYzBlNmVkZTZjYTg2ZDgzZTVjYjhlYmI1N2JlNDk5NDdkNWI5N=
WRiMjFiMTA5NWY1MWUxMWViMjlmMzIwOTBkN2RlNDk5ODc0YjJjZjI2NjczYzgxNTZmMjIxMGY4=
Njg2ODYyMmFlOWVlODEwMzdmNTZkZjE1YjljNzFmZGQ2ZjlmNmNkY2M5NTYzNWQ5NDUwY2RkZTA=
3ZTk0MTFlODM5NzI1ODg5MmEwYjM0NGIzZjI5NmVlMjYwMGNhNmVlY2QwNTY3M2NmNjQ1YWQyYz=
NiNDhmMjRmNmViOGZhYWJkNzZhMjMwMmE1NzAwNzkwMjBkMDVjNTk1MDMwMDg1Yzk1N2RjZGM5Z=
TNmMDYwMTFiZDNkMGE5NWZiZmE0NDIyNTA4MmEzMjY3NWE0ZTdjZTFjMDU2MTY2OTc4OTE0MTlh=
NGU2YTFjMjJhZTQwNTY3M2M3MjJiMTcwNzRiYWNjMjkzMzgxOGVlMTk3MzM1M2NjYjBiY2Y1Y2N=
mMzI3NmNmZmZlY2EwNmQyYzFkZWJhNjI5OGM2ZDY1ZDYyNDA0ZmQzMTRiYjI0Mjg2OWZjY2ZjMG=
I3ODVjMWJmMjMwODNiOGI5ZDFkZjYwY2VlOWFiOWE3OGM4ZTU4YTkyODE0MDVlNTQzNTE5ZmY2N=
DE2YWM3YjljZGEyZmU5ZmIzMGJhYTliNTNjNmQyNTAwYmRkMjY3MDgwMzYxMzY3YzgwY2NhZmRi=
NWY5NzgyMGQ5ZDQzN2ExZjVjYTQ3MTQ3OWRlOGZiZTY0Nzc0OTMwMGVlMGIyNjIwMGQyYjUzMWM=
xMjRkNzY4ZjNhNGZiY2NhYjExZDFkOGRkYjI4ZmYyMGIyMzE5ZDg5OTY4MDJhYzZjZWY1ZGY4OT=
kxMjc5NzMzOTUxOTZiMmZiM2YzOGM0ZTUzMDM0YjhkMjk0ZjM1YjA3OTQ0YTI2NWEyZmYxNTc4N=
jgxNGUxODM2YzhlOTAzZTM2MWU2NzBmYzRjNTViNmEyZGFhYmVjZTU1ZTNmODkwODE2OWYwODNk=
YjNkYzk5OGZlMmEzMTdhOTRlMTkxMzYxMjE5OTFjYjQ5Y2Q4ZjMxMjg0NTdkZDUyMGNjODUxZmY=
4MTAxYTQxNTFjNTUxODQ0OGYzZTM0MGFlOWI2NmMxYmExY2Q2OGNjNTRmN2NhOWU4MTA2MjU1Nz=
BkYjZiYWYxZmExOTRhNjQ0NWFjZmQ3MzAzZTQxNDU4MDIxOTlmMDk0MjVlMTc2YmI5OGZlY2RkM=
DQ5ZTdlNTBhNmE4ZDBjNzJkY2M0M2ZlZmFlNjNkZWJiNTFhNmUzZTkyOWJhMzM1MTlmYzY2NTI1=
MTNhNWZlMmYwNmMyOTViYzAwYzQyZDNlMzE5NzJjZjVlYzlkNjg5NmZlNTE1MGFmNjBjZTk0NWU=
zNzlmYmJkZDc1MWEyMzI5MmRiN2Q5YjNmNDA2NGYzMTczMzUxZjI1ZjEzNjc4YzMwMzAyN2ZlOT=
cwNzk1MzczYTNiYjgzYjc0ZGVmMTRiMDU3MzEwYmM1ZDgyZjIyYTM4YjcxY2M1NDFhYzAwZTBkM=
jA0M2NjODA2ZDhjZDMxN2EwMDJhZmE0MzE3MzM0YTAzYTRkMjUwYTE1ODYwOWEwYjE3MWUxZDFl=
Nzc5NDk0NjVjZjFmZTUxNTYwNDA4YTMxMjAyZWFlNzdlNzZlZDI4MTM4ZDQzY2NjMzJjNjE5YzJ=
lNzhlOGMyN2ZhYTg4Njc5NzgzYzdhZjE5Y2VhMTgwNDU2NTBhOGRiOWRhOGIzODFkN2FiNGFkMW=
ZjMmZiNzhlZGM3NTM2YjUyNTJjOWFhMDQxZWQ3NzU2YWZkMGRiOWNhNjgzY2Q2OWRkODc2Yjc1N=
WZiOTI4NjMyN2ZhZDA4NzI4YzViNjM1ODMxOGNkNmJjZTRhMDE3NzZiZjNjNGM0ZGU3MDQ4ZGI2=
NTc4YWE4ZDJlMTZmMDdlNDkwMGZmZTNkZTBiYWRiZWNmNWZmZmE0YzAxNmQ5NzEzODFhYzlhYmE=
2OTQxMDdlNWZlYzZlMGQ4MTU2MjdiMGQ4OTMwYjA3ZmJiYTgzYzU4MjhmNGM3MTZkYWE5ZDQ0MW=
NhNmUzY2I3ODVmMTNkMzk1ZDA4Y2Q4MWM1OTY3OTdmYmM3NDNlNDE1OGU0YWI2Y2NjYjQxNzFjY=
jAzYzE2Njg3MGY4NWE0NGRlNTAyZTljYTYyMGIxNDU1NmIxMzZhMTM0ZmE5MzYyNTFmOTA1NjUx=
YTI4NTFlYjY3NDcxMGI2MjM1NWNkMDJmNjVlZjc1ODdkYzk1OGNmNjAwNDc0YTI4NGE4ZmU2NzE=
xNjMzZTM1NmQyNTc2MTk1YTY0MzYyZTI4ZTk4NmI2MjRjMTQ5YzYzZTA1NDIwY2VkNTkwMjE1YW=
RhYTk2YTg2OTEzMDY5ZTAzYjM4ZTNmM2JjMDZmZWU2OTRkNTkwMWY4ZjM1NTQ4YjY3ODliYmEyY=
jBiZjAzNmVkOGMxNTg5ZTIxNTc3ZTNkZjQwYTJiOWI1ZjY2NzQwYjRkY2UxZTIyZWNhMDU0NTk0=
NjhlYjM4NjQ1NDRiZjM0N2ZlMjdhM2QwNTI2NWE2MzlkZGIyYjRlYThkYTdmMjQ0YzE0MzIxMTN=
jNTc5MmE5NzNhYmY3YzJk" target=3D"_blank">
                        <img src=3D"https://appboy-images.com/appboy/commun=
ication/assets/image_assets/images/6131205644145f38056fdd69/original.png?16=
30609494" alt=3D"Add to calendar"/>
                      </a>
                    </td>
                    <td>
                      <p style=3D"color:#57646c;font-size:14px;margin:0;fon=
t-family:arial,sans-serif">
                        <a style=3D"color:#57646c;text-decoration:none" hre=
f=3D"localhost:1333?u=3DZWFjZDIxOTc0N2ZlNDU2NWY0N2RjNzdmZjhhYTA5YTUzYjNjMDl=
jZjc2YzA5OWYxNzEzZGZmMjRhYzA4YjQ1OGE5OWE5ODVkM2Y3M2Y5NzIyZDhmNzYxZWNhNGQ5OG=
IxNjVmOGU5NDczMzQ2MDY2NTU0MmQ0NmNkMTYzNjBiMTExYTYzYjkwM2EyMzg0Zjk0NzdlZmRhN=
mQwMGEwNzljOWZiMTUxNzFmZDA1NzI0ZWIzMTQ4MDI3ZGNkMWFkYjFmZjE0MTYyYWMwOGQ1ZDJk=
ZTFhODUxNWU1MzBmYzM0NmU5Yzg1YzcwZWY1MGEwNzA0YmZiNDZhNjU3ODZiMDk2ODdhMjNmMjh=
kZTZlZTM4ODYwNWViYWU4NDcwOWNhOTUxY2Y0Mzk1ODBmNmI4ZGNiZmM1ZmNmN2ExMGU4OGFlZW=
M0NWY4ZGRmODJjNDg1YTA1MzJlNjVjNmQwNmM5NzMyZjgwNjViNTMwNWYxNDYxNWFmMWMwYTU1N=
mNhNWYyODRiYTVhNDgyNDBhODBiYmRmZmY5NzliZWQ2ZTEyOTQzY2UwNzkyMjU2NWM3OTA0Y2Mx=
Yzc3ODczMTdkYTI0NzUzODQzYWVhNmMxNjg2ZGIwZWQ4N2Q4ZWU0ODVhODJmMTRmYjVhMDEzZWJ=
mNThlOTg0NDMzNTZjMjAyMGM1N2VmMmE0ZDIxZWE5YzdjYjhjOGRmMTlmMGQyMjg5YzMxZDhiYT=
E0YWYxNjdiY2U3ZTg1MWY1NjAyNzc3OWQ0ZTMyODNlNThjNjIyMTdiNDM2ODI0NjQ0YTYxMjA2N=
WE5N2MzOWJiMTBkNzk5MWZlYTYwYmRjYjZiM2NjNzJjN2IzZTJjNDRlMTQyOTMxMzgxN2Q0MmZi=
M2E5Mjk2OTlmYmIzYTcxMWMzZTJlYTRjYzM3YjIyYjQ1ZDAzZDRjYzM2NDI5MWU0OTdkYzY4YmN=
iOGE5MDJhOTlkZTMyMDQ3ZWMyYjU0YTBiMjU2YTM5NjI4OWQ2NjNjZWM3N2FiOGU5ZGZiMWU1Mm=
JmZWMxZWJkMTI2NWM0ODkyMzQxOTc3ZjQzOGUyNzZjYTcxZTI3MTMyZmQyMDYzMGQwZjVlZjIwN=
jI2ZjVlNDY5NmJjZTVjZGZiZTBmNTQ4MmNiYmM1YjYzZmI5OWMzNzNmYjczZWYwZGEwOTllYzI4=
NzQwMzhmNmQ4ZjUyZTlmYTBmMmE0NDhmNTIxMGE4NDA2ZmRlYzgxYTEzN2E0NzFkOGViOWZkNGM=
4ZmU3N2QzMjUwZmNkNWM1NzRkZGZkN2M1ZmVlMzA2ZmEyNDY3MzdmNGE1OWEwZDdiNDQ0NDFhND=
RmZTQ3ZGI0YzkxYzA2NjlkMGZmOTBhMDQyYTFhNDg5MmFlZmRiOGY1MjRlNWNhOGYxMmY3NzM3O=
GJiZjE0NTI2YTkwZTViYzFlNjk3NGM4YjhhOTliYTEzYjhhOGI2NzljNjk4ZGNhMWRjZTM0OTBl=
N2Q0YjU1YjY3NzQ3MDJhMGRlM2U2Zjc4YmRhMjdiMjA2MzNmMTBiNWU2NWE5NWE5Nzc5OTgyNjh=
mM2RhMGZlMDdiZDA3M2ZlOTU1YWFkNzJhZGFiODIyNmQ5Zjk5ZmFiMjhlYzViYjNlNmIxMTA4NG=
ViYzRhMDU0YjUzOTFhY2RkOGY4YTE3Njc4MjllNWNlZmZhOGUwYmVmNDc1Yjc3YTZjNmJmZjk2N=
zA3MWZhZWY1ZjIwOWExM2Y1ZTE3YTk0N2IzMmMzMWJiZDBjYmM2NTQ5NmJmMDUwM2QxNGY0N2Nm=
NDViNzY3YWFmYjFhMzg3MjVhYjBhZmE2YWVmMTAzY2FmY2UyOGI2NDg2MzZmNzc2NjdmNDM4YjA=
1MGQ5ZDQ1YTljZjMwNGJjNjlkMWYyNjNjMDY5ZTI4NWUzZjFlNThkYTdmZjA0NmQzY2E4MWFlZW=
YwN2NkZDk3OTgyZjY2ZTE1MGJmMzE5YmY4ZDUyNDIwYmRmMmUyMjI3OGQ3MTYxNWExYzVkMzcyM=
DI5NGU5Zjk2YmM2YmNlNzE3ZWUzYWFlODM0ZmI4MWYxNDUzOTgzMTA3YjVlZjNmN2UxMDNiOTUy=
YzIxN2M5NjQ0NTcyZDg2ZjgxZWQxNjU2YTEzNjdhZDBjMjIwN2VjM2RkYzA4NDFiOTI1M2U4MzQ=
5YTU4OWQ1YTEyNDBlOWU3NDBiNjA5M2RlNWY0M2ZmODFlYjc0NzRiYmY0MmQxM2Y2MGQ3NGZkYT=
llZDczZmVmZjY3MTg4ODg1NzdjN2MyODBmYzdiZDJlYmI3NjE3ZDZlYmRjNjI4MWQxMDI1YzkxY=
jhlNjE4ZGUxYTJkZmQ3NWEzYTQyMGVmMzhkYTYzYzViNzkwNTgyMDQ3MGRkMDJmZjNlM2U3Yjdl=
YzY5NWQ2YWExZGM2OTMzY2Y3NWI3MmUyZTdlOWU1MzllYzk0ZGI5Y2Q4YTU5YzE4YjIyZjFkYjV=
jZDY2NzFjZjE4MzFlNWM2MDI2ZDRlYzQzM2YzMzA4YmUyZTAxNzQ5OTU0NmMyNmU3Nzk2ODU1ZW=
IzYmZkMzBlYjY1NTIzZDVlOWU1NGQ2ZGM1ZWYwMDAwYzYzYTVhYmM4YzkxZmNhMGVhMTFhMWViM=
TFkODg4MzM3ZTQ2ZWY4YjA3NWY2MTFlMWFkZjYwNGRjNTk0MzU2M2QxZWYzODE0MjgzY2VjYTA2=
Zjg0YzVhMjY5MWEyMjk2MDdlNjU5Mzg4NzRjNzUzN2E3YmY3ZWU5ZWIxMmY5MWQ0NTc5ODIyNw=
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
                        <div><a href=3D"localhost:1333?u=3DZjM3ZWI0YmFiNDUw=
YjJjYzc1OGY2ZjdkN2E3ZmE1ZTdhOWRhMzQxYThmYWU5NjI1Y2E2ODY3N2JiNTg3Njg0NmNiNTU=
zNzc4NDA4YzZiMTZlNWU0M2U2NTRhNDMzODJkNDNiM2U2MWZmNzIwMDllNzMyMzk1YWZhOTE1N2=
VmYjRjNTMyNTZiMGU4NWVhZmQxZGE3MGM4NmQxMzkxMWJlNTFkZDg2Yzg1MDg0MTA3ODg1Yjc1O=
DBhOGQ2N2ViNTJkZThmNGU4ZDg5NzU2Y2UzMGM1ZjhmMjI4ZDM3NGQ3MDg2MDAzNzIyMDNiMWMx=
YzAyYjdmNDZlMDA4MGM5MGNjYzIzZGJmMTI1OWJlYTBkMGQ2MGRkMTk3NDJhY2YyOWI3OTU4ZTQ=
4OTU2NTJkMzIyNjZlOTIzMzBhMWY0NzQzMjNiNTA3NmRkZDZlM2Q5YmI5YTNlYzRhYzhmODY3Yz=
YyZjBlNGM5ODAzNjY0NmMwMjlmYzZkZjNlOTAzZDUwNzFmNmE3NTRkMDMxMDdhMjIyNDg2NTI5Y=
TQ3OTAxYmY1NzEzMjhlNWViZDBjYmY0ZGFlNTZmZmVlOGIwOTk5MzliNzI0MjM5Y2QyZGU1MmUy=
MDU3ZmI1MmY1MTUxYTJhNTdmZjBiOWRkZjIwMWZkNDExYmI5OTg2ZmExNzkwMjRlYzRmZjdlZjc=
0OWYwY2M1MTFjMzM4Njc0MzcwZmJmNzUyNjFkZDNhMjY0OThjZDAxNWI4OWRkMjMyY2IzNDc1ZT=
k4NGNlNGFlNzdhYjZmMmI4NDcxODViODE0MzUyYTkyMjkwOWFhOWIzM2Q0NWE4ZGE2YmJhOTQ0Y=
zkwM2YwM2NkNDNiODE0MTgzODQ2YTVmNTMwYjFjZWY4MWRlZjkwNWMyYzcxMzVjM2ZkZjFiY2Vm=
OTkyZjliMDljZmY5YTY0MjEyN2NkNTE2OWMwZjVmNzU0MjdlZWMwZTkwYTU3OWQ4YjVhMDE1YTE=
0M2Y1Nzg0Y2U3YTFmZGFiZTVkMTczMTY0YTg1ODkyNzgyZDc0YzFjZDJjNTRjMTNhYmU5MGQxNj=
AxOGYyOWFkMmFlNjMwYzljNWE1ZDE2MjU1NzRjNmI2MzhlYTk3YjMyOGM0NjY3MDdmOTFkNWUzM=
GFhNGQ2ZjZiOGM3OWZjZTcwNmMwNGE0N2NiMzk1MDM4ZWY3ZGIzODQyODkzZjY4YmQ2MjQ4YmM5=
ZTViYjk0ZGU3YzRjODY2NTVhZDEzZTlhYzJkN2RjZjNkMzMwNzkwZWJhOWQ4ZjhkMWE0YmU3ZGY=
xOWU3NGRkN2M0NjI0MjYzYjJjODRkOTk2ZGVmMDcyZWY0Yzc3YjJjMjA2MmM1YjljNjljMjZiOG=
E0MDI2ODg4NDI1Yzg1ZDA1YmQyOTY3YmFkZmFjNTVjMjM1ZTQ2OTAxOTFiZmY5YzA2ZmE3YWQ4Y=
zc3ZThlNjRhNjY3YTgyNGVkZDRkNmFiNzhjYjE3MjU5YWJiNTk0Nzc0YmQ2Y2EwODM1NzQwNzA3=
NWI5YjZjMDk5YWIzNGFkOGNjMmRmMTFiZjNiMjEwNjVmNDJkNzZhYzg1YjE5MWZkMGFkMTRhNDd=
kMDE0NmI4ZjZlZTBkZjJiMjM5NDQzOTg3ZDEzNWM3MTYxMWU0MTgzNzYzMzI0ZGUyNTFmZWU2Ym=
M4ODQzMGMxZTBmNGQxYmY0NTQ5NjZkNGRiOGE0NDNmMjAyODhlZTc2ZmYzOWMxODhjZmQxZWEyY=
2ZjNjM1NTM5ZDgzZWE4N2NmNGNmZjdhYzAyMTNhYmZkZDE4NWI2MGNiZDg0MGM3NDBhMGI5NWI1=
NWUzYzlmMzY3YjgzMWM2NjU1ZWQyMWExMzQ2YmVlNDU2ZDcyYWNjNmQ3NDQwOGYxOTg4OWVhNjB=
jNmE4OWYxNjkwZTVmZWNlNjZmOWZhODAyNzEyZmM4M2QwZDJiN2UwYWY5YjkxMzcwYmU0MDljMD=
hjZjdjMTYxNDYzMDM5MTMxMWFmNjVlMzlmZGU1MmIxZTY4ZTY3NGU0MzQ3ZWQ0MjJjMmNmNDY3O=
DY2MzI3NWE5ZWUwZWYxZjcyNzM2MDM3YjNlMDhmYTJiMzcxZjBhZDlkODU1YTdhODYzNGM0ZDNl=
ZjgzZWRkYmU5MTA3OTJkOWI1MWE4OGEwNTg2ZWRlNmNlYTBjN2IyNjI1NDY2ZjIyNzg1MTcyZDN=
kMjNkODY1ZWM2YjM1MmUzODA1ODkyNzFkMjIyMDZmMzEwZmM0NWQ4NjJmYjM1MTBjYTYzMmNkNz=
M0MzdmMDgxZWMzYTkyMGFkYThiYzdiNGQzNWY0NGJhODIyODhlNjZlMzg4YWM5MmMwZmFiMWI0Y=
zAzMTk2YWEwYThjNzcyZmM2MDgzYzU5N2NhZTI3MjU4ZGNlN2E5YzhiMzA3NDEwMDZkMTZjYjdl=
N2Q0YmJjYjljOTNjYzcwMmNjNWIxNGY1YWU4OGU4NTE3ZGJmYzMwMTg0ZGU2ZmIxODk1NzEyNmN=
kODdjODdmMGZmNzQwMGFhMDVlMzUxMTE1NDEwZTNhOTc4YjliMzg4ZTljY2E4ZDhjMGM5NWZkOD=
NkZDJiNzA3YzE3ZGE3ZjVlNmFhZTQzMDczNjEzYmU2MTBkNWE2ZDhkZjZlMzBhYzU1MWEzODJjZ=
DczMDU0ODNjMjc2NTU2Mjg0YzE1ZTE0ZWM1MDRhNTliZmM4OTMzYzk4MjZjNWY5Yzk4NmI0NWE3=
MjgzMzU5NDQ5OTJjNmE5OWJmZjU1YTZjMTMyODgwZTIxYzA5ODI2ODg5NWMzYTljYzA0NGY5NGN=
mYjkzMjUzNWViZTIwMTk1NWY2NWRlZTBmNmU2MWU3MDg2NzcxMmYyZTI1OTkyMzYwODU2YzUwYz=
EwOTUyODdmNmY5YTIzMTkyZGE0MTk2MGQ=3D" target=3D"_blank"><strong>RSVP today<=
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
                              <a href=3D"localhost:1333?u=3DNzcyOWMwOTMxMmI=
4YWIyYmEwNDdkNWQ1YzA0NTFhY2M0ZThiMzZiYzQ0ODdiZWI1ODIwZDZlMjY1M2ViODAzYzQ1MD=
hjOGE3OTQ0YmIyZDgwY2ZhMzk3MjU3MWEwMDU4YmE4NTVkODRkMGEzZGY2N2NkOWI1ZTk1NzhlM=
GZiZGJkMmRkNTgwZTg0OWE0YWRkOTg4ZTJiZmI4YWFmYTUxOTNhMjNiY2E0ZDMwNjY5Njk4NTJl=
NDVlOTA4NDI5NDNkMDRhYjAwMTY2OWIzZTMzYzNmODM2NjZlZjAxNzM0NGQ1ODE1ZDU1NjQ0Yzd=
kNTQxNDc0NzI4MThlM2QwMmRkMGFjYzM0ZTAzODcwMzcxNWRkNDY0YTgzZTg1YWNmOWUyZjEyOT=
c5YzJmOWY3NmEwYmJhYTg4OWMzOGFjNmJhZmMxNTk2Yzc0MmFlMThhMGYzMDgxODdkODkxODlmZ=
WI5NjNlMjM5NGMxMjgxZWEyYTA5ZTJiNzViZGZlMjQ0MTIyZmQ5OWUxYzNjMmRiNzBmNDQyM2Rk=
MWZiMjkwMDljYjFiZjViNTZjZTNiZDUwNzY0NTVhY2E0MTY1NmZiOTBkZGU3YzdlMThhNjExZGU=
0ZTdhNjhhZjZjY2EwMDM3MzE4MjQ2N2MwODI0NGYwMGVkM2NkYmRmYjQ4MzRjODliM2MxMjg2OW=
RjNmYyNTE1YjZlNzQ5NTJiMjljYmI2MTRjZjNkNGY1NDNiOGNjN2NkYmFiMzVkNzQ2OWI0OGU1N=
jgxOWI1YjlhM2YxZDcwZGVhMzE0MDY5OGY2MmRjM2I0OTZkZGRhY2Y3YTM1ODRlYjY2M2Y5YjA3=
NmJhNTM3M2FmODNmYTIxN2NlZjliM2I3YWJhMDViMzIwMmU3Y2MzNjMxOTc5ZWI3Yzk5OTU4MzE=
4NzFkZWMwZTFiYzVhNmU3M2E0YmI3OTM2OTg1ODQxZTAxOGRjNjViYTM5MjRiYmEzZjc0NmIzZj=
cxYmMzYmE2ZjIwNjA0MWVhMWMzYjYyMWEwODlmMDE0ZWFhOTUxNmE3NmY1N2U1MWQzN2EzYjhhY=
mIzYjM5YzU4ZGRhZmM0YmQ1MWVhNjNhODJhNGVmZWNlOTJiODFiY2QwYTZiOTYzMTFiYWY2ZGYy=
NDFkYWVhZTA3N2I5NmM5YTUzYmFlNGYyMTg0MTA0ODkxYWI2ZTJlYTM3OTJmNzk5ZjcxZjFhYjV=
lNzkxZTNjZmZjZGVlYWUzNmY2MDQyYTc0NjRmOTlhNTU3NThjMDFhMzYzZWFjNWY0Y2FkNzgyYz=
VhMGE0NjI1NTY0NGJjZDM2ZTgxZmU2MDk5OGE1MmZmYTliN2U0MzFkYjBkNTg2OTU5YzYyNmY2O=
DVkZjhmOGRlMmMwYzMwZGM2N2JjMmUxOGI0Mjc2MzlhMDY4MzNlZTg3MWVhMGQyODAyZTk2ZmU4=
ZWU0Yzg3M2NlNDliNWIxNGJmOGZhNjNmNTQzZGM5YjZiMjRlNTkxNjY4ZTJmZjRlYTE3NTc2ZjY=
zZmZkMThhMWJiZGVlNTU0ODM3NGE4Y2UzNzM1Mzc3NTczN2FmYTIxYTI0NmNjNmY0NTM3OTUyMz=
c0YzdlYTBiMGQzYjdhNjA2NTQ4ODgwZjU4NjJmZjdmOTIxZGM2OTkyMGUxYTg4ZGIzODJhMTg2Z=
WQ5MzdlZGJkZWRkMGJlZTgxZmVkNTEwMTA0NjYwOTMzYTU0NjU1MWU4MjFmZjk1NjhlOTNmMjRi=
ZTJhODA4YjZiZjQ3OWEyMWQwNDBiZjNkMzgyYjNiZmY0MmJkYmUyMzA2ZGU0MDA1ZTJiZTc2Yzc=
yMzIxOGI0NzA4NmZkZTBjM2U4ZmQzNzA2OTU5MWRkODBiYzQ5NGMxODdjNDMwYmY4MmExY2E0MT=
RjMGYxMDE5OWM3ODQyYmFmY2YzNDQ5YmFkMDBhOTg4ZmI4YzUyOTQ0N2UzM2U1NGFjMDJiNmU2N=
WM2ZjUzMTIyMzA0MjE5ODMzNTYwYmE2OWVjOWI5MTRjZjk0ZGM1YWY5MTAyOTYyODY5Y2JlMmFi=
MWFkYTVhNGU4N2M4NWY4MWE2MzgzZWY0YjIyNzE2N2U4YzVlODY1YTE4MzkwNjBlMWU4ZmY3ZGR=
jNDBlY2RlYWUzYTExMmE0NGMwZDdhMWQ5MmI4NDgxZTBjZWY2ZjRkMzEwOTFmMTI0YmQ5ODg4NT=
RkMzY5N2Y0OGU0MGZkYWU2MmUwYTg2ZWJmNDAwZTllMmZlNzcxNDRlNWE2YTAxYmUzYWUyYjMxM=
jVkYzY1YmU3OGIyNDY2MWU3Nzg3OWFiNmEwYWRlOTExNGJhNzkwMDNhN2ZlOWE0MmEwOGY2MDkw=
ZWRiYjU4YmViYzA3YjZmYjg3OGU5NjQ2NDA0Nzg5NWJjYmJlZTEyN2EwYzgzMTcyY2RhM2QzMzd=
lNTgxOGQ2ZjY0MmU1MWQ3NmRlZjQ0ZTMyNmMwMTgyNjhiMGM1NDk1ZGVmNTQ4MDlkYmIzYmFlMz=
Q2MTc3MmJhNDliNjFhOTA1OTE2YWVkNGFkZjk0Y2JkNDFiMGIzMg=3D=3D" target=3D"_blan=
k"><img src=3D"https://secure.meetupstatic.com/photos/member/5/c/3/6/thumb_=
309683606.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=3D"width:50=
px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DYWVlNGVhMzgzZDA=
xYzU1ZmQ3M2RhZjhjY2EzOWEzZWY4Yzk2MTZhNzhkZTkxM2RhYTYwODZjNjJkNjM3MDdjNDhkNW=
ExOGM3OGExNDdmMmNkOTRiZTcyMmIwYTcyMTJiNmQ1ODJmZDllMTg0OGZiZTVjYWU4MjA2MzRiY=
2FlMjNjMmQyY2FlNmJjYzQzZjAxOWY2YWU3NTcxNzZmYTczNjdjOTk3OGEzZTg0ZjlhNDQ5Y2Vh=
YjBlYWRjZGI2NWJjNGIzMDdhZDk0ODU5MzE3Njg3ZDBjNTdiMzk4NzkwNzJjZTY3YTIwMDU2YWJ=
hZjE4ZGRlYTJmNTVkY2I4YWEwNzBlMDc0NmJkNmFlZTI3M2MyZTljZTFhZGIwY2QxMmZhOTI4OW=
VkYTYwNzk1ZWNhN2QwYjZhYmIyZjMyMDI1OTFlNjA0ZGIwNDNmMmNlZTVhYjEyNTMwODBhZWI2O=
TA5ZDI3NWZkOTA3NmJjMzc3OGQyYmZhZGNkNWVlNzQ1YjYzNDk4ZDBkOTY4MTI4N2I2ZTk3MDJk=
NTI5OTU1ZTIwZGE4ZTYxN2EzMWE1NzY4NjdjOWM1OTAwNDcxZGVhMThkMjI1YzRlY2JlMjJkZWR=
hMTRhNjQzNmE1MmYxYmFlNDhjNjJhN2MwNzUyODQwMjY4NDY0M2Y2NWVkZGNiMzM3MjZlYTlkM2=
Y1Njk0YzVkYmY0NzE0MTJhMzNhMjc2NzhmYzEyZTc5MGY0YWExZjdjNTM5ZTA4YzA2Nzk0MGVjZ=
GMwNGU1MmRkMGQwMWQzOWQ1ODhlYmZiMGJlN2Q4OTdmNzk0YWRlNTEyZTE5YWVlMGU0ODA2NWIx=
ZmYyODNlYjBkOGEzMTAzZmVlMWJkNjFlZWVkZDg5ZDBjNjIwOTFmMGIzMzQ2YjM2ZjliYjU2YTk=
wN2JiYmY4Yjg3OTU0YWI0ZjljODRlNzVjYTAzNTdmY2UzYzgwMDgwMTUzNzJlMDhiM2E0YjAwYz=
AwZTkwNTdlMjZmMTljM2M2NTFhMDdkOTM5YzNmMjA1YjkxYWFhZTY1MDc0YWMyNGFkYTgzY2YzM=
jk0OWZiOTc2YTVmZWMwOGQzYWIyNzlhNWE4N2E0MDM3OGY3NzFhMGMwM2FmNzFkNDA1NTJhNDRj=
NmU0MzE4YTA3ZTMwZDgyMmZmYzJkMmE3ZjU5MmI0ZDk4ODRlZmEwZGNjNTJkYTc2NTQwNDFmYTh=
mNzg1YWExZDFiMzgzMWI4MzYwOWU0YmI5ZWJkNTEzZDM3ZWI1Nzk4MjI4MmFmNTE5ZGI5NTZiZj=
RlZjhhYmFmY2FkNzMwMWJjMjcxNjMwYWU1MjU0YmNmMDdlODg1YjE1NDYxNTBmYTMwZWI5NmU1N=
jc3OGRkZDY1YjIyZmUxMTdhMzRkYzQ5NWExOWMwZmJiNjNjMmQyZTBhMDhkZDJlNDc0NjgxZTJj=
ZmJkMmQyYzAyYzE3MmUwZDM0NGQ4NTM4NTNiM2I2MWExZWQ4NzdhODhkYjI4M2U4MjZmMTA0ZjI=
wNWUwOTgxZWMyNDIxMTg0YTUyYzUwOWFhZWY3NjU3ZWQ4Y2NkOTRiMDgyNjQxNmJkNDBjOWQ3NT=
ZhNjA3ZTE4YjMwZDc4YTA3MjU2YjBiZjY3NDA1Y2NlZDFiNmNlMGZiYTRlMmQyOGM5MjlmM2EyN=
GI2MGU3ZjQ2ZGJlYjk1YzUxOWY1MDM1MThmNmRhYThmZGZjYmIyN2FhYWJlZTljM2EwODk1NTlh=
YTM2OTYzZWI4YTc3MjJhNjVhMjdmNGE0MWZhZTlkMWFiMjU4NzFlNGEwMWE5NDkxNDJlZjRjMjY=
1Nzc0MTBmMWJkYmFhY2IwMDc1MWE2MGYwZGU0MDI1MzFiYTNmOGQ1M2ZmYTA0ZGI1MjZhODY1YT=
AwMTVjN2RlMGIxZTYzNTg4NTAyMDU2MmU1OTljN2U1NzljNTdkNjE1ZjA2ODQ3MGQwMDkzMzJlO=
WE3MWIzNDZiYzVhYjI5NTFjN2NkMThlMjZiY2Y0OTA1MWNjNDEzZDFkODI5MDgxNzNiNmU4NTIz=
OWQzN2NmYWM1NzY5YjhiOGU4OTBhODEzMTAxNzNhNGIwYTgxNzgyNzExMThiZWJjYWE5NDRhNWR=
jMTBlOTdjZjdhZjM2YTVlY2NiZDgxOTM1ODllOTA2MmY3ZWJjZTY0Y2E1NGUyNzM4OTZhYzAyOT=
cyYjk0YzliMjJiZTIxNzlhMmFiZGY3Nzg2OWE1OTYyNzBmOWRjZWVlYzUwMmE2ZTg1MDg4NjkwO=
GNjNjc4YjUzYmFiOTIwNDdmYTkwYjgxOTIwZjJkMWFkYzIwYTI4MzkxNzQwYzljN2JhZTFjMjRi=
NmI1YWJmMzA4M2FlMjQ0ZmMwNTg3N2I2Y2RkMzc0ZTY2N2Y0NTFjMmU1NDY5M2ZmZDY1ZmZlYTU=
zMjE5YzgxYjEwMDU5OGE3MDk3MWNlYjE4ODZlM2UxMzhlYTQzNGQ5Yzc4MTE5ODhlMGEzNmFlMD=
A3NTQ3ZTA2NTliM2M2OTk5ODVjNjBmNzQxOGY0OGZkOGRkZDA0M2FiNDAzNjRlYTY3OGE5MWUxM=
mViY2I2MQ=3D=3D" style=3D"color:#0066cc;text-decoration:none" target=3D"_bl=
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
                              <a href=3D"localhost:1333?u=3DNGMyZmE2Mjg2NDd=
hODY3MWY3NGNhOTZkMmI5MzIyY2UxOTcwZjI5NGY5YzExYzcxN2I1MjgyYTg1YWFjZmU0NzU4NG=
EwZjFlYWU2MGE5NDAwYjRjZTE3NmEzNzQ4ODk2NDZhMjkwNDgyM2I1ZDYwNWRiNTAxYzY0MDhjM=
TMyZGU5NjgzNzEzOTZlMTllN2MxMWRkNGU0Y2I2MTkyM2E1YWRhOGVjZTE3YzY0NzE1ZmFlNjhm=
YTU5NDM3NzExYzQ1YWUyODAzZGI1ZmM1ZjBiYjA3MTg5MDcyZjhhMDJkYTMxYzRkZjJkN2NmYTI=
yMjI0ZjZlMzhiMDVhM2EyMGMzYTgyMzdlYzM5YjcwYTJlYzUyYTEzYjdiNjQxNDc3NmNhNmY1OW=
YxNzdkYjViZjdjMDY3Yjc5NjFjMThiZDBjMDE3MDg2ZmUwMzJiNzg3M2MzZDY2YTM0ODcwOGEyY=
2VjODNhYTk0ZTdjMTVlYmE5M2Y1MWZjNDE2ODc1MWRhMmZkYTgwMDFkNTI3NDllMjg0MzFiNmFl=
YzhlYTJhZTk3NzU0N2Q2OGRmNWU0NmExZjNhMjk2YmM3YWRhZWQzM2U1ODdmZjNkYjAxNzQzNjV=
kMmYxNmNiNGY3ZTA4NTI1YjY3NDI5ODllNDE2MWY3YTVmMWQwNmUwZTUxYzViMGVhZDhjYjRlNG=
I5MGIyMTY4MzE3YmQyYzliOGVjODZmNDUxNGI4ZGMxZDExMDdkN2VjNmQ2MWYxMmQwNDZkNWZhO=
TU2NWFjZDcwNmQ0YzQzOTYyYjA3MGE5NmUwNmRjYzg3ZDUzMzE0YTc2NGUzNzliYzg3MDhhNjBm=
MjEyZWQ4MjdjMmExZmExZGM0MzAwZjZhZmU5ODZlM2Y2MzYzZTE1ZjQxNzBlMjcwOTM3OTRjMGU=
zNDNiMjA3OTVmY2ExOTA0YWJhMjE5NDgxMTg5NmM4N2IyYmY2MDM4OWY1ODJmOWY4ODFmNTg0Nj=
M2ZjE3Njk3NzQyODY4MTM4NzI3MzBmMmUyNDc4MTRlZDA5YTc3NmFkYjBiMmU1ZWYyMmUwNTFmY=
jRhY2FjN2Q1ZGNjOWUxNGEwYTM0YzFkMzVjN2JjY2E5NGUxOWI2MGU5YmI1YThiZjg5YWE4M2Uy=
YzcwYjdkZGIzN2I3MzdmZjQzMDlmZTY5OTE3NjIzNTE4NmRhZWUyMTE3NzNkYjg2ZGUyYTgwYTE=
2N2M2N2E5YTZkMzM1ZmIzMDVmMzljZjNmZTkxZjE5ZmIzNzgwMjBjYTE0OTJlYWU0MzFjM2ZjMG=
YzODhkOWQzNzM1MTBhZTYyNjg3NGM3ZjhlMDIwZGI5ZWJjOGQ4MDliMmJhYzJlNDQzNmYxODhiO=
TUxNGY4MWNiMTVjMGJjNjE1NGUzM2FmMjZhZmU5MjYyOTkyMzY5YTQwNWM1ZmYyOTNjNGQ1NzJj=
YzIzMTEyYmJkZDEyZmNiZTVhMTZkYTM2ZWQ0MDY1NzQzOTUzMDRkZjJhMDM3NWE4Y2JmODU2NzM=
zZTc1ZTBhNGNkZDRiNjAxMDMyOGUxNTg1ZGIzZWU2Y2I2NjM1NzQ0ODU2OTI1NmUzMmVhNGE0OT=
AxZWMyYjM3ZjYwNDViODBlNzIyZGJiZDAzMzJhMjdiMDE3ZDExOWU4ZDc2YTdkNWI0ZGE3YTgxN=
2EwNmMzY2NlYWFhNmIyZTA3MDQxNzFlYWZjZWU3MGM4ZjViZWJmOTAzZWExNzEwMTUzNGNiYjVh=
MDYxYzJjNzBlYmI2YzUzMTJiM2U3YzIwY2JhNDBmNGQ2MGY1NWE0Mzc0Njg0OTcwYmU1M2FkMGM=
xY2EzOTk5M2UxNmY0MWFkZjg3YzNiYjM2ZjY0N2E1M2RlMDAzNDVjNGZiNWMzOThjMmIxNjI0MG=
RkOTg2ZmZhZWUyYmMwMDVmNmRkMzRhNDFhYTdhOTNkYWFmNWY1NmE1MDI2NTBmMDM2ZDYxOWIyM=
GEzMTZhNDk5ZmViYTBjMDM1YWE4ZTM4ZGViNjViMWNlNTc1N2VlNWIyN2EyOTJhNzc5NGE4Njhm=
MmZkMmE1ZGY5ZDVmNmJjOGRmNzlmNGUxOGNmNzI3MTg4NTA1MTE0YjFjNTVjMDhjMjdlZjMwNzY=
5NWIzNzI2NmViYzQ2MDJjZDBiNDY5YzM1OTYyYjJkNGEzZGVmYjcyZmRlZmVkNTEyMmU1NGJlYz=
hhZjIzOGJlYjczYzVhMWJlZDg0MmQyZWUxZjIzMDRjNGQ5NjVmYWZiNzllZTk2Yjc0ZGUxNjcxZ=
mRiNjA2NmI0YzJmNmM4ODIyYjRiM2RiYTFkODY0ZmVkZjA2YThkYWYzZjllMjM5NTY0Zjc3YzUz=
M2I5Njk3MjU0ZmVlZTM1NDQ4NzQ0ZmI0MDI4OGNmMDUwNGM0NThmNGQwYjE3NGFlZWQ0YmMzZGE=
3ODYyOTQ2YmJlOTA5Yzg3ODI3ODJiNTIyYzM0ZWZkNGE1YWM5NTczZmRjOGJmMTY2YmVkZjE5Yj=
lmNGZhYTYzYjNjMDU3OTY0MTZiMjRlMzVjZjFhZDRkMmU0NThiOGJlNGUwMjIz" target=3D"_=
blank"><img src=3D"https://secure.meetupstatic.com/photos/member/9/1/0/e/th=
umb_312457134.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=3D"widt=
h:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DYmI3MjVlY2NmNWY=
zODQxYTY2ODI2NmQwODQ3Y2E1YTEzNjQ3ZjU2OTM0NzU4YTNlMmNiYTU1MzhkMWYwZGM1M2MwMj=
dkMTljZmVkODMzNjVhMDFiMGVhNDA3ZWFhZTA2NzhlOTU2NTVjMjFkYzQ2MmZkZDFlNjNmMmFiN=
mRiMjQ4NjdkOTdlOWI1MTExNzk0NDkzODlhNDE3ZGJhYjQ4YTY3ODUyMjU3OWIzYWM2ZTM3MDE1=
NGExY2IzNmRlNTNhYzE0ZTYxMjFhOWRmMjQyYzk3YjQyNDQ1Y2UzZDM0ZTc5YTBjYzhjNTZjZWM=
0MGRmYWVjN2I4NmEyZDg5YTJjZmY1NmIxODg1MGE4ZjY0OGYzZGY0OGY1NDkwZjRhZjZjMmUxM2=
FmZTYxMzdjOTVjNzQ2OTE1NDE2YmNhNTc3NzQ4NzcyODQyMDZmNzA3NTY4M2IxN2Y1MGYyOTlhY=
jFhMTZhNmJiZTk2ZDcyMjliM2RiOGM2OTQyMWUyNWQ4NDFkYjExNjg0ODk3M2Y0MWYyNDljNWM2=
NWRhYzEyMDZhYmM3MjFlNTgxOGIyMDEzZmIzZTBkNzUxNmRhMTRhMWRkYzAzNDYzYTEzYmIwN2F=
lMTE5ZjQ5OTk2YWJlYmFiYzVhOGQ0MzNmMmYxYzM5ZGFmYzIwNjE3ZmE0YWRhYzJhMGQzOWEzOT=
Y4N2M5NDQxMmUwM2U5NmM4NWNhODIzNzk3YTU3MDliOGU3ODc5ZWY5N2NjNjNhNDNlYzhjMzUyN=
mYyNDUwODYyNjI3NmQxM2RiMWYzZTU5MWE3NGY1YTU0MmUyYWUxNDM5OTE4ZWFiMzA5MTYyZjlm=
OTdkZjFjNGU1ZjA2MzBkNzA3ZGM0OGMyYWJhZTBkYWVhMjk2YTYxZjdhYTk4ZmJlZmU0MGI2Y2E=
4Nzg3NjAyZGRlYjcxOGI2ZTMyZGY2NWYzZmVjODA1ZjY2N2U5YTRjYmY1ZDJiZjQ3YTkwNDI2OT=
BmODJiOWIwNzdhZDI2M2RlYWMzYTBmNzA0OWMzY2QwZjhhNzg5NDhmNDZjNGNiZjk4ZjY2NTZkN=
GJlYzE3MGRjNGY0NDhiYTI2NmQ5ZDJkZDI3NjlmMWFlOTJlZTdiYmFkNDg3MDIzODkzNGFhZjgy=
ODY0NDQzMjUwMzFkN2M0MGI5ZjFmNWUxNzNiMWZmZjcxNGQ0NTQzNGIzNmJjZThhNjViMjQzODM=
4ZGM3NDdlZDcwNjAzNTljMzQ5ODc1ZWUyMDEwMWFkZjE0Y2ZlYjJkNDRhM2I4ODMzYTZiMzI0Zj=
FjNTE1NjFmNGVjNTViZGU2YTBmN2JmNzVhYTQ3NWZkMDU5ZTRjZWU5NzU4ZGUyY2Y4Yzg5NDg2Y=
WQyNmJiZDZjNTQzMmRlNjQyNTcxYTkzOTlkMjk4ZjU3MDc2OGFmYTI5MzBlOGJkMzYzMTA2ZjNj=
MjI4ODQzZTI1MjU0NWRkMTFmY2U4YmI4YzI2ZWNkOTk5MjhlZjM0MGQ3NWI0ZGQ2Yzk1N2MyMmY=
2MWExZmVjNDE5MTczNDg3Yzk2NzRjNTJiZGMwZGM4ZDJmNjliNWQ1NzE3NmZmZDA4NDYxODkwNz=
JiNWViMmVhYTU5Y2M0ODJkNmE5MTA3YmUyN2E4YjkyZGZkNWQ4M2IzYjk1YmJmNjQwNGNkODkwO=
GJlZmIwMWNhYTNlYzAyOTYyNmRhYzBkZDA4ZWM5ZWEzNWVkMjQyZDRlN2VjNDU1YjhkN2IzNjcz=
ZDQ0ZGJjZTVhOWM0YzBiODFlZjFhYWE1NWE4MjE0OGI5YjliNzFlNTg1ZWRhMzc3NTk0NTU2ODF=
kOGM2YjMzMDE3OTU2ODlkN2YwMjkwYzY5N2M2NDFkZjJhODFhODIwMTgxMTI2NjU4OTYxZDliMj=
I0Nzk0NzM2OGQyZjQ3NzE3ODk0NjNjN2M4MTFlYTg0ZWNhZTZmNjRmYjI5YmY4MzAyNjRkYzIxO=
GY5OWJiMWI0MzZlYTFiODZhNDI2NTk3YjVmNDJmMzExMDY1ZmY0MzU3NGQ2YWMyOGVlMWI0YmE4=
MTZmNjU5MWYwZWYxMGFlMmEwMjRmOTU4OTE3OTY1YzNhNzJhMTc2NzE0YmFhN2ExNDZlZWQ5Yzl=
hMThhYTliMDIwYjhjN2FjNTllNjFlODhkMjRkZmNkNzc4N2QyZWRlYWQ3OWYzZjY4ZDJjYTBmYz=
FhYzhmYjE1YTcwZGFkMWIwYmVlNWVlOTBmYTkwZmM4MjM2NDZkNDkyZjc1MGU0NWQxYjg3OGY0M=
2E0ODI1ODJjYTUyYjZjYTE1OTljNzQ3NGI4MmUyNTk4NjNmNmUxMzA5OTM4NDIzYmMwZWYxN2Vl=
ZTdhZWY3ODhiODA4ZWE1OTJhOGM3YjZlY2U1MGZlNTM5MGRjNDAyYWFmMzI2NzkyM2JjYWU0ZDI=
yOWJhMzA3NzhmZjc3OWI0ZmFlMGNjY2MzZGFmMDMxOWE5YjEyODFhMjhhYzY2NTFhMjc3NzQzYT=
U0MzhmNTg5ZTMwYjRhOTIyNGE3MGRmNzcyZjFhMjY5NGIxODYyOWYyYzRlNzZhYTliN2NkYzI3N=
jYw" style=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Rotem B=
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
                              <a href=3D"localhost:1333?u=3DOWY2MDNhNmVkODU=
1YmI3MzIyMDRhZjY2NzAzMmJkMjJjY2NkZjE5YWU4NTRjZDNlMmU0OTg0MWM0OWViNWIzZTkwMT=
I1NzMzMDJkNWE4OTRjMzIxYWI5ZTQzOGQwMTFhM2M5MGMyYjQxMzMyYTc2OTM5NWJiMGFhY2U2Y=
TlmY2Y3NjViZjk2NDBkZWU2NDFkNGVlMDEwMjhlZjM4N2JlNWU0N2JlZjRmNmM0NzdjNTMyMzUz=
Y2ZmZTQ2NGJhY2ZlZGI1MzJiYzc1ZmE0NDgxNzE2ZmU0MTM4YzBiOTQ3ZjIwMDQ1Y2I3NGNlNGI=
1N2ZmZThiOGQxZTFlODMyZDgyMDMzMWFiM2Y5YWUxZWJlZTg1ZThhYWY1OWM1Zjk5NjliMjhhZm=
ZkNjlmZGYxOTFiMmJkNWY4NjRmMTk0OGI2MTlhZDA5NmQ0YjllODJlNTBhOGI1NGI3MDZjOWI3Y=
zIwZDA0ZDcwNjhiZDNjY2JjYTdhODAwY2YzZjVjMTQ1YTAzMTRhYTBjZjcyYzJlNjEwMjQ0MDE1=
YjQyZjllOWY2NDU3NmU3ZjBhOTM1YmFjMzUxYjQ0OTM0ZTNjNzRmMTFkOWVkYzExY2FlMWI4NTk=
xM2RjYzM3YjE0MmNiODNmN2ZmZjlkOWZiYjQwZWQwNzg5OTM2ZWUzZTE4ODBkYzI3ZWM4Y2RkZj=
lkYzdiZjFlZDQzOTg1MzEzNTRkZjVjOTU1ZjZjOTg1N2Q5MTVjOGQwOTM3MTc2NzVlNGRkODc3O=
DUxNWRiNGIxZDU3MDQ4NzE5NzkzYWNkNzExZmE4YjkyMDFhNmEzNmZlYTI2YjYwZjM4ZjIxMDA1=
NmY1MDgzMTBkMTU5NWNmODdkZTdlY2EyMjNjZTNmNWY2MTlhYWY2NjQxZGVhYjlhYzM4NDBjM2Y=
1OGMyZmJiYTg3NTY5MGVkODg2YmI0ZDE0MmY5MTYxZTBkMTkzNmRhZDc0OTFmYjczMWI3ODAwZD=
hkZGRiZjY3NzE3ZTQ2NzMzOTFlN2ExZWI3MTI2ZjJiNDMyMGIwOTgwNDRiYjM1NmRhNjYxOGFiN=
jQ3MmRhMjJlM2I5ZDZjZTViZTgwYWU3NjIxYjMxNzk5YjZjOTQ1OTgwMjllNzI1YjFjZDEyM2Zm=
YmI2Njg1OTIwZWQwNDA0NDQwY2U2YzJkMWMxNjk0MDllNDAyYzJiODgzNzA5MDYxZTZhNWI5MDc=
1MjA3NjNjZjdjZDdkYzNmZmVjMjE1ZDEzYjBhZDk0NjQ5MDAyZTU5YjY2Njg4ZGIyMTU1OWVkYW=
M0YTMxOGFhY2QyZTZjYmZiZDdlM2IyYTFlZjMwYWJiOTIyNTY2OTdiZTgyODdjYjFlYmE3NzU0M=
DcxYjQ5MzVkOTMwMjA0OTExMGJhYjEwYzA4YjQ2NTdiNWQwZmE1MzFiOTk2ZWMzMmU2MWYyZDkw=
MGMzODc4OWMyNWZmMDZiOTUzYzgyZDMxYjcyNjAwYjY1YmIyMWFkZmRiZTY3NjE4MTUwNzJhMjc=
4MjM5ZmRjMGY1ZGQ0OWQ5YmIzZDBhYWI1NjU2MWFmNzc5N2M1NmIyY2QzYWM4ZmY4NGFiNjZkOT=
g2MWExNzY1ZmMwNWJjOTE2Mjk2ZWEwOTgzZjBkZWZiYWMzYTlkNzA0NzI1MWYxYjMxNzFhZTA0N=
jg1ODA1ODJhNTg4Nzg4YTEyNjhjYTNkZTQ0MGMyZmQ1NDg3MjFlZTI1ODcyZWQ0ZjkyNzE5OTQ4=
MTk2NmEzODA0NWYxMGNlNTMzNDM0NTk3OTMwZTk1NzZiZmZjMmMwMmQ0YWUxOGQ5NTE0YmRhMzN=
jYWJlZTQ5YmM2ZTljNTRmZmFjOTdmN2M1ZjM2MzBjMmNlNjRkNGE1OGE2NDQyNzVjMmZjM2Y0Zj=
g2OTBiZjY2YWQ3MjAwYWIxYzM5NGRiNjQ5NDZkNzVmNzM5OWUyZDVlNmJkMjlhMzA4M2U1ZTM4Y=
zNhMjc5NDMyMWQ3NzE4ZTIzYzA2NDgwMDBlYWFiMTU5ZmY3Zjc1ZDU2NmI4ZTEzYjFiYTE3N2Vh=
MjM5OWQwZmNhNmRkNmVlYzQ4Yzk4MTI4NDk5ZjQyZDM2YTdjY2VhMzA4NWRmZmJhODk5OTM1YWE=
xNjExMmZhYmU2ZjVlZGRjZjYxODM5ZGE5NzUzNWQwYTEzOTlkNTdhY2M3MDMyMGIwYTI5Zjg5ZD=
MyZmNiMTgzN2I4ZmIyZjBiNmFhN2U3ZmMyMDQ2ZTBlMWY1OGMzM2ZjMzBiOTE5YWNkMzc4YTE3N=
2RjOTVjYWQ5OTBmOTU4MTEwYjMyNzU3NDczNjhkMTU5MzNjNDkzYjhjNjlmZTQxNTU2NzAxM2Y2=
OGY0NDBlNGE3NTc1ODQyNTA4MzdhNWZlOWI3YzRmOTE3NTg5NzdjMjQ1Y2IxNTRkN2MxN2M5MjN=
mOWYxZGY0ODhhNzFjZWUxMTFiODEzMTMzN2ViZTE5MjFlNWEyOGFmZTY1NzUyZTFjNjgwYmE4Zm=
JmNmQ5MTVjODVlOTFlMGY4NTgyMjJlODVjZTVkNjhhZjliZDg3NWNjN2Y3YTk2MDNhYzM4MmE3N=
TEzOTI2NmYwYzQ=3D" target=3D"_blank"><img src=3D"https://secure.meetupstati=
c.com/photos/member/9/9/1/7/thumb_307479191.jpeg" border=3D"0" width=3D"50"=
 height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DZmY2MmRiNTVmOWV=
iNGY5Mjk1NDFkMWM0N2RmYTkzMjUxYjlkNWJmYTlhMjFhODMzMzNlYTFmODkwZDE3YWYyZjM0ND=
NlOTA1ZjRlYjhkOTU2OWU3Y2FlMmI2NzEwNTk0NTRhZGM5ODg5NmUwNTk1MWI2ZWE3MDc2Y2EyN=
zNmZTQxZDc5YTAwZDRkMWFiNjUwZDU0MmUzMTcxNjIwZGYyNDQzOGU3YzgwOTRmZTRjNjE4ZDU2=
YjIxMjcxZGM1YWVhZGU4YjgzMmZmMzk3MGEwZjFjNDk5NDJiNDM0NmMxN2U3NDkzODYwYTM2MmV=
mYzUyMzM5YzAxODFkYjAyOTNiMDYwZjQ4OWMyYzA2NjQ1MDNhOWQ0OWU5NzczZmI3ODE1ZWE4ND=
VjNjMwOTdkOTEzM2MwY2FmZTNjZGQ4MGRlM2Y1NWY1YjAzOWY1YTQ0MWVhNDkxZDljMjE4NzQxN=
Tc4MjYxMjU3M2YxZjdkZjEzYWJiYTNiMzkwN2EwNDI1MTRmODNmNGNmMTg3YTEwNTRjNWFlNjJm=
ODliNzExN2UxN2M0OWE3N2UzNzI1ZGY4M2NiYTBiNzFmMjRjOGYwMzgzNTNkYjVjNGY2ZDZmZWJ=
mZTdkODIzYjE3MTQ0M2VjODgxZWJkYjQ3OTRkOTY4Y2JkM2UwMzM5NWZjYjY0MjA4ZGE2NmU4Zj=
ZiZTMyOTc3MmExY2I0YTZlODliMWU3M2EyMjcyY2FjYmYyZmNmZmZlMDgxMDUxMmIxZTliMDkyO=
TNhM2IxNDQzYjg4MzFmNWZlYzQ2NDk5NWZmNzkzOWZhNjUwNDU4MTFiMmYwYjYwNjAxMWE2NzY4=
OGRjMTE5OTU4MDMwNzM5NTBhY2NjY2Q0ZDlkMTQyYjY2ZGM5OTFjOTk3NjlhNGYzZWQwZWYzN2J=
iOGQ3MDMxZDkxNDNmNjExYmNkZDY3YzViYzEzNmMyNjIwYWFmNzc3MjVkNjUwYWUwNTFhNmU1M2=
E0ZDczM2E2MjhmYWRjMzg0YTg1MGMxMmI3YWQ3NTVjZTk2OWRhZTYwN2E5YzI4NDU5N2QwZDE3O=
DkyMGVlYTdmZDllMGQ1NTdiNWE3ZjExYTFkOTAwZDQ2NWNlN2QzNzcwYTI3NTIyMGJmYmIyYTMw=
MTg5MmI5ZDZkOTRlZmFhM2UxMmY3YTQ0ZjQxZjdmZDI1OWZmMzA0YjVhYjA1NTBjNDhiYjU3ZjI=
4MzI3OGMyMzNjMTk2OWU0ZGY4NGUzOWJlYmE5NWM3OTI4MTkxZTljNGFmOTQxYjMyYWFlNTcyN2=
Y5ZWM4NTM5NWVmODE1NTY2MjA3ZmEzZjQwOGMxODZkYzkxNGU3YzMxNmFjZTE5Yzk2MjJlZWVlN=
zAwNTdmMDZmOTMzNTUyNGYwYmUwNjZkYzdjMzM1NjJmYjY4YzgwMWUzZGI1NTYwYWZjODQ0NDNk=
OWNlZTY4NDllNzFjYmVmMTgxNmEyNDRhODVjZmU2NTcyMjhkOGE1MDRlNzQwYjE1ZWRhNWVkYWR=
kZTM2MmZjOTZkYjY0NDk0YmZhMDZkODI1M2ExM2MyNDA1YzcyNWI5ZTQzZWYzMTBhZGE5MDg1NT=
lhZTNlODg2MWFkYTMyY2VhODFkM2RhMTRlOTUwZGIxNWQ2NGU5ZTk4NmIyZTY2OTc4MTEzNjE3Z=
DhlZTNjMDc4YTM2OTY5MmI0NmJiZTVlZGUwNjcwZjdkOTk5MTIxNzM2MDk0YWNkZmI3MDJiMjQ4=
MzAxNWUzOWUxY2E3YzBiYjYwOGMwNThjZjMyMjdmNzVmOGQ5ZWFkM2EzMmI5MmIzZmM0MDM2MzE=
xYWYzZjJkOWU5MmRhYWQ3MDc1ODUwYTllNDg5ODYxMGU5NWM1OTdiN2JjNWVhMTY1YmNlODg0Y2=
RlNjU2ZGVjZmVmN2JmOTNiNzNjN2Q2MzRlZWEzNzNlNzJlMGEyMDVhOWZmNjVhN2I1NTExZWZjY=
jdmZWUxMzNhNzdiMzY1ZjhlZDFlYjE2YjFkZDQ0OWZiMmU0MWI1ZDdjMTcwNTQ5YjY2MjVhMTgw=
YzczYjlkMjVjY2Q4NWMzZWVhZTVkNTQzMjU1OWQzOWQ2NWU1N2E0NzI4OTZmNDBlYjJhMTFjZWJ=
mMTU3YmVmYzJiZDEwYzc3ZTg4MTY2OTZiMmFhMGJlZDY5YjIxMzdmNTlmYWU2NDM2MWExNzlhMG=
NiYzYwYWM3ZmNjMWI3M2JiMzIzODJlZDY1ZTZmNDNkNDJiYTVlODI3OGIyOTYyNzkxZmQwYThhO=
WVkMjU4NDI2N2E1NDI0MzM0NjNjMzNjMThmMTg3NjlhY2MyYjUwNDBhZTIyMmJhOGY5N2ViYzkw=
NDk2OGE0ZDUyZjI2Mjk5YTg2MmU4M2M5OTNkMjJkODllZWJjNmUyNDdlZjQwMWQ0ZTQ5MDZmY2E=
5ZjMxNjM1MWVlZjE4MjZhMjc3MGY0YTgyODUzOTU0MTA5NTk5YTRjODA0MWFiNmE1Mzc4MzUxNz=
RlNTIzNzQ2YzNiZGRhNWFhMThmZGU0Y2RhOTNhMjA2ODhlYTg1YTljOTk2N2Ix" style=3D"co=
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
                              <a href=3D"localhost:1333?u=3DMzkxZWVhNDdjNjB=
kMjQxNTJmNDEyOTViMDBhOTYwYWM5YTAxZTM3OWU1MmE4N2IwMDc3OGI3ZDU1YmI1ZmNlYjAzY2=
Q2ZWFhZmRjMDlmOGY5NTUzMWY1ZTdmYmEwMmFiMGVkMTg4YjFjNDA5YmJlZmI1NGNlZTVkNjM5M=
2U3YzJhYzA2MGIyNTgyMjVjMzdkNTM4YTQ3MGZiYjkxMjhhYmIyMjA1MmQxZmQyODE0ODI0MDRl=
MDM2NDNlZjY4NGZhMmJmNWQ5ODBlNWQyYzU0NGQ2M2FhMDMwZTA5ZTY0Zjk3OGVlMWUzMGVkZDQ=
4MzQxYWIyNTMxOWU0OWU2YjNiZTdjNTZiOTRjMmYxZDIyOGE4YWUxNGUyYjY1MDI3YzgyZTI4M2=
FkNmJhNjllNjFlNjUwNDQ1N2IxMDhkY2I1MjhhYzlkYzNlMWVhNjk0OWVmMzhjMmI0YTBiMDM2Z=
DEyZmVjZWQwODQyZWIzOThhZjBkZmUzODAwNGZkNDZkYTU0MmNiODFhMjBmNzY4MzIxODY2NzE0=
MWYxYWVlMzViMWNkYmUwYTVlNjhjODVkYTNhYTJiMDQ2N2I0ZjRjOWNjNDg3YWFiYzBhYWZkNzZ=
kMmQ3NWM0ZGQzOGZjODFkOGVkYjc1ZTk4MTg0Yjk0Nzc4Zjc0Mzc5Zjk2YTNhYTg2NjNiNjc4ND=
QzYmJhMjliOGVkYmZmZWY5YWJmZTIxYzY1NGM3OGQ3MmQyYTNmZTY4ZTRjYzA0Y2E0ZTFhMzVhM=
2ZjNGQwZjdjZWI4ZGQ3NjViMWFiMDYzMzMxZDdkOTI4Y2UyYmIzNDNmMDFmMWVlZDRlODM5OWEx=
NTg5MGVkZmM5NGJhMGRhODMwZDU3OGVmZmFjYmZjYWFiOGRkZmU4NjNkZTRmYjE1ZTJlMThlZGV=
iYzA5MGZlNTcxZmY1YTViNGFlYjM0ZThiNjQ3YTM3YzRjNWFmMDExMDEyY2MyZWJjMWMyNWY1ZD=
hkOTIwMTA2NGI0MjVkMmQxNDAyNjEwM2ZhY2YwMGRlZDQ4ZmIxZTI2YmE2NDVmZGE5NDU4NmM0M=
DExNTNlNDAzZDc0MmY4ODA4MTMzYzNlMWFjZGQ5NTY1ODQ4MDlkZTMxMDYyYjgyZjIxM2U0MDU5=
YjkzZjVjYWJjNmM3ZDRmNzFhODg2NjczYjQxNzNjNGM3ZjczMzIyODk0MWFiNjNkZWU2M2IzMWY=
wZGI5Y2JjODg5ZjlkZTViNDcyNWNiMjljYzhkMDU5YzczNWQ4YWJlMDIyMDQ4ODlhM2EzODA1NW=
Y2OTgwOGIxMmFlZjMzYTQ2MGNhZDg3ZmExMmMzNjNkNWE4Y2NlOWNiYzhjZGQ1YjcwYTViM2JmM=
jU2ZDM3NWIzMjY0NWI3ZGY4OGM2ZjJhMDY0ZDhmY2QxNjQ0MTMzYWM0Mzg3ZDk2NGQyZmU3OTQx=
MDg4NDBiNjE5YTIwNDI1ODVmODU1OTVkNzk5NWQ2NDM0OTFjMzk3N2ExMTA1NTcyZTAzMGRmZTZ=
mOWI5ZDQ4YjU3YTNlYjExMzg3MTJhNjJmMDIyMGE1MmE3ZWU4NzUxNGQzZTRlMjBiOTM3ZmU1MD=
g1NDY2OTNmNWFkZTRlZjMzZjhiOTczYmYzOWY2OTk3YjZiZTFiM2YzZTIzZjRjNzZjNTU0ZWQzM=
TFjYjdlYzQ1ZTVhYzNkMTk2NWRjOTJhYTJlN2U3M2U0MmUyZmVjZGM3Y2E2NzcxNmYzZGVlZWRh=
YWNkOWYxNTRlODRmZDJiODNkYThhNzU1NDAwMjRjMjY2Y2I1NGFhZTE4YWZhZjk1MWM2ODBiNmY=
yMGYxZDMzYzUyMTQzODJmZGI3ZGY3NDI4MWRhNjhkOWNlY2JiMWMzODZhNWVmNDE4NzZmYzQxNW=
MyOWRkMDRiZWM5NzBiMThhOGU2NzMyODlkYzM3YTA5M2UxMGZhNmM3YzNmMzNkYzEwMzQ5NzkzO=
GNmMjkzMGNiMzE0ZGFlMTc5NmMwOTAwYmFlNWFiNGFmNDc0ZTA0ZDIzZjVjOTE1OGZlOTMwMDAz=
Yzc1ZTE1NzJjZGEwMTc0MGZiMGQ1YTM2YmI0ZmFlY2I4NTU2MTI0YjllNWE0MmYyNTE2YjA3MDI=
5NjliMTYwNzY2NWNjYzRjMzgyMDM4MDQ5NTA5OTA4MWM1ZmVlNjlhODNkZDgyNWQyMzVhZDZjZD=
M3YTdiZDEzMzQxOTViMWJkYmRmZWFkNjA4NWZkM2I2YzNkZDIyNTNiN2RkNjdjODg3NmM4YmY0N=
DE2ZDBjYzVhMTczYTU3ZDBhNDEyYjdkMDY3ZWMyYWVlNWYyNWZkMDg4ZTEwMTNhNDJjYTQ4NzNl=
NWZkMTMyNGQ5NmY1MDVlZTlhMGNiYmE2ZjlmMjk3ODFlNmZhMzA2NTE4NjJhODc0YzRlMGIzOTU=
0MGJjODdmNDcwZGE5N2Y3MWNiM2Q3Y2EzMGQ5MTIxNzU3ZDNiYjg3MjlmMjI4ODFmZDliNDcwZG=
ZiNTk5MDk1NDNmM2NlNWUyZGYyNmZhODI2NWZiNzU1MTVlOWJiMDM3ZWU1ZjgxNmRjN2FjOWM1O=
DY3NDcwNWIwYzg=3D" target=3D"_blank"><img src=3D"https://secure.meetupstati=
c.com/photos/member/a/f/8/3/thumb_314024931.jpeg" border=3D"0" width=3D"50"=
 height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DNDYwZWNjY2VlOWY=
yNWQyZTBmZTAwNWZmMWNiZDk3MzNiODgxYzJhOTRmZTBkMWJhNzMwZjRlY2EwYzUyYmM4ODhjOT=
k0MWRlZWFmOWZiYzYwMjZlZDkzZThmMDI5YWE5YTVhZDliNDg1Y2Q1MzRiMzJlOTMyOWRhODJlM=
DEzOGY2MzRlM2MwZmFlNzkyMzIxMGU0YWYzODE3NzEwMmU0NzczMDQ3ZjBjZDJjYmIzMmMwZGQy=
Mzk4YWNiZWJiOTdmNGJkMmY0YzA0MzIzMzEwMGMxODliNThlZTAxODM2MDI2YWQzYjMzMGUxYTZ=
lOWY2ZThiZDM2NDM5NzlhNWQ5ZDZlZDFkNTA2OTc5MjdjZjhiMmI3Y2UzM2ZkNThmYzIwYjZmYz=
czMTMxMzI4MmFmMTcyNjQwZWE5MDhlODRmOWNjMWE5YzA4Nzg1MjVmOTI1ZjNkMGI2YzQyNTU1M=
zkzZjRmMTYyOWY3Y2M0NjAzZTAxMjYxOGQ5ZWY4YmYzMWI1MTE1NzQ1Mjc2OTRlYzQzMjgyYmFi=
NzcyM2RhODdjZWEyZmVlNzE0MzZjZDM3NDA5NGFlYzc1ZGFhMDFmNThlNDhlN2QwYTk4MzFiZmR=
lZGFiNmI2MWYwZDI3N2NmNWNiZmJlNGE3YzEyNDVhZDBhZGQ4YTQ5ZDQzNzk3NmE5MzUzZTE5Nj=
U4OTQ1Mjc1YzBlOGE4OTkwNWEyMTlkZmE4MDNlYTY0ZmQ4N2YyOWRlZGQ2YjE3NTBhY2FkMjE0Z=
jgwYTc0ZmJlYzQyN2ViY2RjYjI0ODYxZjQ2NzJhMWJkOGRiZTY4OTc4OTE4NzkwMjFiMzhhZmVk=
NzhjZjQzMTdjNjU3M2I0MzBkZGE3NDUzNjBjZjBhMzZmM2Y5N2I2YzA4YTdjNDNkZTRkMmZkYzZ=
mNmRlNTNkMDcxM2Y3NDEzNjgwZWRiNTc0MTRjYmJkYjk0NzJmNGYxODVmNGEyZDllYTliYjRkMT=
ZiYzJmM2VjZDdmNzk1NTBmNGVlYmY5YWU4MjM0YjBlMTdhNTM2ZTJjMjU4N2M1NWUyNDcxMWMzN=
DVjMTUwMmQyOGUwNmZiMjdlODU1MzFlYTc5MDQwN2NhNTQwMjRkNGI3ZTJjZmZlYzE2NmFmNzE1=
Mzc3MDNlMmM2YmI0ZGUzZmY0NjhlYzVkZTIzZDlmMTE2OWJjZWYwMThlODhlYTg4YWM2NGFmYzc=
yYzIzZjEwMWVkNzJlOTgxNzE2MGYyOWUzMjNkODRmZGU1YTdmMTI0MDY2ODA5MTBlMjg5NzY0MT=
c4NDc2OTM3ZGQ1MGRiYjkwM2Y2NzI0ZGQxZjMwMjVjMzdmNzIyNTM3NmRhNzE5Njk1Y2M1YTFlY=
WQzYTY2ZTgxYzI2MmM3YzI3ODkzNGM4OWQ1NGMyYzYxZDcyODA2NDliMjhmYWViMTlmNjI1ODFi=
MzdiYmU0N2ZhZjViNDVhNDc0Njc0M2U5ZTEwNDAzMjVlZjFhMjMxNmMzZDVmODliMWFhOTg3MWY=
5ZTQ5OTFiZTI1OWVkMWFmMDk5YWI0NjlkMWU4ZDgzODQyYWRmYTAxOTM4MTI2MmQ3OTU0ODU4Nj=
BkOTRjZjQ3M2VkYjU1Mzk1YzRmZWE2NDNjZDUwYTVhMTE5ODMwYzYyOTc0YjFhM2M5NTg0Nzk1Z=
mJmYzNiNGI1NDIzZGViZjU1OWFmZTgyZDFkZjg3ZmMzMTA5MDQxOWIyZGJiZjI5YTNmOWJmNWZl=
NmExNzI2YzIyNTkwMzM2MGZmNjgxMmE0MzQ2MTM0ZmQwNGJjZmI0N2RmZGM1ODdlMDY0OGFiM2J=
hYTRhMTE0NmE4Yjk1Y2Y1M2MzNzNmNzZkMTk0NzRlNzE1MzMyM2RiNjdmMjQ4YmYzN2JhNjc1OG=
MyZDk0OTg4YTRjZTYyYjJhOTVlYjg4YjU1MzBhODJkZWUzMTU1MTY4YjBhZmU4YzNlZGJmNGE4M=
WE5YzNhMTU4Njk0YTkzODA5YjFjNzlkN2VhMTZlZjA3ZGQzMDBlOThjM2EzOTAxMmVjNzQ4ZTAz=
NWI0ZmJiOTRiZGFkM2M3MjlkNmRkYzg1NDM4YzJhM2QxYzc1MzZhZmRkZDFlNDk3ODBmN2RjYmF=
kMmQwMDM1YzAxZjE4M2IwMmI4YTM1YzcwZDFhYjM5NDc4N2Q2NWVmYjNhOTBhOTE4YTA3OTk2Mz=
VhYzNmZmUxMzIxNThmOTZiZGMzNmIxODYyNWU5YjM5YTJhNGFiZDNiMjdiZTJjYmZiMTVkYWRhY=
jZiNWVkY2I0OTI2Y2JiZTY0ZmExYjhjZGQ4OGY0ZDNlNGNlNWI5OGRjZTY5MzBkZjA4ZmYyMmQy=
MTA3MDI2NjYyNDFhNDRlYTA1Y2RiNjQzNmE5MDM2MTY4OTE5ZTNkYzA1ZDNjNzE4ZmY2NTQzMjU=
4YzAwZWNlOWM0Y2E0ZDQ0MjZhNDFlNzg3NjkyOTMxNGQ4ZjY4YjkyMGM1NGM5MWUxMGE3ODQwMT=
c0ZjNiYzNlNTg3ZjU4ODM3NzhhZmE2OWZjNTQ1NDI1MmY2ZDVhMmY3NmE=3D" style=3D"colo=
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
                              <a href=3D"localhost:1333?u=3DOTlhYzM4OTM0NzQ=
2MTBkNjczY2JmOWZmZDZmMjk1YmQ5MTJmYThjNWRmODc4MmUzZTRiNTBkMDM0ZDIwMDBmMDE5Yz=
k4YjA2ZjU2YjM0OThjOGM4ODM4MWNkZjZiMDA1ZDIzZGI0MDhhNTgzMWU0ZTQ2OTkxNWM4YjhiN=
DdlMTUxZjJmN2QxMTc3OGE5MzdlOTQ0YjQzNThiZTVmMDE0ZmI3MDJiY2I5NGFmMmRlMWI3N2Ux=
MzZkOWEzZjhmOThiOTcyZWE4MGVlYjljNDNlM2I2ZmRjMjc5NjVkZDYxYjBkZGRkNTVmNmMyM2Q=
0MTBiMGNkMmJiNTliYjFhYWE3MDYxZjQ4MmEzZGE1ZTg3MzQ2NWJjYzVlM2JmYzAxZjc0MjIxMW=
FiZjg0YzE1YmMzNjczOTg3MWM0NzFiNDY3YTllOGZkODI2NWFmZTUzZTdmMGRmYjgxZDk0MmU2M=
zg0MmM2YzRhNzNjZWNmZWUwNzBmMzY1MjMxNTE3NGE1NDdkNDZjN2NkODE0N2ExNjBmZjJiODBi=
OTYxOTU3NTg5MzUzMWFjM2FkODM5YTYxMTY4MTU0MWY5MzI0NWE3ZmIwN2E4Yjg4MGZiNDczYmY=
2ODM0MmMxNzA5OGU0OTY5YzU3OWI5YmU3ZTIwNWQ2MTQ5NzRlNWU4MWUxNDA1NzllMTJlNTczYz=
EwYjNkNGIxZGFlYzEwNWVlMzNmOTMzYjJhNWE1ZTk3MGVmMzNjNjNhZDY2Y2QwZDc0MWZlNDMzM=
zRlNGI1NjZmZDdjZGI1NmI1OTkwNjQyODUxMDhhZmI0ZTkwNDA0MmVhMjFlZmI0Y2ZhYWEwNTI2=
YTE0ZDBjNzMxYmFkZGZhZDRmZTkwMmJhMjM3ZjIwYzNiZWQ1NWExYTg0NmRlMTAxMDA5ZWFjMjF=
jYjUxMzcxMDdiYTYyYzZlZWIzNzZiMTI1YWY1NzhmYTFlMDQxZTJjZmJhZWU1NzI2Mzc2M2YxN2=
U1NGMxYmQzN2E5MzY4MzhhYjI0ODc0MmY3ZDZlYzZjMmIzMTkzNWE0M2U0ODMzNDViYzhjOWMzY=
2RhOWMwMWM3ZjE3NjlhYjI2MTJhNjk4NTEwMDZhOWIzY2RiODRkYzhkZWY3MzQ4ZTdmZGUxYzcw=
YThkMzFlY2MxODU1MWNkZWNmZTkzNDQxYjFhYWE0NzdkODZhNmFmZTY0M2YxYjVkMGQwY2QyZmJ=
kNzEwMDEzNTJhZjY1NWM5ZjJjZTY3MTQ2YjdlM2NjYzBmN2I0OGEzMDgyODk0YjdlNTEyY2YxMz=
AwYTM2NzFiNzdhYjQxYmVhODJlNzMxODY2MWNhNjcwZmFmMjNhYjU4NjcwZDQ5Y2ZhZjk3YmJkZ=
DlkZWM3NDZiNDRjMDZiNGI5MjIzMzY3NDI0NDk1YjhjMWZiMzVmNmI2MmVjNmZiZGM2MDFmZDVh=
YzZmNjY0Mjg4OGMwZWVmNmYxMjNmMWFjNTIzYmNjM2FjYjY3ZDZiOGVjM2JjM2EzYjk3ZDdjMWN=
hNjllMzU2YTAzZTAzOWRjZjUxMWNlYmUxOTA0YmNjZDY5N2JlNDkwMGIyYjZmMjUwNjEzNjYzMD=
dlZjU0ODdjYWZhNzc0MGJmZTJiODE0MmM2M2U1MGNiM2Y3MzBmNjhkMGRkZDdkZjgwMTJkMTRlY=
WQyNzkxN2EwYTYwMmJhNTNmYTljNGIwZTE5NDY4ZWYxNmNiNWI1YjlkZWE5ZjQ1MDdlNThkN2Fl=
ZDUxMjczZDg0MWVhOTkyNzFmZWQ1MWI2YjNlYmY1MTQ5MTRkYTI0NDdjNzU1MWVkYjljOTk0MTJ=
jNDU3YWZmOTY5MTVkZDRhZWMzZGU0MDJjYjg2MGI4ZDAwZmRkMjFiMjMwNjUwYWIyYjdjNGVjM2=
FlNDFhOTk0NDA5ZDdmNTFjNWFlMjQyNDc3ZDA3NDI2ZWQ1ODZhM2NhNzIxMzVmMmY3MjBhM2FjM=
jY3NGM4OGI4YzllMTc3MGNjZWZkZTJhOGU3NDY4MGMxMzIzODMyYWYxNjlmMGZkNWVjYTc5M2Q4=
Y2I0ODNjZjk4Yzc2NDEzNDNjNTZiZDI0NGQ4MjhjNTYxNjk4NDFkNjM1OTliZmM1ZjQyZWYwMGV=
jMTE1NjE1OGVmMTQ5NmNmNDhiMmM5YjQwYjgxNzhiZGMwMThlY2M4ZjVhOWJiZmEwMmViN2Y2M2=
Q3NWZiMjllOTFhZTBiNDI4MmRjYzk1ZGNmMzNmMDIxMTQwYjE1ZmY4OGNjMmY2ZDE3OGIyYzc2N=
jUyNWQxOTU5NzdlY2VjOTJjNTQ4YWIwMjg5NWNhYjVlMjQ5Mjc4OGUzOTFmMDExZmI1ZTFjZmE5=
ZTcwMTBlMDRiYTZiN2Q5ODU4ZWFkYWFhZGFjNTRkNWFiNTMxYjQxY2I0ZDM1ODQ5MDY3OWMzMTM=
0NDdhZWY0MjY5YjcyYjkwOWEyODBmMzNlNWE1Mjk3OTBiNGExYjhjODEwZGUyYTk2Mzk1MTA4ZW=
Q1YTc1NDU3MTk0OGI4MDc2ZDFhNmNjYmQxMDM3ZTFmOWUxYTQ1NWYxMDMzZjg1" target=3D"_=
blank"><img src=3D"https://braze-images.com/appboy/communication/assets/ima=
ge_assets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" border=3D"0=
" width=3D"50" height=3D"auto" style=3D"width:50px;display:block;margin:0"/=
></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DZWZhMzdhZGU1ODF=
hNGI4ZjMwMTk4MDUxN2YxM2Q3Zjk5MWM4MDRmMThkNGJhOWFlOGEzZGZiYzIwNDJkMTAzNWIwMm=
NhN2FiY2QzMTZlMzE1MGIzNjU5NzgwYmM5ZTExMDcyYzE2YjNhY2JkYjQzNGMyN2I4M2YzZTk1N=
GRmOTg2MzJlNGFmNGUzZTNkYmI4MmYyOGUzMmM5NDNlYWY0NDQyNWUzOGM2NGNlMjFhYTg0ZjUw=
OTlkZjQ2ZjQyYWE2MDEwZDZlOWI1MDcyZDYwZmNlMzQ5ZDFlN2FhNmY0ZTM5ZTRiNzg2Y2IwYTk=
zOWE3ZGI4NzUyN2NmMzZlMTVjMmRlMjFkNGYwYzA5M2M4NTdkYjQzYzUzMDg4YWExNjFkMGU4ZG=
JmZGY1NDNkODQzNjZiNTYzN2U0YjQ0OTI0MWUwM2Q1MTYxOWNmZDgyZjc5NWJmNWQxMjIwNjE4Y=
TY4NDIzNTM0ZDY4OWE3ZGJmMzBkNDI3MzlmYzMwYWQ1ZjRhNmFjZmQ2ZmI2ZDA1MDU4YTI4ZWVk=
YWM5OTE2OWU1MTMzZDI1MDk2ZjAyZjkxMDA2MTBiYjBhMTJhYzdjNjZjNGQ3MjUzOWM3OTRhZDM=
yYjg4ZGYwYTMzN2ZmNmM0ODA1YmZlM2ZmOTcyYmUxYWU3Zjc2NGZhMWI2ZmQ0YTBiZDRiOGY1ZD=
Y1YTUzODA3MWVmMjRiNzNkNWM5N2YwYTliYTVhMTBjNDAyY2E0NTAyNGNmNWRjNzdhYzg4NmVjM=
zE2ODc1ZDVjYTJhODIxMDhkZGQ0ZDFjZjc1MTY0ZjJjZmMxYjU5ZTMzMTFjZTUwMTRmOTkzYzBm=
ODQzMDhlNGNiYTJkNTI4YWVmMGVmNjcxYjU2OTU5ZDIwODE3NmY0NWU4N2JlZWFlYTUzYzFjN2V=
iNDJmODY2ZWIwMDQ2YWZkYTliODE0NjRiODNkYTgzNjVkZjc0YzZjZDNiNGNhZWYzOGI3YTBhMD=
Q4YTMxMTBkMTI2OGVhMzU4ZmRiMWE5ZThkYzIyYzg0Yzg5NGViZTg5YmQ1NjY4ZTAwMzkyMDJhM=
TBjM2UwNDE5YmFkNTk3OTQ3Zjc4YmNjNjQwMDc5YjM4ZTA4ZGY2YjE5OGNkNzZlYzI2YjRkMzQ5=
YTIzNTkwMzlkZTg2MjE2NGRmM2QzMjkzM2EyODM5MDRhMTJhZDhiYWNhYTg4MGQ1OWQzZmZkNGV=
iODU2OGUwYTFiYjBmYmJmY2M1MTg3NGIwZjBhOGI4ZGEyNDk2NjA5MWJkOWRlNGEzNTlhMWIyMD=
E3YmMzYjZmZjA2NWIyOGJjZWVhMzE2YTAyYzE2NDFiMGFlYTgyZGY5ZGVlMzRjNmNjZWI2MGUzZ=
WE5MzBiZGE5MTM5MTNmY2U0ZDY4Zjc0YzE5MDMwNzE1M2I3ZWE5NDRiZjc3NzBiYWNlNmRlMzVj=
YmNjY2NiMWQ2NzUwN2YyNGYyNWFiMGM0NzNiNDcwYmQ0ZjI3YmE2MmNiMzkxMmQ2YmYyZjM5MzE=
1NWIwZmYwMjkwNjAzNzQ1OWNmYjI3MDQxN2FjODA0NjAwMGQyMGU0ODBlOGZmZjhkZjBkNWU0OT=
QwYjc1MmRhZDEzYzc0NjdlMjdlNWZmODVmNDcxNjcxMjJkN2IwZTNiOGEwYmZiODAwOTRkZTI3Y=
zdlNWNmNDY0YzVhZGI0MDBmNGE0OTk3ZjBkOTkwODZlODIzZWM5MzhmMzIyNTEwZGZjODE5YjBl=
M2FlMzRhOTIyYWM3ZmMzNDRhZTViOGRlNTE2MTA4ZjE1NjgwZjI0ZTZiNTlkN2FiZTNlZjcyYzd=
kM2YxNjMwZWUxY2I4NWU1MjdlYWMxMDgwN2NjOTZkYzQxZGVkZWYwNTU5NWY5YmIxNjc5ZDA4Mj=
NhNmIwNjAyMmIxYjE1ZjJiNjFmNGY1Nzc1YjRmYTM0MTY4NWMwZTQyZjM4NDFiMzJlZDYzMmU2O=
DU5OGI3MmZkMzJiOGFjMzFkZTcxNGEyN2E1ZmY2MTgwYzM5YjM5MTliYzg1NzY2MDIzOTVlZDFl=
ZWEzMDY1ZWIwOTI5ZGViZGM2YWRmNTRkYzJmZjQ4OTY3MzQ5OTNiYTMwMmM4Y2Q4ODE3MmE5ZWU=
wMDEzNjAyZTcyZjk5MTM3YTNiYmExOTMzZjhmZGJjMDE2ODg4MDUzODFhYTg4OGE3ZjMwZjNkNW=
U5ZjQxMmE0MzdmNTgwNmI3Y2ViMDM5MzNhOGE4Y2M3ZTYwMzY2YzQzYTkzMmU4YTAzYTMxMzQ4M=
GVkNmUzMzUwMTcxNzU3YjI1ODc2NzViZTFkMTczNzBmNmMyOTJmN2YwYWIzMGNiOTkyNTViZDk3=
NjI3MDE3MTgzZTU2NzQwZjgzNzE5ODE4NjUzYThiMDA5MDk2MjNlODNkZTUxYmVhZTg2OTVjYjV=
iYTQzMjM0MGY1ZmUwZmNjNTI5MzUzN2Y5MmNhNDY2MjgyODNkNmJjOTZhYTIwMmU0NDA2NWY0Zm=
Y1MGYzNDBmNTQ4OTcxOTE1ZGRhMzgwNGMzYjlkMDlkNWQwNzlmMjdmZjU4OTQy" style=3D"co=
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
                              <a href=3D"localhost:1333?u=3DMzdiYzhkNTQ3OGQ=
5YzVjOGI2MzEyMmRjYTVlNjY0NjAyZjgzMjg3ZTBkNzNlNTRiODUzZjRlMDJjYWZjNzcyMDVkYj=
kxYmI4NjFmMGUwMWYyMGZiYTEzYjhkZTYwYWQ3YTA3OGQwNzM1ZWY5NmI5NzVhZGY5YzM1NzdjZ=
ThkMTI3ZDgyNjMxZGFhYmQ3OTY0NzcxZTJlMWM5ZTgxZmU1MzczODI0NjM0MjhmMDJlZDg2NjVk=
ZjQ5Mjc1OTI5YzE2NDkwZmVlMWI1Mjc4Yjc4MWRkMzIwYThjNmI0MjY4MTIwZTczZDAyZjdjOTU=
1NmJlNmUyNzExYmY3NjA1M2ExYjZhZDM2ZWRkODJlN2Q1NTBkZDE1YTc3MDk1YjQ5NjA2NWMwMm=
RiMzZlY2FmOTBmMWZmMWE3ZGM5Y2M2NzliZmM2ODE5ZDA4MTUzYTY2MzE3MTllNzUyNjY1ZTg3O=
TFhZmU2ZWE3OGJjNzc1OWRmOTBkNTc1ZTRhYjg0Mjk4ZjQ5YjMwYTk1ZTFjZjQ0N2Q1NTVhOGRk=
NmI0ZTBiYWM1MGE5MDcwNWYzYjYwMzg2ZjNmMjIwOWE0Zjk3YjdjMjBmNTllYmVlZjI5MDFjYTQ=
zZmIzMWQyMWUwNjE3NjBlYmI2OGJkODViYmJiODBmODljNTBhNjcwNDE0NjE3OTE1MzMwYzliMW=
NlYTBhNGE3M2M3MDYxMGM2NGE0NmExYjgzMTM0YzgyMGU2OTczYzNiMTM4NzJiOGE4Y2ExYWRhY=
jE0YTU5ODgzYWFlMjZlMWM2YjQzYjU2YjJiOTIzMjg1Njc1ZDMzM2RkOGI3MGE1ZWUzMTU2ZDQx=
MjBkNzM0YWQ0ZWU1Y2Y4YjlkOTc5OWQ2YzBhYTVlMDgwMzVmYmY2ZWQ3ZWI3NWU5MWM0YjVhNGQ=
2Zjg3YzRiODJkYWM1NWNkMGIwM2U0Mzk3M2I4MjBjNmM4MjFiMWNjNzY3NDQ0OTVlZGFhZDQzNG=
JmYzQzNGU1OGU0ZThiYmQwYWJjZTM0ZGU2YTQzMGRkYjc5MjlkODQ1NDFmODUxYzAzMGFjYTM3N=
zA4NTg4YzQ0MmIwNmYwNzgxZGExNTJkZWVmOTFhNmU2NDRkYzMyY2QxZGUzYzkxNmNiYjc0NGYz=
ZGQyZGJhNGE0ZjAwZDFhNGNlYTk5MmE2NzNhNDFiOWIxNjU5ZDRjMWZiZWQ0NTM5MDJlNDgyMGY=
wMjExNjZjYTE4ODkwNDhkNTllOWE1ZWE1YjE0MzNhNTMwOWY1ZWE0OWRjNDJkM2ZlMmI5OTUzOT=
VjNzhkMDhlNzRmOGIzZGQ0ZmE0YWZiZGQ1MDdjZmRiOTc5OTRmMzQ3Yzg4MjQ4MzFhZTI2YmRlM=
zAzZDNiN2JkNmM3ZjUzZWQxMzAwMmU3MzlkNjRmM2ZhY2Y5YmViMDMzMDMxODkzMTM4NDRkMmU1=
MzVjZGYwMWI2YWMyNWMyN2JkZmM0MzM5ZjFlMTIwYzY4ZjYwNWVlOGQ4ZDhkYWU4Y2U4ZTY1OWY=
5MTEyYmI1ZTY2NjA0MDg5M2YyMDBmMTc0ODJlMzcwMzFiZTJmMWZjZjc2NGVhZGFlZWMzZDk4Mj=
Y4NWM4ZjUzYjQ4ZGU5NjQ4NWM1ZGJiNmY5ZGY4OTIyOWZiYmViN2I2ZGFiMGJkOTMzYjVkMzdiO=
DdjZGZhZjExM2UwOTQzYTM5Njk0NGU2NTk3Yzc3ZDdhYjg0ODUzNzM1Mjg2NjlkNTc5ZWE3Zjk1=
NGQzMzI3MWU2Y2ZmYjVlYzc5Yzk2NTBiNmIxZjZiNGIzMWQxNWIxYTBlZTlkMjExZTNmMjdlNjN=
jYjZjOTZmODNlMzRkNzE2ZWUxZTdhOTc3Njg4YjNlNjViYWE2MWQxZDMyMThmZWU2NjIxY2QwMT=
JmNjA3MmY0MjU1MjkxM2JmMzBlY2Y1ODllNjA1M2Q1OTA0YmJiNDk1YTkwNjU0OWNjOGNmZWQ4N=
TE5ZmE2NDZhNDAwZjEyNmI0ZTc4OWJkMDQzNjU2ZGNjNjJlYmYyZDE4MzU2Y2YzOTJjMTE3ZTE4=
Y2ViNTkyNDFiNzA2ZTkzNTI0ODgyMmRiMzgwZTEwNGZlZWYxN2NlMjAzZDE0MzE1NzQ0NjI2ZGU=
yOTlmYTQ2NWVhZDM5NDA2NGY1ZGY4YjJhNGJjZDRiZDk5ZGJlMDIxM2QxYWQ3MmEzMTE1NTNmMz=
NkMTA3MDIwNWI1MDJmMGJkZThkZjAyOGY5OGVlZWRkYzI4ZDNlMzM5Yzk4YTJlOGY4NWQ1NmUzM=
zg3ZmQyZmY2ZmE4ZGQ4MDQ1ZTA2MjY4OTZhNjM5ZmY5OTY0MTI0MDkxZjA5MmM0MjczYTlkMjU2=
NGNlYTg0YzJkNzI0NDFhM2ZjMjM0Njg1YzYwYWYxZGFlNWZlYzdiMmZmOTM0YWZhNjhjMWYxOGM=
5MWI1MGIwOTI1N2M1ZWMxODY1MDFlNGM2M2EzNWVlMGZkNzU5ZTUwYTUzNzBlY2Y4OGJkMTllMj=
VmNjRjOWYwMjNjYTljNGU0ZjEzYmE1OTJjMmJjMmI5NjUyZjExMQ=3D=3D" target=3D"_blan=
k"><img src=3D"https://braze-images.com/appboy/communication/assets/image_a=
ssets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" border=3D"0" wi=
dth=3D"50" height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a=
>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DNDk0MjkzNDM4ZDI=
0MDAzYzdlNDQzNTVkMGM2ZmZkYjgwMjQwNmJhYmQ4MjBlOWEwZDI3YTNiYzk2NzhkZmVjMGI2ND=
ZjNTI2OTFjNmY4MmI1NDc5NzYwYjAzYjI2MzUzOTRmZTFiNDA0ZjE5NDNiOTVjYjllMmNiZTIwM=
TY5YTFmNTM4Yzg5ZTg4Y2RhOTAwYTcwNWM0ZTQ0ZWE3NmRhZmFhOTM3ZmZkZjE3YmRmZmRjOGEz=
MzA2MjE2MWVhODE0ZmM2MzFmODliYzlmODEwOWE0NDM1MzAzZTU5MTEzYWI3MDY0NmU4N2FmMDN=
hM2Q4M2NiOTIwYWNjYTI1YjcxNjE0OWY5ZDBhODM4NGQ5ZTkyNjZiNjZkNzE5MDY3ZGRlN2Y4Nz=
Q3NmMwODg0ZDc5MzUwZTk5YzUxOWE0Njg5ZWIxZmVmZDhkZGE3MGM4ZTQwM2ViOTQ1MTkyNjY2Z=
jhmMjU0MjcxN2IyMjdjODNlM2Y0NDYyYWQ5MzQyNTA4NDIwYjhjN2Y1Yjg2MGZlZWVhNTlkMGY5=
MDFiOGRlNmEwNDExNjk0MGY0ZThiMGQ5ZjA5ZWFiYTczNmJiYTNkYTdlMzRjNmM3Zjg2ZTRlYTB=
jODdlYTJlNmYxN2QzZGViNmFjZGY0ODRiZTE1NTkyZTE1NmU4OWE5ZjU1ZTAyODFhNDQ3ZmM4N2=
M2NWExNDVhNjU2NWNmZWVhMWUxYmVlNjZhNmNlZGFkYjA0NjcyOTUxMGU0YTE5YjA3NmRkNWM4Y=
zczMzk5ZDVmMTdlZDUyNzEwNGE2OTRlMDg5ZDU3ODYzOWYyMmQ4YzNmYjkyM2ZlYjg3NmZhMTc5=
YjkxNTM3NTU5OWFlMjFlZTM3MTQ3OGFiZGYwM2VjYWNjM2QzYjE0ZGU4YWYzOWVkNTg4ZmE1ZGE=
0MmYxM2VlMTNhOWI5YWEwMDdlMjhkMmM2YzY4NTIxYmJkNjYzZTE1YTA2OWY2NTdiN2I4ZGVmZT=
U2YjE3OTU2MjI5NmM3MjIwMjRiNjBhMmVlM2RkYjg5YmYwMDZiMjcxNmMwNWE0ZTg3YWIyMmQwO=
TRmZmY4MTZjMTBkNTIxZjIwNTU4MTA1MzAwZjYyZjk0ZDQ4ZmFiNDg2NjI5MTg3NjYyNjQyZmUw=
ZDRlMDgwYzA3MGFmZWZjMGJlNmQzNjA3MDEzMmFiYzFkNzljYTIyY2IxMDhkYTY3NDBiYjI5ZGE=
1ZTZhZWEzOGYyOGRhYTYyM2FiNzJjMzJkNmE0ZmU3MDA4MDExZTE0YmY4ZTlhYjQ4YjM0NmIzYz=
c1NDg2M2ViNzNiMmUyNWMxMzAzNzQ0MjM3ZTliNGQ5ZGEzZDMxMTA2Y2UyZDg4MjlmYjk3ZTBmY=
zY1NDZjZGRhNjRjZDVjYzFjYTdkMTE1OTJmOTE0MTE5ODE0OTU2MWEzYTViMDFmNmFiMDc1YjI4=
MTFlMmE2YjYzMzMzZmVlM2ExZDBjMWU4MzQ4NjY3ZDQ0OGIyMjk2MGM5YWU0NWIxMTc3MDY4NDU=
2OGUwZDE3Yzk3MDBkNjljMTQxNWNhOWFlN2MzNjM5ZDBiNzYxZWExMzFhYzdmN2I3MTg2MGQ3Nm=
M2YzUxM2UxYzU3OGZhNmZiOTc3NTUyMjYxOGRhNjNlMjU5MDAyOTgyMDdhZjZiYzNkZmM5NTEyO=
WZhZDMxYmIxNzliNTcwYjA0YzM0NTc2ZmU2MzJkZjNiYTEzOGIyMTM0OWIxZjFjMTFhNzEwMDgx=
N2ExZWYyZjlmMWVhZGE4NjU0YjZiN2VhMGUxOWQ4YTY1MDVkMTZlMTBhZmMwYWQ2ZGVmMmE0ZmR=
iZmJjY2ViZGMzMWYwMDFlZmVhYzUxMmY3ZmE3NTU5NjEzYjUwMGJlZjZlYTQ0ZjliOWYwZWYxNj=
lhZTc4OTAwNDVkMjA1MzQyODhlMDFlNTdlNjc5NmRkOTBmMGY1NGI2YTBmOTExNzQ3Y2QyYTdjN=
DFhNzFkMjkwY2MzZTg5NWY3MDhlNjQwNjQ3MWJmNjVhZmU1OWI5ODFiZjdhMDMwM2VlOTFmMjc1=
NzVmZjQ1M2NmMWQ2YmE0MzRmZTU2NzYzY2YyNWVhNzJkNmNhMzFlMGRiNzI2YWY0ZTAzZmNiYjN=
kODIwNzc3MTEyOGZhYjRkMjFiYTU5MzY4YjdlOTU1OTI1ODYwMjBlZDNjNWNhZjY1YzVlYjZhMW=
IwZjRkMjk3ZDlhNWZkNDdlMGUzZGY0ZmYwZWI4N2Q4OTU4ZDYxZWEyMmEzOTI2NGY2Y2U2MjU4Y=
jcyMjVmYzhmYWUxZTZmMTFmNzY5MTZhZTk0YmQxZjIwNDI4Y2FjYWNjYjQ3MTVmYTVlNTkyYzcx=
MGY2YTQ0NGVkM2U0Y2JkMDQ5MGU0MDgxMjBjMTVmYmI1MzcxZmExYjgzZDNkMDAxNzg2NjY5NTh=
lODg1N2M0NDdiNGYwNTBkNzA1N2IzNTY2NmEzOWNhODJmYmE2YmYzMDAxMjMwMjZmMjUwNDhhMG=
ZiOWJmY2IwOTU3ZjJmNDdlZjRhYjljZDFhNzA5OTVlOGZlODI4NQ=3D=3D" style=3D"color:=
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
                <a href=3D"localhost:1333?u=3DNzU1YTVkM2Y0NzgyMGRkYzQyZGMwO=
GQzNzNhOTRiMTRlMzYzYmRhOWYwYzlmMTllMzBlNjMwN2Q0NmJjZDdlN2QwNmQ2NzA4Zjg2NWM0=
NmJjZTlkOTQ4ZTQ3MDJlZTNkYTYyZTg3ZTcwZGY4NWE3YjI0Y2JjNjJlYjc1OTZkZDMyNDViMGJ=
hNGFkZGQ1YWQzMDAzNTllYzNhZjAwZWU0ZTM4OTZkYzE2ZDgyMGNkYTlmYWUzODc1Y2RkODY3Mz=
MzNzMwNTE2ODRlNjE1Y2M4MjA3YzJmZmEzZmIyN2Y5MTE2MDk4ZmIwYmY0ZTE2ODc0NzdmZjNkN=
zk2OTgzY2NhZDUyYjc0MDI3YTQyYjM4MDg5YzcxMzMxYzQxYzdlNDRmNWQ4OTg5NWY0NDAwNTdj=
OTYzZTM0NTQ3ZmFhMTRjYTFjODkzNTM3YWRiYjU4M2NlNTMxZGViYTBmZDA2ODZjZWNlZGQ3YTg=
zNjMxNDIwY2Q1YjUzYmRhMmE1N2M4N2JiM2Q2YTM2M2Y3NzVlMTU2Y2UwNmU4YjUxZWE0ZTdjMT=
hiMzA4ODMwMGQ3MDgwNzg1OTRkMzI5OTQ3ZDk3OTdlYTM0YzBlOTg1NTAxYzVhMTE0OTcxMDhlY=
TczMjNlNzA1MGRhZDk4NGUwNTUwMjk1YzMxOTQ1NmM1MWFlODY3NmM5MThjZTc5NzEyMzcwOWFj=
NzhiZjNmZWNiODQxNGMwMTc0MjEwOWZmZDdkN2QwMzFkN2VjOTYzYTg4MzZhZTM5NDQzOTg1N2R=
mNmNjMWE2MWE2ODQ3OTY4OTE5NmQ0OWYxYmQzNjQzMDFiZDdkY2M4YjJhZTk4MTg2Mzc0OWNkZD=
c2YWRkMzAxOGFlYmQzMzgzZmQzMDA5OGM4YmVjYTU1NmZjNmI3ODBlYTEzN2Y2YTFkY2UyZTBjY=
jM3MDAzYjRmNDdmMjdjYzkyZWYxMDczYmI0NDg5NTFmZmI1YzBhYTg1ZWVjMWY1ZDBjOWY5NjY4=
MDlhYTliMmVkZjBjYjdhOTQyMjRhODJiMDRkYThlZDIzYTNjYzViNjFmYzZmMmJmMWNhMDQ1ODI=
2NmMzMmU2ODdiOTk4NzBjZTIxNzE1NWM3ZDE2ZTNiNTI1MGJhYjgxN2Y0YjAzYTVhNDI0YTRhN2=
ViNjcxYTI4Nzg0YjQyMDIxMzM2NTgzMjI2NzI2ZmIxMWRjZWM0NGJmZTNlNzFkOTA1YTU3ZTk4M=
GJkNWJmMWE1ZjBkZTcxNTVmMTcxOWExZGI2YjkxYzdjN2ZlZjA4MmM1M2QyMWY1MzA3ZjUyOWY1=
NThiOTZhYmY1MDAwM2EzMWRhNWMxYmE4NWNlM2YyZTQyMmM0MDZmZDliMTA4NGE1ZjBmNTBmODk=
yNjE3YmNkZDYyMWNhZDM1YTU3M2RmMjk2YzU0ZGU5YTFjNTI2ZWY5MTAxYzY3MjYyZWMxMjc5Mj=
cwNGNkNzk5OWVjZGZlYTRlMjMxNzBhMzUyMmE2MWEzZDNlM2UzODRmZGU2NjFkZTA3NTkwMmU2O=
DFiNTc1ZTEzODU5MGRmOTNhYzgzYzdkMGM4Zjc5MmNhMjVjNGRjM2U0MTIwNWExNmZmMDZjNjY3=
YjJhNjgzOGNkZGY0Nzc0NGVlNjZlM2EyMTJkYTAyM2Q4ZmRjYTZjZjQ5MjIwNTEzN2NmODg4M2F=
kZWJhOWM4ZTMwOGM4MWYyY2NmNjgyMGRlZDMyYTU3NzJjYTBkYWY2ZmQ3NTdlOGViNWY0OTNjNT=
BmMTg0NWYwMzhmODQxYzIyYTU5MzM0MmNmYjU5Nzk3MTVhZGVmZWM1MTQyODZkOGJlMmI3OTc4M=
2I2MjlhMDJlZGQyNmEyYThkYmUwNjZjY2ZlODcxMjc5YmQxM2E1MzM2N2IyODFhOTFhZDRiYTQ2=
ZTM2NTI5OTJlMzQ5MGY5N2EyNTJjMjJiNTYwY2E1MWE1NmMyN2I1ZDY5ZDRkYTk4YzQ4ZjdlM2J=
lYzdhZTg3MzEzYjYxNTFlZDg2Mjc3NTE0Njc1MjdmNWY1OGI1NGExZDFkYmNhYmZlMmRlMjFlZm=
QwYzkxZTRlMTdjMzA4NTExNGNlMmVmMmRhODE1OGE0NGI5YmJlN2Q3MDNiNmZiZThiYzY5MjQyN=
DYxYWMyNTE1ZTkwNmE1NTc0OTA3OWZiMjAxNWMzYmQyNGQ1ODczOTJhMWFlOTEwOTZlMGE3M2U0=
MDU1ZmIzMWVhYjg1YWI5YmIyMmE3MjU3YWZhOTVlOTc2ZmEzMTc3OThjOTU4MGUwMTE1MTU5Njg=
xYmY5YjNjODdiZDFhYzI1MjZlZDdmNGUzZDFlYzdlYmZkODUyNTYzOGFhNjczNmU2ZTVkNmY1Zj=
Y5MDNkOGFjZDc5MzRlMDM4OGVjYmE3MjZjMzQxNjlhN2FkMDU1NWVhNzFlOGUxZTc1N2EzNDI3M=
jkxODc3MTRmM2M0MjMxNjEzNzU4ZmY0ZjRjYjM0MzgzN2ZmMGU1YzUxNzE1NWM1ZGNjYTAzY2I3=
NDMzMmI3MzU5YzhhZTkzMmMwZjljMWQzZjcwMTgzZTk=3D" style=3D"color:#06c;text-de=
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
                  <a href=3D"localhost:1333?u=3DZTgxMGM3MzkxYmZmN2RkYTIxODA=
1ZWIzMTUzZWRhZDk0ZGRmY2YyZjY1NWNkOWIxYTQ1MzJmNzFlMTFmNGMxMjJkMjM4ZTBjNDgzZj=
QwOWJkNTUxNjdmNmNjNDIzNmFmOTQyZGEzYjBjZTg1NzhlYTliYWM0MGRkY2ViZDg4Yjg3YTA0M=
zk1ZDZhM2Y5ZWI0NjZmMDNhMGU0YjZiNzAxODQ5N2FmN2M3ZTkwOTM3YWQ2NDVkOWIxNjE5YzMx=
NTBjNmNmNzNhMjJkMmFhNjFkY2Q4YWEzN2ZhNjNhOTUwOWU2MTRjZmY2NjU4MWEwN2NkZTUxOTU=
wNjk3NzEzNmUzMWM3ZTcyNGJmYjI3YjMyNjY4ZWEwZWJhMzg5ZWM2ODE4Mjg5Mjc5MGFjMjJmMT=
A0YTA2YTYzYWU2NGQ1ZmQzYTQzMmE3M2FhZWMyNmVmODRkYzIwNjU0MGQyYTZhNGQ0MzZiNTYzM=
mYxM2ZmODQxYWY4ZmExNWQ2ZmUyMDA0MjRmMDE0Y2Q0MmVmZThjMjhkODAzZDBjOWVmMDZhMGZl=
ZTQ5OTQ2YTZiMjNlYzRlNTFmNjcxODRhYTVkY2YyZGY3NmQ0OGJkOTk1MjczZjQyZjY3YWRmZjk=
wNGNmYmRmYzdhOTIyMjliNDlhNmYwY2EzNTM3ZWFkZWVjMjhjOTdkYjBkZGJmOWQ0YWZiMDIxNz=
YxNjdlYTk2MzY3YzEwMjcwMjliM2E4NzBjM2UxZGRlMzZhNTBkOTc3MDVkYjkyNmU5ZjFjZWMyZ=
TczMTBlNmNjNDViYzA5MjM4NWYzODE4MTExOGFkZWZiYTMyM2UxYmIwODMxMTdkZWM3ZGQ2ODg1=
MTY1ZmU4YmU2NGU0MGM5YzExNTQzMWI3ZjQ2MGVjOTI0NWE2MzcwZWYwNDM0NzBhMDBiNWM1NDU=
2ODY1Y2Q4OWI1ZjVhN2JmZjU5MzcwNjEyYTMzMDM2YzQ4ZDg1ODAyMDI1Njc1MDRlMjM2MTk3NT=
dhOWM5ZmU0ZmQ4NTQ0Y2M5YmJjMzIwMTg2MGUyYzE3NDNkNzkyMjFhMDdhNDE2YTI2ZGEwMTYzM=
2UwOWQwMjY0YjE1NjhlMTAyMDJmM2YxM2RmMjhkM2ExZWQ1YTgyOTg2NWE4ZDYyZDQ4YTgwNDJi=
ZjllMzI5ZGE1ZGIyMThlYzAyMDM3NTVhMzIwOTgzYjk1YmE2MmQyNTU5ZjQ1NzU1MDg5ZTAzYTk=
wNDRkYTlkYTM5MGM5NTc2YWRmMGZjZDJkNmQ2MTAyMWY5M2JiMmE5NWQyNDI0NTZkZGExMzYyYj=
FmY2UyZTU3NjI3ZWI5ZDQwNjY0MzY0ODViMzNlNzNlOGVlMDVjMDI5Y2IyZTg2ZjcwMTc0YjMzY=
TEwOTQ1YzliMzJiYmYyZmNiYjU3ODIyMDE1OWNlNDQ2MjgyYjdhYWMzNDljNzVkMjRjNDkzMjZl=
NDQzMWM4YzE3ODQxZjRjZjJlOTU1YWYyMDhjMmY0NmJmZDY5MmE1ODAxMzUwOTE5YWY4NDk3NTJ=
hOTc2Y2ZkMDk2NDNmNmIzOTQxNjAyOWJhYjU0YWVjOGE3ZjM3NDNiZjUxNzdiODljMjc1MWEzYm=
Q3Zjc1YjlkZmM5OWJmYjIyYjE5NmU4NWQ3YWViNjdjMzZmOWYyYThlYWQ5YTkzNGQ3NzUxMDRiZ=
mY5MzFiOWVmNGExNjU2MmY0NTdkZjkxODUyNWJhMTExZDM0OThlM2NiZWY3ZDQ5MmQwYjFkNGYw=
YjBiZDkzMjVhNzkwZjNiNDFkYThkYWJiN2NkNzNjNThmOWUyNmM5YjAxYzIzZjQ4NDgwNjg1YTI=
4MTlhOTNlZGIwNjA5Nzc0NTg1NGMyOGZiNjU4NWY5ZDc4YzMzZGMxM2QwYzY3YTVjNjRhYTI5OD=
ViOGFlN2I3NjVhNTg1YzcyOGZiMGMzODg5MDExMDFhZDRhMzVkNDVjNjNjZjRmZjc4OGI3YjkyZ=
ThjMjE5YzM1OTNmYWE2NTQzZWZlZDFjYTA1M2JkODM4MjhhODgzMWJlNWNiZGM3NDg2YTEyNjg3=
NzllNjFjN2NiNTAyN2EwMjg0ZGFkMjRiN2RhZjE0ZWFlMjM0ZTY4M2EwNDZiZjYwMDU4NTI5MTM=
3MDFlMmIxOWUxMTYyYzY5MzZkNTAzOGRkYTI1ODM0MmJlZWUwMWJiMGM2YmM3NjJkYmU5ODUxYT=
I0MGE3MDhjYzAxZTE4Yjc1NGU0Zjc2MzhhNTQyNDE5OGM4ZjVlOTJkYWZjMzBiYmZiNmYyOGEwN=
GJmNzhjNWI2YTg0ZmYxMTRkMDI4NzQ2MjIxNjdlMDgxNDMwZDk2MWM0YmUyYmVmMThkM2FjZjhm=
ODQ0YzgxNDczMmFkZjRiMGFhMmU3MmVkZTdhOWU3NzIzZWJiZGQ0N2ViZjQxYzIxOWZjZmJiMTU=
4MDkwN2Q5OWQ1MGZmODRmODJhZjMxOTc2NzBiMzk2MGMxMzQ1ZDE0NThjZDUyZDM2MTA4MzdmYT=
Q4ZjlkZjlmNjc3NGZkNDY1ODY3M2UwZTNhNmI5MWY0NWNlNzVjYmNhMjA2YmRiZDZjOGRmMDQ5Z=
Dc5ZmE0MzllYzI4ODUxYzQ2NDg1YmE4ZDE4MjM3MzE5Y2EzZDgyZjIwMjg1NGUyN2FhNDM4MGQx=
MWFmNTYyODUwYjYyZDkwMDkxMWY1YjRlNzIyYjE5ZTc4MmVmNTkyNTBiMWFkNDYyYTQwNjg5NzE=
0NGIxY2FlMWIxZTY5NjgzMTlhMjQ5ZmM3YzIxZTdmNWI2OGNjZDViMWU0MjgzZjkxODY2OTAwNT=
Y0NWUxZjFlNGYzNmMxMzY5YzMzMzA3MzkwYjNlMDk3M2EzOTM1NmQ4YjdiNmIwYTQxMmMwNjc4M=
jA4ODUxNmY3MjQ1Y2Q0ZDAxY2JmOGJlNw=3D=3D" target=3D"_blank">Unsubscribe</a> =
from this type of email. <a href=3D"localhost:1333?u=3DNGNjNjgyZDNlODExYTEw=
ZTY3ZjI4OGY4YTY3ZTI1ZDRlNTMwY2NkZWZjNWFmNTQ0YjQzOGVmNmFlOTc1NjM3MWFjOTk2MzM=
wNDdkNjhkMGM4ZjUyOTJkOWU5MTM2YmJmZDA2YzY0MjcwYzk0ODY0ZGJkZTFhYmFhMDQyOGI2ZW=
RjZDJjYmRiMzQ1MmVjMWRkMGQwZDE5MmJmMzJhY2RmOTgyN2RiMTE0M2Y5NDM3MTFmYmZiNGJiN=
jMxZjdkYzU2YTZlMjcwOGZmMzRjZjk4N2RhNWU3YTI5NzVkOTIwY2UwNDk2ZDc0MDFhYjMzNWEy=
ZWE1MGU5ZWMzNjNhZGJkMjMzYjRiNzIyZTQ0N2JhZWU3YTc2NWI2YmM2ZjE1YWUwZmJjMWZiZTI=
wYTQzMTcwNTY2NDQ1MmU2YzAxNDQ1OWQzZmQzYzcwNzg0MjVmNDc3ZjNiMzRkNGNkN2QzMmUyYj=
UyN2E4ZDVjOTczYzA4YjhmZGU1YjBlOTY3ZWQ0OTI2YjBiOWNlNTljNjlhYmU3NDNjNmY1YjQyM=
WY1MzNlY2U1ODFlOWQyM2RiOTMyMmQ3NWI4MzM3ZmE0NTY4YmJlZmRlN2E1MTc0YWFmNjgxYzI3=
YWE3OTZmMDVmMjIzNTE3ODUxMjhmZDFhNDdmNGYxZWMwNmMzMTliZjI1Y2Y5YzY3YjA4NmI2N2E=
xZjkzNGJmMWI4NDMwMTcxMzkyZmU0NjI4ZTE2MTU0NDBhOTU5NTE0ZjJmZDEyOTgwMTEyMDBiZj=
JlZTY2NTkxN2NhYmYyNmJlZTVjNzk1YzdmNDVmZmVmNzA4ODc4YzM4NTU3NzhmMzA0M2Q4NzVkM=
zU2NzQ4Y2I3ZTI2YmU5ODEzOWE5NWNjOTgzM2UwZGI1ZGQ3OTRmYzNlNzE1NzJmYjllNTJjMTQ4=
NjRmYTNjNThlMmEzZDI3YWU4MmRhM2JhOTIwODZlZmU4ZjA2OTlkZGU1NzVlOGVhOTUyNzYyY2M=
1ZjAxZGIyMDUyNzNhYmE2MzY5YmVjOTdiYWM4YTlkZmYxZWI4MGM2MzA3ZWM4ZTU1YTUxZDdkNm=
QwMDg3ZGE5Yzc4ZTA3YmMyYTQ3OWViNDUzY2QwODQ5ZjgyNTFlZDAzOTg3MDc5MTcyOWJiMjkxM=
Tk1NzFiMTlhOWY1ZjI4ODdhNDNlNDRmYzE1NGQ3NzYwZTNkMDM4N2MzYzI0NzQ2MTM2ZTY5YTBi=
YWRkYWRkMjQ2NWRjYjQxNDMzYzY4ZTNhMWQ1ZTA4M2U1YjhmMjFiNTU4ZWNmMWFhYzE5YjllNjN=
iN2ZkNWJlOTIyYWU3YWM3NzE1ZWM1ZWViOWEwOTJmZjYxYzcwYzI5MjgzYzk4NWMwNjVjNjljOT=
ZlMGE3YzQ5ZjdjNGRjYmUwNDQ4OGMzZTNkNzZkYmYwZGY4ZWFlYTg0OGNmN2Q0YzU2MjZjM2NhZ=
TM2ZDgxYTg2ODc5NmU2YzNlM2MwYjhkNDQ2YjBkMjEwMGNhNDMyNWQ1ZmZlNDllNTVkZGI4ZGNl=
NmZiZDEzNTdjZDM2MGY5ZGI4MzAwMjcxYzM1ZWNkNDhmNTYxYmEwM2JhMGIxNjA3ZTMwNjViNTJ=
mYjI1M2ZjNjA3NWNhNThmNTZmZDZlNTIzNmVjYTZiMzIzZWIzODQ0OGVlODliMDQ2OTU3NzA0Zj=
QzNmQ5OTQ0OGEwZTY2Y2IzM2NhMTc5YTk4YWE1M2EwYTNhMzdhNDM2MTFiYWU3ZDhhNmI2NWQwM=
jIyNGQ1YTVhNTQ5YjFmNjQ2ODc5OGFjOTE5NzFlODVhYzc1OTdmNTEyYWFjNjQxZDVkMzM1YWJk=
ZDQ1MjBmNGE5OGY3ODViYjRmM2M3OWFmYmI3MWExODZkNDI0YjY2MzFlYTM2YWM0NTI3YmYzYTF=
kNjFjZmU5OGY1MmRlZjFiNWE3NTVjNmU3NmEyYzgzNTY4ZjEyMjU2MTRiYjJjMzliNDA2ZGRiZT=
dhYjBlNTlhNDFiZjAzY2E1NGIzZmVjYmI4OTAwOGRlMTZmMThlYjlmZjc3MDdiMDIwNDNjYzYyZ=
DRhMjJmOTdjOTg3ZjIxOGJmYTMzYjg1MTM2MTUzMjcwMmNiYjMwMmVlMWMzN2Y1YTNhNzVkOTE3=
YWExNTViODM5OWI1YzQwNzQ2ZjMwYzY2N2ViOWNiMGEzNjc5MDA3OWUyODExOWQ4NjcyNjExOTM=
wYmY1OWUxZmFlMzQ0ODRiNmZkOGNiNTdmMDBlNGFlMTdiNzY4NjM5OWU2NWFjZjBlMzg3MTM1Zm=
QyMDgyZWY4Y2I1YzVjYTE4NzUxMjJhM2EyY2U4MGZjZDI0MTQ5MGZhMTYzNzMyNmZmYmYxNjcwY=
TVjZGM1MTgxMmEwNDNjMzZjYmVjOWUzZmMwMWIwMmNmYWM4MDdkYTk2MGQwOTJjZDYxZmEzOTk0=
NzY3NWU4MmI3MzBmMzI0M2FhNDEwM2QyNTBkOTA4YmQwY2EzMTZhMmM2MmJjMDJmNzIwZDk4OGU=
xNzA4NmQxNTY5NzE4NTk0OTk5NWExMWViN2U5NzcwYmE2Yjg1MWJjNjI5NTZmOGUwZTc2NDhjMW=
QxZjdjNDhmZDFiZTJmYThkN2VlZjY1ZDBhMDczNTE0Njk5NTU4ZDkwZTJlNzFkN2E2NGY2MzYxN=
zQwZGUwOGZjNTEyN2YxMWE0ODFkYmJlOGZjYzhhZWEyOGZkZTI2NDRhMmYyNDdkMDU0MTMwYzA2=
NjQ1MzhiODIxYzVlOWFhNjdkNzNiY2YzZDY4ZjM2MDgxZTY0NDU4ZmM1ODEwZDg1NmQzMGNlODE=
xMTA5YTgwZWE4NmQ5N2VmZjQ3NTg5NWM5ZTA1NWZmOGZiMDM3ZTQ2NDVjMzMxZmE1NmM0YTY0ND=
ExMGYwMDY1NTRmM2ZkN2Y2MzA1NTExZTZlYmZlNjVmNzA5MTM3ZmZjMDY3MzZhMTJiZWE2YmM1M=
DVhZjk3NDFjNjE4MWJiMTBmODhhNmNhMjhjMGI2MmQ1YmM0ZTczM2Q1NTM4OThkMTBjM2U4YTQy=
MGY1ZDBhZmU3" target=3D"_blank">Manage your settings </a> for all types of =
email updates.<br/>
                  Visit a <a href=3D"localhost:1333?u=3DNGE4OGZiYTQxMjk2Y2J=
hMDg3ZTU1MTM0OGY3OTc4NzA1YzFlNDJlZjRlNWJmNTk1ZjI3OTRkM2NmODRkMDBjZjdjYmMwM2=
UzYTg1MjIwYTExNTM1OGYwZGFlMWY5ODMwOWM3Mjk1MjllMjI0NWQ5NWYwMTFjZmJmMTA1ZDhkZ=
mJiNWYwYTAyMzdmMDQ0NmRiMzI0YjMxNTFjYWZkZDMzZjBlMzBiYjE1MzkwNDY2YmQ2MDMyYzMw=
MzFmZGQyZmExM2Y1MWZhOWViMjk4YmVjZjAxMzkyMDY4MzgyZDg4ZjkxNjlkMTg3OTVlODM4YWE=
zMDM3YTA5MWMwMWU0ZTU4MWY3N2VmYjg0ZDk0NDgxMjdlZmM2YzhlYjMxNmZiYWFiY2FiZmUyND=
NjMzU1Y2EyMGEwYmIyMDFkNjMwZDg1YmMyMDhkYWUzM2MxMWJlMTkzNTllZTMzOGFiNmRkZjQ1Y=
2IyZjQ2YTM5ZWZiZjNjZGRhY2MzNGM2ZWRjZDJlZTIxNjMxZjQ4NGJkMmQyNzQ3YTFjOTFjOWEw=
OGJjMWE0NzM5ZDZkN2Q3MGZjNGM4NjQ2M2FlOTMzYWFlOGEwMmU0MmU3MTgwODJhMzIxOGVhODA=
xZTljY2YwNjRmYmMzMjRkM2E4YWE1OTc2YzgzZjM0MDc1NzhhMzI0YTA3ZTc1N2ZjMDVlYWQyZG=
RkOWViZDdmMmY3OWM5ZTQwNzgwNWI0Mjc1ZWU4NGQwMzA4MmUzNWMyNWMwOTFlNTkzMjE2ZDRkY=
jI4NDk5ZjNmNzZmZWJmODQzYjVhOTAzYmRmYzFjMjllNjJiNDFiMmVhOWYyMzdhYmUxMzQxMDA0=
OGVmMmQyZjA0MTAyZjAwZjdhZDgxZDhjOTRmYmUxODQ0NmRjZDBiOTY5NmMwYmNlNDQ4MDdmOGF=
jNGEwYjA3YzFlN2I5ZmI0YmRiYjE3YjhlYTQxY2Y1MmNjODk3ZDQwZGNhMzkxNzIyMmI0Y2ZhYz=
FiOWQ5ZDg2NzViN2RlMDk3MzM1ZGNiNDZhY2QyNGNiMjA2M2IxNWI4MzAwOTQzZDkxMWFhNGMwO=
GYwMTM3YjZkY2VmMjAzYTdmODNlOTJmMWI4M2QwZWM4ZmZlZTc1YWM3NDM1NTBiZTBjMzI0OWVl=
NTVhMGY0Yjk0NGNmZjRlMjYxYmM3MGRhOWY3ZmRjNjZlZTk2MTY4NmFkMGU2ZDBlMTA1MjFlOWM=
zYThkNGYyNTk3MjE1ZDAyNjkzMmFmMmU2ZjRkNDA1ZjRlYTQ0ZmY3M2E0NzI5YTFkZGQ5YTUzZW=
MyNDg5NDAxYTUwZmQ2MDVhZGQyOTU4NDk2NTFiOWQ5ZmRjMDAyZWIwMTNmZjE0M2YyNTY4M2E4O=
GE3MGRiNmQ1ODdiYjA1OWM5NTMyZGQzMDFjNGJlYWNjODE3ZjJkNzg0NGQxZmVjNTczZTljOWIx=
NjE3OTJmNjExM2ZkOTNlNWYzMzEzYzI3Nzk0MmZjMTVhMjg5YzUyYjEyZTMzNTAzY2JhNjI3NWY=
wYTdmZjZmMWEyNTExNGQ0OWZjMjJlYmYwNGY4YmRmNGVlMTNiM2IxN2Q0MzBiYTRkNTU3NTZlYT=
g0YWI0Y2JjMzAxNWU4N2ExYjdhZDllMjJmNmY5MDM4MDA0NGI5YzdhZDc4ZTRiNzE3N2M2MWJjZ=
jI2Nzk5ZTkzZjYxNWQyZDhiODIyN2JiNWQ2MTU2ZTYwZDg5ZTJkYTRlNTRjN2RiMzYyZjFkYmM4=
ODhkNDc0MGY4YjlkOWUzZmZhNDViYjY5MjRlZWQxNDBkYzQzMjMzOGQxMGE3ZGQ1MzIxM2E3YzQ=
5NDA1YTFkNDQxMjRmNDYwY2FkZjMwNDA1MGQzNjA2ZmY3OTFlZDg1ZDMzNmZhODE0ODk5OTQ2Yj=
hlM2VjZDlmMDU3MWE1YzZmZGYzMWE3NGVkZTUyMjkyOGI4M2JkYjhlMzYyODVkNzJhZDY0ZWQ0Y=
zI1MmU1YTMwNTFjOWJmM2Y2MTIwZGYxNTAyY2EyYWJiYzlhMDY2NjYwZTE4YmUwMGE5NDA5ZDlm=
ZmRmYWExNTIwZjIxYzBhZjhhZTRiZmUzYzBlM2EzZmU3Y2JiMjllMjIyYmU5Y2I5NGJhMzA5MDV=
kZmFmYTIxNWZkZmNkNDE2MjdiYTE2YWViZjg2MWJhNDVkYTc5OTJjOWM3MjljYWFhOWE0ZmNmYW=
VmMTQ1MGNlNmFkMDMwNmUwMmYwZjlkMjNkNGZiZmQxOGQ2NjdmN2YwZTNjM2U5ZjEwZTc5YTI2M=
zU3NWZlMDIyODRlY2UwZmJiZGRiZTdmNDgyYmU5MGI1OWFlMjljNTZmYjUyMDFiYTFmODU4Y2Zm=
OTc5MGMwYjM3ZGYzMGI4MzRiYjIxZDkxM2VmMzRjMTI2OTdlNTMxNzc4ZmY2ODNjMTYxNjMxYWI=
xY2YwOWFjOTVjYzNhYTk4NDg3MDgxMTc5N2NlYzFkZTFjMmU3ZmRkZmY0YWI5NDFjNDE4MGI4MW=
JkYjIxZDY5ODgwZWQ0MWVhY2Y2ZTk0ODcxOWY1ZDhmYTZhOTdkMzkxYTExMzA3ZDc0OWY3ZGVhN=
DNlN2M4ODNkZmFiODg4NmM2NmJjOTY5YjZjZTM1NzkwNDUwNGM3OTFlMTQ3YmI1YjlkZmZlZTk5=
ODM0MzNiMTJhZmQ2YTgzODI3ODcyZWMzNWJlMjk0YzRmODkyZmYzMmMwOWJmNTg4MWQ0NTI3MmU=
3YzI4OTFjNjRlMWM5MzFlODk0ODM5N2U3MjI0NDlhNWYyMzE2ZGJkYjM0ZWUyZTk3OTM1MGJlYz=
hkNjNjYWU3OGQzMDllZTUxNDdiMjI1Mjc2MzVlMjdkZDQ1MGI2MTA5MjBkNTgwMmYzNzU4Y2FjM=
jE1YjVlZmM1M2RmNzEyNjY0ODE5MmMzOWMxMDM1NTA3M2EwM2E0MGFmNmQyMzIzYTdkMmI4YzE3=
MjRkYTJmNmIxZjFiZTI2YzQyZjBlMWQ3NDA2YzQ4MjgxZDkzZTU5ZjkxOTU2NGYyZDBmMThhOGE=
wODM3YTZjNTk3ZWUyY2E5MDdhNTRmZDU2Mg=3D=3D" target=3D"_blank">your account p=
age</a> to change your contact details, privacy settings, and other setting=
s.<br/>
                  <a href=3D"localhost:1333?u=3DNTJjN2MwZDI4YmMyM2ExNWEwMGR=
jN2U1YWExNzRmMzJmZGYyMTJmZTRmZTg0ZjdlZjEyOWYyMmM4MWE4MTI2Njg1NTIzMmY2Yzk0MT=
RkZDMwYjlmNmYzNjdkODRlNDZkMDc1YWM0NTRiZmFkNTE3NjEwMzUyMDg0N2I0ZTNhMWNmYWMwN=
GRiMGM4NjA5NGFjNmMwZDRlZDczZjRmMDhlOWM3ZTFjODFlZWM3NWNiNjgxZGVkNGIwYTBjZDY5=
MzM3NTYyYmZhMTY3NDhlNGVhZTNiZTA3Y2Y3ZmY4NDg5MTk2YTE2NTFjMmRiOTc2ZmU4OWU2NjY=
5ZGM5MzY5ODViMzNhMDdhNTFmNDRhNzZmYzNmYTA3ZmEwZmMxNzg0Mzc0MmYwMDY1NDEwZDJhNW=
Q1ZGIzOWY4OTg5NDU2OWM0MzQxZjRhOTRkNDYyNWM5ODU0NmZkMjI0NDBiYzc2YWEzZmUzNDgxN=
zljYWQyZTAzNDAyNzM3MzI0NWU4OWQzMjVjNWY1OTA1OWMzMWNiNDliYWIyZGZjNjZkYjI1Y2Iw=
NWM0NmEwM2U4YWIzNzUyNmVlZmI3MzQ5N2QzYTdmYjRmYjQzNDdjZDRhNGYzMjcwZjY4YjRhNzN=
jY2RjNTQwMzU3MTU4N2FkMjg0NGNiNzQ4NjhmYzE5ZmJmYzJkMjM1Y2VjNzljNzM4NmI0ZjEyMj=
MzNzk0ZGJjYTQxYzA3Y2ZmNGVjMzk2M2I5YTllMjA2NGQ5NTJlMzVmYjU3ODJmMWE3NjAwMWRkN=
2Y1NWUwYjQ0YzYwYTY1ODFjZGQ0ZGJmYjVlOTE0ZWExNWNkNmVhNzJhYWI1NGVmOTk0ZTZmYjBj=
ZDViZjA3MWM3MzFlYzQ3YWIyZDdjYzYxMTQyM2I3Yjg0MmJiZTk3MDc2YmFjODY2ZWU3NjBiM2Q=
wMzNmYTZjYjNlMmMwNTU5MjkyNmI3YjAzYmYxMWNhYWNhZjRhNmZlYzdmMjE1NjRiOGZmYjRjND=
BlYzNmOTQyMmRiZmI2ZmVkNDkwNDJjYTRmNDVhMDk5ZmQxM2NlYjRiNTFkZTA2ODBlMjQ0OTU5N=
2NjMjc0M2VkY2Q1ZmIwYmRlOWQ1NGI5MDI5YTM1MzIyMzIzMmViMWM2YzhkOTNkYWRhMTliMmVk=
ZjJiODI0ZDViZjM3OWNkNzA2NDgyNGExYTI3NjU2YTQyOWQzY2VlZWM1NDZjOTExOGUyNzM5NmM=
0MWZmNGFmOTY2MjkxMzllMjM5N2YyYTVmMzhiMDhlZGM4NDAzZWRkNjAzNjM4ZDE2NGEzY2JiZT=
dmYWQ1YWIxODVkMWI2ZTZiMjIwNDg1Zjg4NTNlYzFjYmM5ZTk4M2U1YTI3ZTBlNTYzM2U5NmQ5M=
zE4OWVmNzI2NWIwMGIwZjY3M2M3YjJlZjU3ZWEzZWFlZWI2M2ZjNzRhYzFiZjA0NThkM2VmNzZl=
ZDA2YTQ0YmM1OWJjNjdlZWNmYTBkMGU1NWRjZjlhYTNlMGU0NmQ1MjAwMDEyYmU1YWI4OWU5MzN=
iNmQwZGEzYTVkMGNmMjhmNGQyZTBiNTJhYjFmM2I1MzY1ZGYzOTNlNjNmYWNlZGUwYzRmYTFhNj=
U4OGM0OWRlZDM2NjE0NzAxMmVkYTFiYjNkMzI5MDQyYTYyZGUxNDdkZTgzZjQ4YjE0MDc0NjAyN=
mQyOTRhOTA5NDk0Njk5NzA2MDY5YzZlZmFlYmFhZDQ0Njg0NjBlYmJmNzU5NTZmYTk5N2VmOWNm=
ODY5NGIyZjVlZjYyMzgwOGMyMGQ4MGYwMDZkYjI0OTBkZDE4YjcwMjBiMzlkNDk5ZGVjNzBkYTA=
3MzE3NjQ3NTMxNGRlNDdlOGVjNzZjZTZkNTY0MzFiNzIwNTgzYWE5NDkwZDVlNDNmNTU2OWFkN2=
U1MmJiYzRjNDhmOTdkMWUwY2Y2M2ExNDQ2ZTlkM2QxMTA0N2RlM2JlZGVlMDVhZjlmNGIzMGQ2M=
2E5OTA1YzlkNGQzZGI3Zjk4YTBhMTIzMzFkZDI3OTFkNGE0YWQ5NzhiNTUxYTk3NWVlZjk5YmUw=
MmI1NDE3NTA1Y2ExNzI0OWE3OTg4ZmEyYmRiMWQxNzc3NzMyNTM1ZGVlN2RjNzA1NmI0MmQ5Yzd=
iMzYwN2VkYTkwNzRhZTdlZDVhMDNlYzQwOTY3ZDJkYjUzY2I0Zjg1MWVlOTBkODMxYTM3YzdlMm=
UxZjVjNzU2Njg5ODRhOWQwZDk3YmFjZTU0MjcxYWIyYTM4YzA5NjM3NWQ3OGZkZDdhZmY1ZWE3M=
TA5YWY0N2UyNmRlNGZkNjQ1OGQ1ZmRmNThmY2YxYmU5MTJkZTM3YWRjMDM4M2RiYjFkNDBiOWZk=
MWUzZTJiZDIxZjMzYjNkNzJkNjcyOTY4MWNiYjY5ZTk2ZGY2N2Q3ZmYyODIwZTgyOGVkMzVlN2M=
2OGM2MTdkYjMxOTQ4ZDQyZWQ3ZDk1ZGVlM2ZhZWY0YWUxODNiYWYxMDZhNDExMDdlMTVkMDY3Yj=
QxYWI0NTU0ZjhhZGJjYjE2ODdiYzY5ZDY1NWJlYjk4NzNhMTZjYmY4YTk0YWIxOTA1N2ZmMTM0M=
TU0NGMyYzQyNTkzZWUwNGMyZDE2NjFmNzlmZmVkMjZkOWZmZmJmNjkzMjg5ZTIyMGUxYWMxNjgx=
ZThhZmQ2ZWE1ZGJmZDI5YTBiNzRlOWU4NDg3NzBiZjg5ZmQ3NGE4OGI5NDM2MjExMmMyYzYwODU=
4YWY2ZTNhYTAwMDFhNWQ2ODZhYjZlYTYyOGE4YzRhZjA0MDVhMzFkODg3NzcyZjcwMDIyMWNlNT=
diZDBhMGVjOTRlOTg5NjAxODk5ZDA3ZjExMWQ5MWU4NmMzOGY0MGMwNDJmOWY5OWEyMTUzYzhmM=
TcxNDVhZDgzZDAwZWZmNGI1ZjEyZmMzNjZlZTc5N2NkZTczNDZjYjlkYWMzYjZhZmY1YzZhZmIw=
YzU5YzY3OWI=3D" target=3D"_blank">Meetup LLC</a>, POB 4668 #37895 NY NY USA=
 10163<br/>
                   Read our <a href=3D"localhost:1333?u=3DODQwMWMzNmY1NjBhZ=
mU5YmZiYzVmZTc4ZDQ3NTk4MDRiMDAzZDI0MmY5NzQyNjZiNzQxNGNjZjllNDUyZmIwNGY4MTM2=
YzZjYjE0M2QwMDMyYjE1YTIzZWI2M2JmMzBhYmQ3OGJiNDU1YTg5NzQ1YWM3OTliZDk4ZDRjZDd=
iM2ZiYzMzYzE5ODk0MGNmYmM1NTE0OTIxMzJlNjk0M2FlZTZjMGRkYWEzZjg0MDdjMGI0YzJmMj=
I3Y2U2ODAxODU5MGU3NTZkNjFmYWQyN2YzZWUxNGI1ODBmNzc2MTNmOWVjZTgwYTJiYjQzZGIzY=
Tc5N2VmOTgyM2U2M2Q1YjRjZmQ2OTQ2NDI1ZThiMTE4ZDhkOGQ2NDc2MzYwYjY2OWU2NzZlNzlm=
NWNlYWY4ZGQ1MDQ3OWE4ZjU0MGI3M2U4ZWZlMzhlNmUwYzc3ZDI1ZDQ3ZjM4NWU5YmY4MDEwN2M=
4YmJlYjQyYWNmOTFhOTJmZDcwMzZhODIzYjBkODQzYjhkMmI1NTRhNjNlMzY3ZjE4ZDczNTYwM2=
RhOGVhNDA2NGY5NGU0NjBmZWRhYjRmNTQxNmMwNDQwOTdjOTExYzVjNTVhMDI4ZTdjYWI3NDcyZ=
GE5MDUwMjY0ZWQ4ZmE4OTJmYWVhOGFmY2MwNzE2YmZkNTE3YjVlZTQzYWIxNWJmYWQwYzhmYjMz=
Y2I0ZWVkMzJjNTJhZGZmMWU1ZjBiYzRhNmI0ZTdlZWZlZmY4N2Y3ZWIwOTAzZTcyZTA2MGRhMDA=
wNGNjZTQxZGJmM2I1MmU1MmQ3OGJjYzZiYzM4NzU0ZjU2ZDBiZWY5MWNjMjFlNTJhYTVhMmVlZD=
Y1Njc3MThiYzY1YTEzMTY3YzlhNGVjZmI2YWRmZWE0ZDJmYjJlMmYzOTIxMzAxNGE0MWQxNWZlM=
jQ3MGZmMDRlYWQ0YzdiNmUxNGEyMWIzMTFjODdlYmJhN2M5YTQ3NGM1Y2QyOGY3NTgzNzY0ZTY4=
ZDM3YWM3MDQ1YTA0ZWZhZGVmMDVhMmViMTRmYjMxOTQ5NzU1ZjcyOGQyMDE3ZGIxODVlNjE0ZGF=
jZTg0ZGMxZjE3OTMwMWE4YjFhYWRmMDMyYWJjODYwZWFkOGI4YWZlMmIwZDVhNDNjMWY3NDM4Nm=
UyYTYwOTkxZDk3NDRmZDE0ZjJhNTI4ZDI0N2E1ZTNjMDcxMTUxOGNhZjIzNjk1ODA5OGI2NzNkM=
GZkMGUyZjU1NmU0MzllZTVjYjhhNDAxNTcxMmNkMDM5ODlhNTJmMzk3MzE4MzAxYTg4MjcyYzdk=
OWNhYTE3N2RhNGI4MGVjOTE4ZGE2ZDEzNDhkOGQ5NzFkMzA5MmUxZDhkODZkZmI2NTBiZmNkOWV=
lMGMwZDgzY2Y2OThhZGFhMDkwZjg2OWY4MjIxN2Q5NzJlZmNmYmMwNjIwNjIxMDdkMjZjYWQ1NT=
E3ODgyZjM2ODdjYzJhYjIwZTYzMDI3ZGI4NWU4YjI3NmM3NzkxZWQwMWQ1ODc1YzgxMjU0ODg4O=
TA2MDgxOWY1NWYwZWZkYWU3NDFiNjcxYTBiMGFjYjdhNzU0NDA0ZTFjNWM4YzFmMzBkYWIxZjZi=
YTk5ZTk2YmM2Y2QwZGJhZjE5NzIxMDVmYTcxMWQzNzM4ZTA4OTI5ZjBmMGRlMzllMzk2OWI1NmR=
iNDVhZjk1MGI0ZTc0NTllYjFlM2QzMTVjYWVmNjZjMTgyNTY5NWY4NzI2YjVlZmFiNjg5MWQxN2=
MwMjQ4OTdhNjkyMDgxNDVmYjA5MjFhNTJmNDllNTBjZTcyNzZjNDg0OWU2MGE4ZDllZDg1YWFiO=
TlkMTQzZTAzOTc5ODAxZjY5NDQyYTdmMjA1MzU3OWFjNjI0ZjE2MTIzZjIyNDgwZTAxZjRmMzM4=
ZjM0N2NjZTlhOTE0NjRkZDIwYTk3YmRkODk5MjE3NmY0YmUwOTFjZmJhZDY3ZjZhZjg0NjUxMTB=
mOTFhODhkNjVmNmVmNjNlZGRjZDIyZTk4NDIwM2I3MDYyODM3MmRmNDMzMmUzNDVjNjc0YzI1MT=
JiNDM5NjBiMzAwMjg1MWQ3OGU1YTVhYzg0MWNjYzdkZThjNmMzN2RhYjU4NGRlNzU0MTUyMTdmO=
DFkNzFjZjhhZmUyNzZjYmIzN2NhOTZiZGI0Y2FjNDk2YTMxYTc5MzNmYzI3M2QxOGQ1OGM2MWE2=
NzQ2N2NlNDJkMDg2MzRkMzU1ZTNkYjM2OTcxMzc0MDdjMmRkMzY2MTgwMGViMTk0Yzc4OWFlNzN=
mMmZjZDNhODUzMGU5NzQ4YjA5NGM3ZmYzZWE3ZGJiNjE0NmY1NmYwYmY5M2E0OGYxNDQ1ZTA1Mm=
I5ZTdmOGZhNDE2ZmNkOWNmYzZhMTJkOGI1OGU1MmNiZThhZjRkMTY5MmNiNTYyMjg4YmFlYzE1M=
jFlZmNlYmZkM2I2ZWM5YjI3ZmFlNzFjNzkzZmM3M2FiMDJkZGFkYTBlNGEyMzE3MTAyMmE3YjRi=
YTJlNGU5MmQxYzMyOTZhMmNlZTM4ZmYwOTMwNWRmNjE3OWE0OGEyMmRmZTlhYzJkMTJiY2IwMjY=
zOGVlNzNiMWRkNWZjNWMzMzNjYjExZmYwOTE5NWYyODdlM2VmYjI3MmIxZmVjODhkMTg2ODgwY2=
QyNTljYTUxOGI3ODZjMDM1NzQ4NzUxNGExNmRjZGEyYmIwYTkxYzkxNzRlMDk3ZmY1ZjQwYzA1M=
zgyMDMwMzc1YzdjMzUwMzBiMzU5NDg5YjFmZGU1ZThjNTg4YzQ2MGY4M2IwNzg5NWY0YTExNTQ4=
ZjNlZGIyMGIwZDhiMjQ2ODI1YmRhYTkyYWU2N2Q0YjQzYmZhMDI3OGNjN2MyOWY0Mzk4YzgzMDk=
5YjVjYTM0MmU4MzAzYzgyOTExZjM1YjYzMDA5M2JjYjJiZDQ1Y2NjMTQxNTBkMGM0YTYzZThjZT=
E1MzM2YmRmNmI1MTc1MTI2MmU4MWU2NjA3YTI0YzE2Yjg1YzI2ODg3YTg2N2M3ZDUyZDg5MzEz"=
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
