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
localhost:1333?u=3DZWY1NmY2OTAxMjRhMWMwNTExZTM2NmI5MGIyNWM1ZTBhZjFkMTgzZDY5=
MGNiYTM1NWU4N2NhYTlkNmNlNjlkMTdjNjQ1YmUwN2JmYTg0MTZmNjJjNmQ2MzA1Yjc2N2NiYmR=
kMWUwNGI3ZDM1MGZhOWI1NTBlYjVlYzJlOWRkZDAyOTJlZDhkMGM4YzRmY2Y2NGQ3ZmZhZjA1NT=
c1ODE5MzdhYjBmYzhiMTFkY2QxYWQ0NjU5OGVhZjk4NWM2NmViMjdkOGRiZGQ0YzEyZTZjMDhjZ=
DU4YTBiNjQyYzY1ZGIyNGI4MTljMTk1YWM3M2NhODRmZWU5MDZiZTM5YWRmZTQ3OTgyODQyZTU1=
NDdhOTQ1ZGRmYjA2MzQxMDY2NTRmZDU0MWFlN2I3OTM0ZWI4YTI0ZWRjYTdlNzc5YmUxNTcyYTg=
1YTY1OTVmNGU0NWU0YmM0MjJkMWQzYmE5OTA4ZWZlMTAzYWY1ZWY2NTFiNzVjMDk1OTE3MmZiOG=
EwYzkzYzM5N2NkYjZmZmI2NmQ1NWFiNmY0YjgxYmYzYjMwMWM1NDUyYzJjYzc2NThkYTEyODcxN=
DE4MDk3OGI5ZDg5OGY5MjI2Zjc3NjkyY2FmNmI4ZGVmODVmNDI1M2ZmZGM5YTUxZGE4YTUyM2Q2=
Nzc5Yjk2YjhjMmNlMjk0MTIyNzljNWU5NzY3NTFmYTllZmUyYjE2ODE4M2VhZmQ5ZTZmYmVhZDZ=
hMzJiYTBiOTdlMWUzN2VhMTA5OTEyOWE3YmNlMjg2NGVlNjU0MTJkZTg5ODQ3NGRlNzAwZWRkND=
ViOGE0NGU3MDQ3NTcyYzdlZjc2MTA1ZGU2ODA4Yzg0YTRmMjBiY2FiYjAyOWM0OThmYWE0NjFhZ=
jJmMGIxMzliMjdkZGU1ODA3N2YzZWMzM2VjNjQ4NTE2Y2MwOTRhNDIyMDkwMzhjZDYxOThhM2Qx=
ZjBiYWRhNzQxMzEwMmMxMzlkMmM4MWRmZDk4YWUyY2U4ZTc3NzYxYWQ4MDFhMDQwOWUyZjdlODJ=
kNmQ1MjhlNzFlM2E2Y2M1ZDU2MmRkOWVlMDZmZGIzNDZkMmQ3NWM4NDhmMzY2OTQwZDU5MDA5OT=
NkZjEyNDdhOTI1NGFiZDA1ZjEzZDg5MWRmOTM5YjRmMTFmOTNmZTVkYTRlZTYwMzY0Zjg5NjdhO=
WVjZmY3YzYzYmYxOGM5MjQ0YjU1Y2RhNmMyNTNhZDU0ODY0OGU4Mzk2NDk5ODBkOTM5MzhlY2Ez=
NTI0ZmFjMWZkNTMyMDg5Y2ViODMyZWMzODZiYmRmYjM3MTZmZThhZTQwYTFmZDY1ZDFhZjZkYjE=
3NDI4MjI5MjRhMGYzMDE2YThkYWFjYmFkMGRiYTkyZjA0OTQwM2JmYWI4YjgwOGEzNjExZWJjMz=
I3NGFiYjY4NTcxZmRlZjRlNmJmOTU3ODIxNGU3NDY1YTI5OTNiZGUyZTIxZWNlODVkMjRiM2NjZ=
Tk1NjU0NTkyZTM1ZDQ1MDRjNzA5MmRiN2FjNTM4ZTA3YWQ5MzVhYmMwODU1MTdkY2QzOWIxZjM3=
NzQzNDY2ODRhNTEwNGE5NGZlYTBiZjc0YzM0NWZjZDc5ZTQwN2I1YTc4MGJhZmZhMWQ0MzAyMTE=
wN2E3MGMzMTUxMTE0YTc0ODI2NjUzY2M0ZGQ3MjIzZWY3YzdjNzZjMDE2MWNkOGYzZjEzNGJhYj=
JlZmFmZjE0MzJjOGNhZDg5NGJkY2NjZTdmYzdlYjM5NjVhYjQyZjMyYmZiNGY3MTJjYzU5Yzg0Z=
WQ1MjE5OWMwYmVlMmE4ZGI0OTkzMTM4YjYzYmJjNjFmMDVmMmNiYTNkYjFiNzkyNTgzOTk5Zjlk=
MzViZDAwNjVhNDZiOWIwZjU0MWVhZWU1ZTRiM2Q5NTdmNjBlYTM1NzFhMTRiYzhkYTkxNTJkZDB=
mOGUxZDkxMjI4OGU3MGI1ZjVmMjQxNDBhOTlhZDkzMGM2ZjFjNGQwZTYxZjM0MjdhOTAyMzRjZW=
VlNzlmOTI3Y2Y0MDZjNDNlN2E1NDBiZjQzMTg4MWNiZjg5N2Q4MzA4MTE5ZjA1Yjg4YjRkNWRhZ=
TliZGQ0MmE1MGU1ZGQxZDNjNzRhYTYxZjc5M2RkODJmMDYzMWM3YTJlMWJiMmIxOWNiMjNlYTZh=
YWY3OGEwN2U1ZTY5MTc1ZWY4YTc5YTYxZWE5OTY5NTRjZjY5OGIyMGRiYmEzOWYwNzRmNDlhMmN=
kM2EyNzEyODllODNiNGJkYTJlMGY2Nzg4YzU2MDZhZTE4NzQyMjI3MGMzYjhiY2IyYjc0YzgxMz=
M4ZWNmOTA1MmI4Y2UxMWZlNWIwZmY3NzRmYzUxZTcwNDY5MWZkZDJhZTNmMTcwYzA4MjM0MDkzM=
ThmOWMzNzUzNDVmOWZlMjk5NzAzNTViMWZhNTY3YWIyODQ3ZjBlN2FlMWI5MzcyZDc1YzhjNGIx=
Zjc3ODNkM2ZjZGI4ZTUwM2ViZDI3YTkwNDllNTBmZWMwNGFkNDQ3OGYxZDZlNGZkOWI4ZDJlYzF=
lZDNlZGZhZTAzODA3YjlkMzc1M2EwY2VlMGYzZjk1OWMzMDcwZDgxZTc4M2E0YzQ1MjIxMjg1Nz=
MxMGM0Y2QzZmM3MDZiMGI5MTIwYzE1MjJkOGExMTBlNmM1NGI4ODc2ZWQ1MWI1MGI1YTk1OTM1M=
jc4MjM3ODZiM2NiODNkMzJiNmNjZGFkMmI5YzBmNDM2NDhmNGYxYzhkZWY4ODcyNTMzNQ=3D=3D=
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
          <a href=3D"localhost:1333?u=3DZThiOTRkOGIxNzg3MzFkYjVmOWM3ZmZjNDh=
jY2E1NWQ1Mjc1ZmZkNjc4YjY0ZTJlOWMwZjU4NmYxNjU1ZDg2NmVkODk5NDUwMDhmNTRiYTE3Ym=
I3YTI0ZmFhODkxY2U5YjA0OGQ3NTA0NWQ5YzA3MjEwOThjODJiYjE2ODIwYzc2NDJjZTk1NDUzM=
zI0ZjI3MDc2NzI3OGNkMGRiZDMxMzNkMjdlZjNlOTViYjJiZjYwM2I1Mjc3MDE5OGVlYjQ0YzVj=
MTNhYzc0MjYzYzc2NmM4M2Y0ZWNhOWIwMTdiNDJlZDg5ODkzNzc3MThkNjY3MGIwMjljNDhkMmU=
5MGM3ODA0ZDJiMTkyZDQwZDUyY2U2YTUzYTRkMzQ2ZjY1M2YyZmMzYWZlZTFiY2M4YTY5ZWM2Yj=
MxZDRmZGZkZTEwOGFmMTYzZDNjZTcyMzUxYzAyOTA0ODhhZjY5MDYzMTg2ZDI2NDVkZjA0ZDY3N=
zJmMzNkMTk0NDg1NDFkMjhjOGMyOGQ5NTZiNTE2YjUxYjAyNTQwMWJhZWE5NmY2OTIyYTlkZWVk=
MjA3Njg2OWQwZDQ0YzJkMGZhODNiYjQyMWQ3M2UwZDkyMmEzYWU0MzYxZmJhZWUyZDFkYWYxNGZ=
jNzFhNDBjYzkwY2RlMmZhZjFmYmQzNDU3ZTdkNzQzZjg5MDY0MDYwZGI4OGNhMTA3NzIyNmNkMj=
k4ZWUxMjBhZTRkNzQ0MzAzMmFlNDllOGRiM2U0NDc5N2ZhYTI2N2MzOWIyZDRjOGZmNTU3NjNiZ=
GVlZjhiN2ZmODVhOGQ4ZmUyM2MzOWM4ZWU5OTlkYTIxNjdiYTNkMmUyMjY3ZDUyZTBjYWQ5YTBj=
MTMyMzQ2ODQxMDA4MWY1MTgwZGJlZDFmNzYzYTMyNmMwMzI2ZDk4ZWM0Y2M0YmQ2NmE2YTRiYTI=
yZDMxMDUyNTY4NjVhN2ZiNzg3MTcyZmRiYjM5YjBmMWNhOGY0MzY4MTAwZGIwOTc1ZTFiNTJiMz=
A1NzljZjA4Y2YxNmM1MmMyNjg5ODQyZDM3MWM1YzAwODQwMTY5NTcwNmI2OWFiOWY4MTUyY2JiN=
DA3MmU2MzViZTMxOGNjNGI5ODQzYzM5ZjdlMTU0ZGVmMjYwMTkwMGJjNzJmMjNjMWM1YmJjZDYw=
ODZjZGY3M2QxZjMzMjZlNGRmMWRjMDMyYzY4NTFmZTEyYzMwOTk1MTUwZjc5NmQxMjg5YmU4YmN=
jZDY2MDJiZDA3OWI0ZWI0NWQ5YTk2NTk3NWY4M2Y4YzA0Y2ZiMjlhN2NlNWViNGE3ZDFiNDgzZG=
RlZDc1ZDIwY2RiNTFjNTI2ZGE3YjM4OGIzNWU2ZDdlYmIzZjEzYWZjZWJhMWRkMWIyNGExZmQ4N=
jc4NDQwNDY5OGJhMTQzYTBhY2RlYmNhODgyOTIxMzNhM2E2Y2JkOGQyNjMyYmQ1MGU3OWVhMTkw=
MGNlMzVjMWY0NjZjM2E0M2ZjYThiMTlkYjk1N2I0ZGY2NzhkYmU1YzU2YjY1OTkyNDA2ZjUyMWN=
lMTFlZmUwMmFjMzhjOWU5NjhmNDdiNTM2ODMzNzRjOGJjYjlhMGEwYjIzMmEyNDA0ZGIxZTE0Nj=
k0NGZmZmI3MTkzZjViMjI4MjgzODdlMmRmNWIzNGNhY2E4MDE4ZTg3ZWNiZWMxMWJmNGJhYzFjM=
jNmOWRmOTcxMzgzMjJhNWFmYzhlYTU4ZGRlN2JkYjFhNDdkZjUyNDk3MDI0ZmNjNjg1MmE4YmUw=
NmRkMDZmMmE3OTI2M2M4ZTIxOWM2MzA1YTNiZjBlNjlmODIyMWYyMDFkYWFhNzAzOTBmZjBiNGJ=
lZWNjMThhOTM1MWI3NTJlYzEzMDFiODY1MGIxYzk4MGU5ZDRlYmIxZTU3MzJiYTQwYWY5YTZjZG=
I4YjliNDRjODM1YzMzMGJkZThhNWM3Mzg3OWYwMWU5Yjc4ZWVlYWMyZDY4ZDk3ZmJkNzgzMTdlM=
zRlMzlhYzJkZDkyN2VhM2IzYjZlMzg4OTgxYWEzYjUxYWY1MTBkZGJjMGZhY2IwYWE1OGY0NDA1=
NzM0Mzc1MjUwYzdhMjU1NjdmZDE2MWJkODIxMjAwYjZhZTczMTFiYmRmZjFjMDUyNmQ0NGUwZGJ=
kYmUzMGUxMGI3ZjkxNTJhY2ZlODNjNmE0NWEyZmQ2ZWM3NDU0ZjlmZmJhZjZhZGY3YTE2NDgzZG=
I1NGQ2MWNkYjg2ZmVhNmM1ZjMzMzRlZTEwNzY3NGU4YzY5NDc3NTQ5OTQwMGZiY2I1YjgxZjE0M=
zU4MmEyYTk3YTI1NTAxNWU1YjNkYjMzZDRkNDY3OGIxYWM2NjVmZTY1ODk2MGM1YjUxZDMwMzdh=
NjNmYzI2OWNlMWFiMGYxYWIwY2JhNzM2ZGRjNTBmYjQxNDc5YTEzODU0MjQ1ODdmMGMwMmE4YmJ=
hNzI5MjVkOThkZmY3ZTA1NzEwZGNmMTViYWU4YmMyZjA1NDc0OWZhNjZjMjcxNWZmMGNlMzBiMD=
kzM2ExOTRkZDBmZGI5MTQ1ZDZkNGY1NDgzOTlhNTRkODc2MmEzZWE=3D" style=3D"color:#e=
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
                      <a href=3D"localhost:1333?u=3DY2U3YzI2YTM1MzgyMDYzMWE=
3OGQwYjUxOGZmZGM4NmFiNGZiNGYxOGJmNmVhMjc2MzkyMTc2ODlkOTg2MTc4MDAwNWJjOTRkZW=
UwMzIzNTQ2NDIzMWY5YTY2OGYzYzQ0MzVkNGM1OGM4N2E2ZTE2ZDc1Mjc4MmU5ZDgxOTUxNWQ4Y=
WVhN2E0OWEwNDY2NDI3YTM1ZWY1NzVjN2M5NTZjMTA3Nzg5NDcxNWI0ZTA5OWY3NmQ4YjllYjkx=
NmUxNzJjNGJkYzEyODhiYTRkYzQ1YTMwNDY4N2I5NGUxNWJiMzkzOTUyZGZjMTQwYmFhMDBkMzA=
1MjIxMTAzZTFhMGZiNTdjYjA0Y2VlZDk0ZTA0NWNmODZkOTlhMGJlMjA5MzQ4YTEzN2RmYWQ2OD=
QwNDc1NmJjNTgwYjc1NmQ0ZDE1YTAyODU4OTczNWRlZWZhMDM4ZTJhMjFiZDliNGJmNmEzZDRjO=
DUzZWFkNDUyY2I3NDliNDI0ZWIxNzMxMDcwNThlNTJkZGZiYzFkMDFjOTI5YmI1OTc3ZGJlYWRl=
OTFiZTExMGVmZTY3MDYwMDk1OWQyODY5MTZlZmQ2N2JjY2Y4N2U3N2RmNmViODBjZTRhMzc4YTQ=
2ZTg4MjkzY2E4YTJjMmIzMmY1YmI3ZmVhMjNmOGZhYjdiMWQwYzBjMDViNDk5YTEwNzIzOGRmNG=
JjYTc1ZTZhYTRiMWYwNmUwMTJhMzg1M2U0NjdlYTBjNmY2NTMzZGI4ZDM5MzBmMGNhNzhmZWYwN=
DMyYzEwYzFiZjc3MjFkNGU3MTE3ZTE3ZGVkZGNjOTg1NzY1NDFjZDUwYTBlMTk3ZTNiNDI2MDMx=
ZTZlMDhlYzc5NDc3Zjc0ODg2YmJmZTZjNDAxZjFmZTg0ZDY3OThlNjFlMWIxMjA2ZDIyZjNjNWV=
lNmRkMmE0OWU3OTU5MGMzNjNjYmZlMDE3YzUzYmI0OWEyOWViN2NlZTA0ZjE5NjJkNjViOWY4ZD=
AyODI2MDQ0MWUwOWExZmEyZmVlMmUyYWZiOThhMTQ1MmRlZGRlZjcyOGNlMGE0NGM1ODNiM2E2Y=
TFkYmQwY2E4YTViMTMxNWMyNWIyMjMxYTY1OWI4MDI4Mzg4ODlhZDc2OTBkZWYzMjc0MDIxN2Fm=
ZDA1ODY4N2MxOTUzNDg1ZTFjYTYzZDg2ZTJhNTVlNjI4YTBhMzI1NTM0ZTAzNzA3YjA5NTFkMzE=
3MDIxNGZhNWNmMmVkMTY5ZjJkNDAxNGNjODViNTY1NDMzMTBjZWIyN2JmMTlhMzJmNzljYWVmND=
JmODNiZmI5NjdmYmY5NzJmZDU2NjBiYTM0MTE1ZTA0Nzc1MDM5ZGY0MDJiODBjZDBjMzE2OTgwN=
jRmMjVlNTU3NjViMjdkODM1NmI4N2Y0M2VhZGQ1ODQyZWE2NmM5NTYwYzQ0M2RmMmJmMzQ5ZTJl=
OGYzYThmYjdmNzc5YTcxZGQ2ZGRmZjU1NDg2M2FiMGUyMDg5ZDI0OTFmMThlNmYxN2EyNTUxZjl=
lYzVmMjA5YWM4YWU5ZTQ5OWRjMTc1YTQ1YzUyYjJlNjljMTA2NzZkZmFlYTRiNjFmZDg2YzQ1Y2=
I0MWQ1NWRjNmVkYmNjZTFhOTk2MzdlMmM5YWQzM2Y0YWNkNWY3ZWUxZDE2ZDA5YWI5MTY5NGVjZ=
DVhNTlhYmM3MWUyMmI0MjE5NzUzMjcwNTI2MmJiYWI3ZWE1MzExYWVkZTFjMWZiODc5Y2VmNjRh=
YTk5NzE5MjA3MGY5ZGZkMTE3OWIwNDM1YzFjODI0MWFjNzY3M2VlYTg0MGI2YzNkY2M1NGU1NmV=
mMDNjMWU0NzNkMTNiN2IwYWM2NjVmM2YwMTZmMjMzMDAwMTU5MmJhMjZkNGQzYWQ5MzQ4Y2U1Mj=
gwMDcwYjgyZjY4NGY3NDNjNjliMGJlYmFlNjRiYjlmYThkNGYwNTM0ZjU2NDRkMmY2ZTNkNzU5N=
TI2NTA0MjA3NjBiMzdjZTE1OGUwODY3OTE0ZTJhMWY4OTI3NmQzNDY0MDBmNjAwN2JiMzk1ODU1=
MTlhM2U5NDU0NWQyZjQ2MzFiOTI3MWZiYWEzOGU3NDk4YWFmMzE5MjYzNzljNGUxMzBhZTAyMmM=
5YTlhYjgzZDEwZjdhZGUzOWY1MzY2NzJmZWE2NzlhMGE4MTAwMzA2NGYyNjViMWZjNTRiZWZlZD=
YwMTY3ODk2NDJjNTJmYTUxZjc0MmViMDYwY2JjYWViZTY4ZmUzOGU3NmU5ZmNjNDUwZWQ2NjMyY=
mMwOGZhYTliNmVkM2NjMDU5MDM1M2ZhODk4MTBlNDExZTUwMWQyMDBmM2FkNDU5NGVjY2NjNTBk=
NDkxYjg3NDYyNTFhMGFkNzhlM2JhMGRiNDcyNmZmN2U0OTRiOTliZTg5YzhhOWNiYzMzNzg2MTg=
4NjQxZTQ5OGE0NjIyNGE5ZTJlZDg5NmM2NTMwODM3ZDk5Yjk0MjA3MzE3MmJlNTUyMzMwOGNmMD=
g0ZjIwY2FmNjJiNTZmOGZhMjVkZTBjZmJhMDAyM2NiN2E1OGQ0YmEzNjAxYmUxMzM3NGU2MjkxY=
zE2ZDk3NDRhNDI4MTg1NjU0MmI2MGRiMjhmODc5MWY3N2ZhOWI1MzMxYzg0ZTUxYTZiOTkwZWVi=
ZDMxZDRkZTVjNmYzOTg2ZDU0ZjNhYjNlNTQ4NTI3NDc0MWI0YWFjOWUzNWJiMjU4MmU0NDhhNWF=
iNWNlYzQ1ZWE5YjRmMDhh" target=3D"_blank">
                        <img src=3D"https://appboy-images.com/appboy/commun=
ication/assets/image_assets/images/6131205644145f38056fdd69/original.png?16=
30609494" alt=3D"Add to calendar"/>
                      </a>
                    </td>
                    <td>
                      <p style=3D"color:#57646c;font-size:14px;margin:0;fon=
t-family:arial,sans-serif">
                        <a style=3D"color:#57646c;text-decoration:none" hre=
f=3D"localhost:1333?u=3DYTQxOTNhNjRmYjRjY2ZhMjc4YWU3NTMzNmE5MDExOGZiZDRjMDM=
wODM5ZTlhNDUyNDkwYWE2YjExMzk3ZWJlNjFhMDQ3YjZkMWVlZGVhOTUzYjIyZjk1YzZjYzU1NW=
ZjZGU3YzlkMzVjZDM5NGU2MjJmMjIwMWQ4Y2UxZWJkMzc4ODdlNzkzNGUyNDExMzk3ODRhZjJkM=
WZkZTM5MmEwMmRmNTM3M2M4MmJhMDdkNzc2M2RjNTg3ZTcyYzhjYmUwNWE5MDMwNzQxMTE3ODVk=
ZmFiNjk3ZjY2MmU4M2JiZDZiZWJiOWZhMjQ2ZWU1YjFiYTUyOGRkYzFlMTIwOTExZTc2MTRjOWJ=
hYzAyNTA4NzA4ODg0ZTFkNmM2ZjFkYzRjNzNhZDBlZWNmNTU2YzhiZTkxZDExYjg3ZDNjMjU1ZT=
cxY2FmOGFlNjZkNDZkZjQyMjNjMzE3NjUwMDNhZmM3ZTM1OWJlNWNmZWI1OTczNmE1ZGVhZDU5N=
TUwMzQyNGZhNjRjZTM1MGY1YmMxYjU1MjkxNTA2NGZmZjJkOGZlZmUwZjE4ZDMwMDBhMmJjYjY3=
ODBhYzUyOTczZGY2NGM0MzkzYzdlMjE3ZTk1ZTZhODE3NzEwMjVhMTU3ZTFiYmY4OWI5MDNmNWJ=
hYmFkODE4MjhlMTFiOWY3ODIzOGE4YTczMjVkZDgzNWY0ZTAwYWZlODlmYjJjMjE2MjIxNDE5OD=
JmNzVmYTY3MjBlNWMxMzdjYTVmNDdiZTZmYTE1NzM1Njc4OGFiNWFiYTdjY2FmMTZmMDU3MzQ5Z=
ThkZDAzZjM4ZmM0NjFiN2U0OGE3ZDlkY2I2OWFkY2Q2NTUwOTMyNTU0YTlkYzgyOTNhMGFiZmJh=
YTNlOTRlZmRjYjc5MDdkNmNiNDg4YjU4NDk0MDBlNWE0MzhkOTY3YWIzNDJiZGQ3YzAxMzYzNGU=
wYzJhZWNkNTA1YzA4ZDMyMDc5Yzc2ZjBiNzk2NDVjYjVmZGU4YTcwYmM1MWU4N2EwMDI5MTM5MT=
dmY2Q4MmE5OTVlMTZiMjgwNzI0MDViMWM4YTQwMTE3YWQxNGM2YWMxYTU1ZTQ5NDAwNzExZTFlN=
DIxYTdlYTUwNGYxMmVmZGNiZGQxMzEyYzAzMjcxNDQ5NjZkYTRjNjBmOGQ0ZmViNzZmNTU1ZWJk=
ZWRiOWZhNzY2OWRlYThlOWVlZjUwMDY5MmZmMTY5YTdmM2FmMmQ4Zjc5ZjBhNWM0OWE3YjI4OWZ=
hMWMxZDVhNzc5Yjc0OWUxYWU5MTBiMDExYjk3M2YyYjhjOTE1ZjYzMTIxYzdiZTQwNTE2MDNlNj=
Y1MWEyOTczNzUwZGIxMDRlNDY4Yjg2YzIwY2M4MTA5NmZlNWJkMjc1MTgzOGI4YTEyNzZmYmEwN=
2Q3MmFhNTBiMWMzODEzYzkzZDg4NWViNTc4ZDdmNWUwZDg5MWMyZDlhNmZhZGQxYjlhZGNkNGNi=
YjViYTEyODVjZDhjNGMwOWY5ZGU4YjAwMTg5OWI0MDJmYzI3NDVmZTM0MTk5NWJmMDczOTJhNTk=
4NjYzYTVkZGU0ZWJlNTkyYjQ5NDgyNTc1YjRiZjQ4ODRiNWUwNWU0NmRlOGI5ZDA1OGFlM2M5NT=
cxY2I3MzRiZmQyZDY4ODBjOTI5NWI4ZjUzYzRlOGI2Njk2MDhkNTkxZGJkMzgzNDQ2MDM3NjYyN=
zM1NGZiMGRkODE0Yzc3NDczZTJhNGZjM2EyMWNiNWVlNDNkYTdiYzE4ODg4YTQ4NzEzMjMyNGE0=
OWZiMWNjOTMzOGM0ZmFkMTIwYWM4M2FmZWM2ODQ1NzVmOTRmMjkyYWZmNjJiNjU1ZTMyZjYyNzM=
4ZGJkYTFiNjE4YmNlN2ZlOGVjNzNhNTRlZjk1YzMwMDJkMWRkZjgwNjE3NGFlMzFkYmEzOWZlZD=
k2OTYwYTI3OWRjNGJmY2ZlNjc4OTJlNzM0YzcxY2M4NzdmMTU0OTk4OTA0NDQwNzJjNDk1OTdlZ=
TU3ZWUwMWQ3NTA5ZjYyNDdmMDk2MDVlNDNiYWVhYmI5NzZlM2E3NDNkZmYyMWMzZTg5ZTJlODRh=
NzI0ZTc3NDA2ZmM5YTcxYmU5NGE3NjM4YzhkMmE2ODQwZTRjOGI1ZDVmMWVkNWMyZmVmMjA5M2U=
1OTcyMWQyYWYzMzhjYzQ5MDRmZmZkYjY2ZWJiZWFlNGJjYTMyMTc5YWMwMmEwNzllZTc5MTYzOG=
VjY2RlMmVkYTAzMzZmM2NhMzQwNTAxMDcyODExMjk5NDI1OTAzZmMzZmQ1MmMzNWViNDVkMzAwM=
TdkMDA0YWJiMDdjOGFhZmM3OGM3ODljZDAxOTU2YWExODllMzhmNTBjN2FmNzYxMWRhMGU1ZTZi=
ZjdkMWIxZjIyZTJjMWFmOTc5MzMwNDExNzJkMTJmN2FiYjYxZjhkZTM3ODYzYjFmNGM2ZmY1ZGN=
lMzc0MjdkYzI2YWNlMzlkMGQ2NjBkOGE1NWJhOGNjNTdhOGJkYWU1OTU1NThhM2QyMmFkMGQyMj=
NhNTI5YjA2MDBkYzdiNmZlYWE2MTI3ZjlhYzhjNmI0ZjRiYTQxZTEwYjg4ZTNmNDkwY2FjZjk4M=
2ZhYWExMDJiNTcxMjE5MGJhYjgxNzQzZGY1MDY1NzhlM2RhNzhiNjFjYWUyYTY2MjUxN2I4Yzg4=
NGI0ZDE5ZDAzNDk5MTQwMWIxOGU5YmFhNGIyZmMxNDY5MmE1YTVhMWU1Y2RjYzUyYTFiOTdjMw=
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
                        <div><a href=3D"localhost:1333?u=3DOGIwZmRiNTAwMjFi=
M2M5MjgxZWQ0ZDBmZWU1MjBiYjhmYjEwZjk1MjMxMjczMDhiM2M5NTJhODUxZTFjZmZkNGE0MTk=
4MWI4NDRlY2RkNzI5YTQzMzEwMjhiYjc5MmViYjZmNzc0MGQ2MDdkZmY0MDIwNDA4ZjdiNWEwZj=
NiZDhlZGJiOTVjN2VkODk1ZTYwNDdkYTI1MDBlOWVlYzhhZGRmNTNjMWJlMDkzYzgyZjQyZGQ4O=
TMzYWJlYjI0YzRhYWMwM2UzY2FmOWRmMWIxMGFjNGNlODI5ZjEwMDVmNDg4YjExN2U0YzUzOWM0=
YTliM2QwY2M1ZGNjYjc0Mzc0ZDFmYmE0YjZlMmUwZWU5ZWU3NjZmMWJmNTc0M2YxNDExYTNiNDE=
1ZWVhNWY5MzQ5ZjVkMTc1OGVlNjk0ZWRkZThhY2E5NTY4YzNjOWQ2ZjhjMTUxM2RiMGM4MzIyMD=
ZmODA1YWY2YjQ1NTZjMWJhYzVmYjU3MjlhZjJjMTkyZTM3YTdjY2RkYjQ1ZjI5NTg5MzgwOGRlY=
zY4MTlmODJjNjgzNjE2ZGU5NjM1Y2VmZjIxYjdjNDYzNTU4ZDEzNDQzNGRlNzMyMTg0NWYzNTRk=
NDdmZTRjYTFmZmE0ZDA1NzNhNjU1MDA0NWM5Nzc4YmI2MmE2MThiZGVmMDAzMGQzZTRjMGE5YzQ=
4YTExMzBjNmY0M2EzYzA0ODA0MWYxYjEyOTFjNzFkYThiYmE0OWE2YTY1MDA3YTliMWZiOGQzZj=
MwOTc4ZTUzNWUzYTU3Y2I0NjRlYTkzZWE2ODMzZWZiYWYyYWY2YzZlYTA0ZGNkOTExZTk4YTNkN=
zg1NTE4M2E3YWU4NzZlZjdjMWQ4NzJjNGU3MWJlNGRkNmQ3ZjBlNGEzNDEzMTk4M2I4ZWI3N2Fl=
YWVkMWFjNjU0ZDUwMzRmYzhmMmJmZGQ4NTJhMzVlMzE1NWI3NTM3MThiMWIwNDVkMzY1MWRhMDk=
5YTViMTI0YTdkNjBiZTZlYWJhODBkZDAzOGQ2ZGJjMzNhZTg1ZGMxZmE5NjUyYTRiNjFkZWQzZD=
M5ZDMyYmZkOThmZTI4ZDc3NTZjYzk4OGE3ODNmZTBmMDYwMzY1ZDBlZTA0MTc1ZTEwZDBkNDYzM=
jdiM2I4NjdkM2QyMDBiYWZmNjc2MzZjODVhY2JjNThlMzEwMjhkOWNhZWNmYmRlMTAzYjAwODVl=
M2JkMGQ3OGZlMjUwMTZjMzJkMmUwZTdlNzRiNjk3NjdlNWI4NGM3ZDFkYTA0ZjIyNDE4NDlkNjh=
mYjIwN2Q5Y2M3MWY5NzExNGQzZjQ3MjJiZDI2OWFiZmRkOTgyNTMzZDQ0MWNmODg5M2Y2M2MyZT=
ExNjk3ZTVkNGIxMTNjOWYzOTIwNGVmMjBiMjEzOGY4YmU5YjgyYTVhZjkzMTcxNDg0OWQ2MWE2M=
DU0ZWUxMzRjZjk1MmE2MzE0ZTU4ZjAxNmJhYmM4YTZjZGM5MDBlMTU5ZGVjNjBhZGY3ZDA1Zjc1=
NGM3ZjFkYTg1NGI4NDg2MWVhMDQ0YWNhNDE2NjE4YmY0MzEzYTU5YjAzZTNlZjJlZGZlYmNhZTc=
5MGRjMTNiM2ZkZGY4NTYxNDliNjA0OWFiYTY0NDQ0MThlNTFjZTJjMWU5NzQ4MTI4MDFjZDE2OT=
AxMWJiZGRjM2QyODQ5YmVjN2YwM2ZmZWMyOTdkOWRhZmI4OGExZTU5NTE2ZDhkNTEwYjE2ODAyZ=
GI0N2MzOWRlNWE1ODk3NjkxYjQ1MzZhMWZmNWI1OWZhZGRjNTViNzY2ZmZjNzA5MWRhYjUwYzc1=
NzRiYzQ0ODgwOWM3N2FhNmRkZWU2NjhkOWVkMjIxOWZhM2QwMTFiMWZiZGI2M2U3ZTUwOGZjZTY=
4NDEwNjJmOGFmZDYwOWY2YTc2ZDEzMzkxZGJiZGEzOWQxZjQ1NjFkMmRhOTAxNDI2ZDgxODg0Nz=
FiYTRiZTFmMGQ0YTlmMGYyMjZmNzk4YzFjOTk0OTJmN2I0MTY2ZWY1ODc2OTlhMDc5ZmVlZDlmM=
TI0OGM1ZWUwNDg1MjhmNzViNzQ4YmUzODMyNzFiNjQ3Yjk2NWQ5NzllZDQxMmE3Yjk1N2E0MTI4=
MTY0NGE5YTBlMDVlYTZmNzI1MzJmOThlZWZiNzZjNjM2OTA4YTM2ZWZiMWFmMGQ0NmQwMTBmNWZ=
iNzg5MjM1ZWEwYmFkZThmNmU0NTQ0ZjgxMjU1MGU5YmI0NjM3YjVhNjA2NTVkNmQwMDlhN2Y0M2=
Q4MWIwMmE4Nzk4ZGU4MDg1YTZhNmNhMzZhZTFiNzViYTAyZjcwNjUyNjEyM2E2ZTliYzljZTQ3Y=
WE1ZDFkYzMzMjlkZjNmZTljZDA4NWUyYjI5MmI1ZmIwN2I1YzI5YTA0Y2ZlMjhmMTJkM2Q2ZTI2=
MTlmYzFkODg1YzYwMTM2NGE0OWJhNGFiNTNmNTAxNzJhMGE5ODhkNzczNWFmNGExODgzYTY1NzV=
kNjY0NjVlYjcyYzA0NGQ5Y2NmZmFlYTJhNDZjOGI5Mzg1ZWQyN2EyNjAwNjY3NzYwMDk1OGIzM2=
NhZjc4YmM0MjJmZjIyMjZkNGQwNGE1MzVhNDk1MDI0ZWE1M2Y5YTE2OWZjODJiZDUyYTNmODRjY=
2U0YWQ1OTMxOGZkNDU5MWE2ZDU3MmRiZjQ3MDg4OGQxNmFkMTBjMDhjYTE3NDIwZTUyZjc3NzY0=
MjY3ZTY2M2RkMTg2MWNiMWE3NTIwYTdlNzg3NWQ5ZDlkZTg5M2RmMjkwM2EyMTAzOWE2YzVjODd=
jOTVkODFkYjlhZmM3NTZmYjdmODNlYzg5NjZhYjYyM2U3OTcxYjkyZTdmOWYzYzE2MGY3ZTVhZm=
UxNzNhNzQ1NDhlOTVjNTRmMzlhNjBmNmQ=3D" target=3D"_blank"><strong>RSVP today<=
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
                              <a href=3D"localhost:1333?u=3DOTA0NTZmMzUwYmM=
5NTJiMzRkMzliZTgyYmY2YzYxMWU4YWEwMjE1N2NmMTQ1MzE0NTUzZjg2NjY4NmIzZjg4Y2YwOD=
M0NTQyZDM3MjA5OGZkNGQ4M2UyODU4ODJlNzRmMzlmMDc4MWFkN2E5OGRmODkwOGMzZTBiMDI1Z=
jZhYWZhZjhkNzk1ZDAwYzQ4NTA2Yjg2ZWFiZDAxMzE0NmVlODk4OWRiYzY0YThjOGFiYTlhOTdl=
OGM0YWY0ZTllNjZiMjEyZjVhMzhkY2ExYzg0NTQzN2MwYjViYjI4YmI5ZjViYjZlN2NhNDg0NWY=
2NWE0OTYyNDdkZjM3YmE4NjU1NWEwYjIzMzc5N2MxNmRiOTQyZDY0ZDJlYjU2ZWU4Y2IxZWRmMD=
A4N2JiZWEwN2U1NDc3MjYxMmM4NTRhYjMwZDc4MzUyZWFlY2E2NWQ5NGQ2ZWI1ZDcyZTY3NTkwO=
GIzOGFmZmIyMWZhNDkxNDY5ZjBlNWIzMDRhZGNjZTIwNjY4MjFjNGFmOGM1NDQzMGE5Nzc2YWUx=
ZGNmODQzODU1MWE1MjRhY2VjNWRhNTY2MDM1ZDE2OTAzY2U1ODA3NjFlMzdhYzVlZDUzOTVjYzF=
hODdhNTUwNGUyOTA4MGU4MGZmN2I1NWEwZDAwNzdjNWRmYTI3OTZjNzZkYjQ2MWRhYTc2NWVkZT=
VkMDMyZDFkODE0YjQyMDFlNDdjYjZlNjQ1MmI3M2EwM2M2ZDkxOTM4NTI1ODZlZWQ0NWM0MDEzZ=
DhlYWEzNGI0ZWQwZTYzOTNiYmUxYjRlNTk0NmVjMzU1OTMxNTA3ZDJlMzllMWE5Y2JkMzhiNWRi=
Y2Q3M2FlZTE1MzUzMGExODI0OGRkMDc0MTBkMDFmNDhjY2NjZTQ2NWIyZDczYmRjYzM2ODI0NjY=
xZjZhNjNjZGE4MjdkNjBjOWU3YmFhOThjMjJjMzFiYzIxZTk2NjljNmJmNzU4YmJjZjQyYjBmMz=
U5NjdhNTQ5YzEwNzk2NjlkZTEwYmQxZGExMjJiYjQ5YzBhNWU5ZWM3YzkxNzJkNGFkNmFhMzE3N=
TM3YjgxYjhjZDgwMDA4ZGVlZmNhZGY1YmE1NjZmNjAzZjY4ZjQzNWI1MjJlODc5ZDk2N2Q1N2Q2=
YjNjOWVkMDA2OWVkMTA5NDE0ZjI0ZDMxY2JlNjllNGVjODEwMDgyM2NkMjc0MmE0MWMwN2FjYWI=
1NTVkMjE3Mjk3NDhkNWMyMDU1MjY4YjEyY2JjNWI3OWIwNDllNTZkNDNkZDMyNTFkODM3NjAxOT=
g3MzU1ZjgxYzQwZTE0YjNjYzVkOTI3MzZjOTVlNmUzODM4MDI3OTAzYTBjZTIxY2JlYmYxOTIyY=
WI4Mjk3ZjMwYjlmYmM0OWE2YmFhZDRmOTRjOTViYzI5NTZmZDk5NzY4Yzk4ZGNiNDM4MWY3NzM3=
YzAwYjdiNGVjZjgyNzQ4MGIzOThhMmZkOGY0ZWMxZTdhYTA2ZTFlYzgxMDZjMTc4ZDZkNDc3YmF=
hZWZkYzQxNWI1ZTcyOTdkNjAyZjExNmM5NDExNjYyZWQzNjk0Yjc1OTliZTQ2NTU0YWFiMDgwY2=
NjN2I4NTFmYWY2MGIxNTNiZmExYzE1NWNkM2ViMzI2ZDI5NTdmMDgxOGVjNmM4YmUxOGVhZjE2Z=
mU0YzFhN2Q0MjQ1OGQ0ZWEwMjk3ZDU1ZWI1ZGUwMzBjYTI1MDJlNTNkNmFiYmUzNmY1ZWU2MzAz=
YTAyYTUyNzY2NjUwZTc2ZDI1NTUwMDlhZjk5ODk0NGFmODE5MGU3MTFhMjA2MWU3MTgwNzc2Y2Y=
4OGRlYjMzNmZhM2NiNDQwMjEyOTRjN2NjZDgyODIwOGY0Yjk4ZDNmOGViZTI3ZTJlMmNiNzkzY2=
I2YzI0MzIwN2NlZDE0MGM1MGExNTk0ZmEwMzBjYzBmMGU0NjgwNGM1YTAyOWQ0OGQ4MWJkZGEwN=
zM3NGRmOGM3NjNjZDEwNDhjODJjNWNhNDU1NzcwNmM4OGM3NjdjYTgyYzA4ZjQ4OThhYzE3ZmVh=
NGQ0ZmYwNWRmMzViZTc2MjE5ODRmMWExYWFhNTVhYWVkYWI1NzZlMzIxYzg5OWM1Y2I0MjRiNDI=
yNzZkOTA0NDc2M2MwNGU0MmVkOGNhOTEwODU0MDYxZWY1OGM1YzE3Yjc4Yzk0YjhkODE0M2Q1YW=
JlNThmZTE2ZjQwOWZiY2YwN2VkYTdiN2ZhZmI1Nzk5YjM1MjM2MTYzMGIxYTJkOTg3OTYyNjVlN=
zg1ZmNiNmRkY2E3MTgzMzNmMTZhYTQ5MWVhMTBiNzJhYTc5OTEyNzdmMDBiMmZiYjFhMTBhMDZj=
OTNjNTE3NjUwZmM4MGVmYTRmMzJlMGIxZGNhOTM5NjU2MDFmNGUyMWY1MTI4MThlNjZjYzg5YTE=
0ZWVmNzU0NWU3N2YyOWU3NGU4ZDRiYTBmZmM2MjU5M2Y4OWQ5ZGJmNTM5YzFjMjRkYjgwNzlmNz=
FjM2VjNTg3NDMwYmRhYzVmMDdmZjg2NDUyMDdmZjBhYjA2YjYwMg=3D=3D" target=3D"_blan=
k"><img src=3D"https://secure.meetupstatic.com/photos/member/5/c/3/6/thumb_=
309683606.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=3D"width:50=
px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DYTcxYTdlZWZjMTd=
lNTYwNTljYzkwYTIwYzIzNzdkMGU1NjlmNjM1YjgzNDdlMTkyZDc1YWEwMDA5YjJkOWU2NThmNz=
g1MjNhNzg1YmNiOTgzZTBmMjMwMGMxYjI4MDYyYWI5ZGM5NTlkM2E4NmUzZDI3ZTFkYWZjYTUzM=
jBlMzM2NGQ2OGE3YWM1YzkzNzgxZDgzNDg2M2Y3YTQ5NGNiNTY1NWMzOGQyMzk0MjA2NTM0OGVl=
OGM2ZDk0YjQ4YTRhMjE4NGEyYTcwMTJhOGM4MzY0MTY3YjQ2YzUzNGIwMzhiMzIxMDU0YmRhYjA=
zZWUxMzIzZTcwMzRlMjVjMWUzMzgxM2Q3ZWY0MGFlMGFiODQyZTZlYmM4OTM1YmViNzZmZjIxNT=
c5MTFlZTBlYjk2OWY4NTY1MTFkMGI3YWZmY2UzMmFjYjFhMzNlZTZiYzNlNTk5NThhYzQzNDRlZ=
jlkNzkzNGQ4NjRmNDMwNDdjZDY0MGVkYzdiMjJkMjc1OWZjYzgzOGE4ZTI5MzBiMzFkYjk1M2U2=
YzhiZDgzNmViNDY1N2FhNjM0YmIxMDlmNzljYzU0MjQzZjk4NDZhNjMxMjgzZTNhZGZhZDdiZmZ=
jYjc3NDZhNjEzM2NkN2Y1N2QxMDBhZjBkODYzZTBiZTVlNTc3OTYxYTdlMDBjMGZmNDU4YjI0ZG=
ZhYTg4NjgwMjk0YWE3OGM1YTk1MmVhNjAwMjI0OGIwNTNjOTJhM2UzZmViMDk0YzdhOGQzMzY2O=
DE3MTg3OGM5MWYzN2Q2NjUzNGFjMDBiN2UyMDMyNWJkZjYxYzBkZjlhYTQ2OTBkYTY3ZWEwZDM0=
ZTJmNWM4MWY5MzgyMDgwYjU0ZWFlYTA5ZGFiMDA5YWZlNjVhYWI1N2Y2MzRjYjI0NzdlMDFlODl=
jZTU1YTE1MzUyNWE3NWU0YjE1OGJkMTNkODYzNTdiNGJkM2RjNzM0Mzg4YTQxZWRmZTliYzI4Nz=
c3MDNiMDJiNzAyNmYyOTQyMjI3Mjk2ZTZmNzE2NDRiNGQxNTA5N2I1ZGNmYzcyNTViMGM0YTY2Z=
DY1MTg4OWVlYTVhMzU3ZTU0OTVlZmRiZDk5YzE4ZjVmMmY3YTgzMWQ3MjcwYWQ3MDllODMwNGY0=
YWE4NzE5YjhiZGRlODhiMTFhNjUzNDg0MzE0M2U0ODc4MmZlODY4ZTE0YWJmMzE5MGZhMTRlNmY=
xODkzNWU3YTZiN2ExNmQyNGFjYmRhN2FiZjFjM2NhNTI5MmNhMzE1YzcwOWFkNGVhNjAxYTllY2=
Q1Zjg0MzIyOTlhNTgyYWIyODMwMDAzN2Y0ZjBjMGU1NzgwZmU5Y2M3ZGIwNmI4MzYzZWNhOTg3N=
mYxM2ViMWM2N2JjYjMzMDEzZGNkYTUyMDk5MzVmZDQ5YTg2YTliZTBjMzA4OGQyMWI3ZGI2NDBk=
YmU4OThlMDVhM2IwMjZlOTVlNWY1MTMzZGM1OGMwYzM4MjQ5MmZmOWNkZGUyOTM5NjRlNTcxZmZ=
kZTY5ZTY2NDRmZjRjZjBhMzMxODQ0NDI3MzE4Mjk5YTVjMGY2ZGY3MWIxYjU3ZWQ1MDc2N2E2MG=
JkNDk4ZDAyOWNiZGViYWFhYmNkMjc4NWMxNGY3MjFmMTc3NmY2YTk4YmIwZjY5YjliYjMyM2ZmM=
GIxZTdmMDVkMDAyMGJjNjNiZTg4OTljYjM2YWUyMDQ0ZGNlNjIwODgyZmNiYzEwZWM3OTM3MTA5=
ZTcwMmFmYjc3YzhkMjVlZmQ0YTY0YmIyNDE2M2YzY2FiMTJkNGZmNWE3MTkwOTU3MTljYzg2NmE=
3MDhiMTRlMTE3ZDc1Y2Y4ZTZkNGRkZjRmZjYwYThhMjNmNDhjYWJhYjhlOTk3YTE2ZWYwNWNmZT=
AzY2Y3ZTNiZGJlMjQyZWZkYTNjYzYyYWNlY2Q5MzA5NGEwNDA2MDBiMmNiMWMwMzJiNmNhMDQ0O=
TdkMGRjMjI1ODdmNzdjYTlhZWQzYjJlODU5OWNlOTVhZjQ5M2JkMGQzOWI5MzExNmU3MDFmMzRj=
YWUzYWFmZTcwMzc0OWVlNDNiN2MxMmUyNjE0YTA0YjE4YTU3NWFjZjA2OGQ4MzI5OGUwNzc0OGY=
5OTFhMGJmZTAyNDhhNTE4MmUwOWZkMDlhYzg1NDkzODFlYzlkMDVmYTA3YTA2OTVlZTc2NGU0MT=
BkY2Y3NjNiZDk4NjVmM2Q5OGIzODg3ZjZlOWUzNmIxYTJiNzZmZDBiNGRhNTY5MmMyYWQ3OWYyN=
zg3NzY2MDAwZjY1NmMxZWNhZmZiMWY0NDNjYmQ1NDczYWZjZWQ4ZTk4MGQ0ZjEzNjYxMmI0OGU1=
YTRiNjk2OGU4OWE3ZTM2Zjc2YzdkNjQ4NzIwNWM5MDczMjNmYThmZDliNTIxNDE5NjZhZTU5NmR=
lYWFiMGQ0MDI0NDU0Y2UxZWFkNzAwNmYxNDU3NDE1ZmU1NzgwNjI2ZjhkYmNmNDUxM2Q0OWUwNT=
E4NGNjZmNiODdjMzY0ZjliZTQxYTMxM2M0MWIwNWRiYzE3Y2RmYTcyZjRiMzJiNmFiMzVkYWNiZ=
GQ1NTBiZg=3D=3D" style=3D"color:#0066cc;text-decoration:none" target=3D"_bl=
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
                              <a href=3D"localhost:1333?u=3DMmE2OWNkNGM0NDR=
iYjRmOWFkMmJhMjMyMjJkNDZlNWU2NWQ5MzQxMDM0ZjY5YzU2OGJlM2ZhNGYzMWZhMGY0NzE1Y2=
EwODlmOGNiMWVhMzlmNjVlOWM0ZjQ4OTA2MTY4NTZlNzkyNWM4ZWM5YmQwZmIzZjdhN2FlZjk1Z=
TViNTE2NGQ0NzQ2MzkxOTYxMWNkYjQwY2UzY2Y2OGRjY2M5YTI0NWJjZGIxZmIzZjQxNWEyMWIx=
ZmMzYWMzMDhjMjE2MDdjMzRiN2Q2MDQ0NWRlMjgzMjZmZGM4ZTEzMjNhMzhlYjczMTcxN2E3YjY=
wMzA4MzE3MDA0NjYyOTQyZjk5NDE1MDM5MTE5YjhjOTFlYzM5MjQ4Y2I1NzFlYWVkOGMyZTU1YT=
NjOWVmNmMxNmRiMGZjODNmZGM1MjIxOTY0MzU0YWIzZWQ0ZWI4ZDc0Yjg0MGM1NjJkZTJkNTcyY=
TA0Y2E1ZjVkNDI2YzAyZmQ2ZDI2NGNkY2EzNWU4NjBjYjQ1OWI5ZWRkYmMyMWU4OGM4YzRmNWMx=
M2Y3NmUzNWU5MzM0ZDA4ODFkZTFlOGQ4ZTIyNzBhODc1ZTcxOWU5YTJkYzYwMGZlOTc5ZTM4MDF=
iM2VlMzE3ODAwYjhhZGVmZmQ0Nzg1MTI3NTljMTVhZDJmZWMwYzUxZjM4YTkzMjQ4ZDlkZTVhMT=
M2OGRiZDE2MjlhZWI1NmU5MjM0ZTE4Zjc3NTUzNjBlMzc4MTkzYmQzNDAwMmRmNDk1MjEwY2Y0M=
jFkMGRhZDM5MGY4MzBmMzZiMDZiMDQ5YWJmZTA3NDBjYTczYmZlZjJiN2IyNjBmODU4Y2IwOWYx=
ZWEzOGJmZDVjY2UwY2I5OTMzNGQ4ZGJhZjNmYTJjODI5OTdjZTFmODQzZDg5MWNiZWRmM2ZkMWY=
0OGNkMzI1NjQ4Y2M2OWYxM2QxY2RlNGUwNzIzOTNkZjYzNzYxM2IzZDIxNzM0ZGJkMjU5YTg0OT=
NlYTliMTAwMjlhNzk3ZThhNTY0MjU1MDc2ODQ5MmMyMmVmZjA2NmIyZTg0MzEzMTE3YmI5MmU4N=
TdhYmI0OWM0NjlkMTgwMzMyYzM5NjgxNjYxMzIzYmEzN2U3N2NkZWQ0ZGM5ZWFkNmEwNTk2ODQy=
OGYwMjcwY2Q1OTI4YjhhODIwMzVhMTlkZGNmOTJhYzliM2EwNDlmOTk1NDhkNGExNzkzNmI2Y2Y=
1YmQ2Mjc4MGFjZTFmYjc3YzlkYmQ0N2YwYzhhNGMwM2Q5Y2NiMTdlZmZiNzkzMzBkMjBlMjFiOD=
NhMDhkMmVmYzc1M2QxMDA1ZGM1OTJjZjM4NDVlMTI1OGU5YjViMWRmYjZlNjRmYWM1YzU0MTNhZ=
TNjOGUwNDNmOTQzZmI1OTZkMWY3NjJmOGEwOTljNDA3ZWI2ZjI1ZjU3ZWI0YTg1NDE2ODUwNWQ5=
OGI0ZmJjMmYyODgwZjMxZWM4NmFkZjE0MmY2NzQ0YjAxZWQ1NWUyM2ExMjY2Y2RlNDdhN2ViMDc=
yYTMyMWY0MjY1YjVjYmFlNWM0NzE2MjY0ZjE4YjFlZmEyYjA3YjVlYjJiNTFiNDQ1NTQ5NmY2Yj=
RhYjY4NDJlNDQ0M2Q2ODdhOTNhZmZhYTM3OWExYjk0MmE2MWJkZmJhNzNjN2ZjYjM5YjY1YTQ0Z=
TdlYzk5MDAxNzI0MDM0ZGVhMmE4ZjgxNzY1NjhiNGIwNmI1MTY2MGEzZDQwNzA2NWQ4OGZiYTQz=
NDZlMjhlNjFhMjNmNDA2NGJiZDY4MjNiM2Q4ZjI1ZDEzMzAwZDk1ZTJkYTRmZDQ1ZGUzYTcwNjh=
hZTNkODljMDJjNWE1N2NlMTQyZmU2MzQ4YmE0Yjg4MWIyY2E2YTcxNGVkNTczZWVlNTZjNWIzNm=
M0YzBiY2Q5MjJkMjk2ZDAyNTc2MmRkZjEyOTkyYmJmMzI1OWE3NzU4NzM4YjY3ZjRkYzZmZDZjO=
DIxM2VmMDc1NzY5MDhmNDNlNjMwYzYzZjg3ZGExMWFjY2FhNTg0YmFmOGRhOGU4YTE3MjA5MjJh=
ZjgxM2M0NDk3M2M3ZDNiMTM5MjJmZDQyZjEzZWVkMmYwM2U1NmY2ZDNhMWJlZGQ3NDA4NmI1OTk=
1MGQxNWVhNjQ4ZmYwMmY2ZjgxZmI4NDc1MWVlZTA5MmRiNzNlNTJiYTgxMWRkYmE0M2I4YjA0ZT=
c5MjQ0ODhmZTNlZjRiMmU2ZWVlN2I4MjFiNGI4ODk5MWViYzM3NmFiNjZiZGFkN2NlMGNjNjc4O=
TYxNjE3ZjczZTk1ZmZhMzRkMDMzNDNjY2E1MDAyNDgxNWE3MDFkYmJhMDZiY2QxYjg1N2RkYTQ1=
OTY1ZjMxNWI5ZGJiMGJlNGQ1OTc5NjBkZTE3YWFhMjJhOWFiNmQ3YzFkZTY2ZjY1MjViZDIyNWU=
wNzViMjk3MDFiNjc1ZTE5ZGE3OWM1MmRiMDkyYzg3N2Y5OWE1MDA0ODdjMGFlODNmNmIxYmViMj=
ViYTJiOWY2MGUzZWE1MjNjNjlkODE4YWZkNGE2ZGNiZWQzZmVjMTc3MWNkMjBh" target=3D"_=
blank"><img src=3D"https://secure.meetupstatic.com/photos/member/9/1/0/e/th=
umb_312457134.jpeg" border=3D"0" width=3D"50" height=3D"auto" style=3D"widt=
h:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DNDNhYmRlNTRiNGN=
lYzg1NDM4ZDY4MTMyYzg4ZTgyNTAzZTBjZWUyODlmMjBjZjVhYjhmNGY5NTc4ZTc2ODlhN2FjOG=
RhNTUxNzFmMzc0ZDZmZWUzNjQ3NjBhNGY2NzllNGJlZDlmZjQxNTEzNDg5NDQzODQyNmVlMTcyN=
zllM2NkODE3Yzk3ZmE0NjdiYjQyOTVhMGU0NWZmNTg0MDU1NzAzNDkyYWE0NTJkOTkyY2I5MDhi=
MjlhNWFlY2Q0YTgzMzZiNjA4ZGZiMDQ0NDI4YjAzNWFjMGQ1YWExYmE4YTMwMjkwMzRjYjY5M2Y=
2MmVhZDdkMzczMTZjMWRiNzNkYTZhMzM0NzJhMzg0ZDFlM2E3OTc2Y2JkMDVkMGE3N2U4OTU1Yz=
hmYzNhZGE3ZDI2ZjYzZmVjNjU0OGI5MTY4NjFkMTZhMmViMDJhYzc2YjhlZThkOWU3YzExYjQxM=
DE5MzQyMzQwNDY2MWMzZGUxNjhhZjI0NWZmM2FhNGNlYmU2YzliMDA1MDE2NjlhNmQ5NGU4MzU3=
NTYxMDUxNjBmMGE5MTNiMmU1YjA2ZWNjYWY4ZDIyZDkwYWQyZmI0YzFjY2NkNGNhNGFiNGZlNjk=
yNTZhM2NhMGU0MzJlYmZiOGM5YzRjMTQ2OTU2N2FjMWZkNWExNDk4ZmU1NjEyOTQ2ZThhMGM2ZG=
VmMDE1MGM2YWIyZTc2NzFkM2YzMDNhODBjODM1ZGI0ZTE5NjJlNThhYzk2ODA2NmZhOWUwNTg0M=
zllNDFjZTE2Yjg1ZTc5NzljNzUzNGQ1OTk4NWVkZjgxNTVmZDBiMjI2ZGRhODJkZTI1NGU3MTUz=
NGIzOGRhNzk3OTRlZDc5MDI3NDdiNmNhMWY2NjI2OGY2M2Y0ZWZiNGZiZDNjZGRhOWVkN2VkNzE=
4NmEzNTRiNzg2NWQwZmUwNGYxOTY4NGYyMDNmYTMzODQ1YzUzODJmZTA5ZDQ2YWQyNjYxZmIxNT=
VkYmFiZmRkOWQwNjg0YThiMDIzYTVkMzJhMGU2MjQ1MGYyMjI2YjAzMjdhZjFiNWNmZmQwNmRjM=
GFlZWU5OTU5NzBkODNkODMxMWIwNzI0MDhlMzM0NDZiNWRmODgxMmEyMTk2MTdlMTI1MzUwNzNk=
ZDdkMzA2M2UxNjBkY2UwZTUxYzllNDM5ODYyMDJiZGQ5ZWZmOWE4YjIyMGViMzE1YjcxNGRhYzQ=
0YjExOTMwOWI2YzQ2MWQyNTU4YmEyMzcyZjI0NDViMDk1MzdmYmIzZmU5NDk5MDc2M2U0OGZmZm=
UwZjAwNmNmNzMxMzBjMTg4MzY0ZDYyMDRjZWFhODYwNTYyYmUzZGZiMTMwMjNjYzJlMGE4OGE0M=
zc1YTg3NDcyOTNiOTZiZjdhZjNhNGEyMmUzZjBhMWU5MTZiNmZjZGI4NjRhNTNlMjBlYjFlNzEz=
ODY5NmEzYzhlNmQ3ZDAzNGJmZjBkNmIzMWY0NzM1MTEwMzU2MDViY2ZlNDgzOWNkMDQ3YmFmNWF=
iYTU5M2E4ZmUwNWMyMDJkOTczYTI4M2ZlYWY4Yzc5ZWZkY2UyZWNlNWY0YjI5MTUzM2RhOTg2ZD=
kxMTczNTJhYTAxNjZhOWMwODM1Yzk4Yzk4NTc4YjM2YTQ0MWRkMjJhYzUwZGFmZWZjMWVlODhjM=
jNkYjNhYjQ5OTQ4OTQyNTE5OGZkMGVkMDdlMmY2OTE4MDNjOGEwOGFhNzIzZmM0NjIxNmI5Yzk3=
NmIzZjkyZWUzYzcwYmNiODVkMzY5MzM5YzEzYTQ5OGE2ZGY1N2MxMzM1M2IyMzc5YTc3MzhiNTk=
5YTNjNDMxZGJhY2U2NDc4OWZiMDNiZTcyNDU0ZjhmMjJhY2QyNjJkY2Q3MDAzMWE2MTRlMDhiZj=
MyM2RhNTdlOGFlMDMxNGYzNmRlYzU1MTFhZWViNzgxNzFmNDQ3NzU0Y2FmNGRiMWEwZGNiODkyZ=
TMzNWUxNTM5MGUyZjA3ZDQ4MzIyOGE2YTM1NDM4YjlkZGI4YTJkM2Q0OTYzNmY2N2QzMGQ5ZmVi=
OWVhYjFhZTJhMDljZmE4N2E5MGY3YjE2YjliYjhmZGNiY2FmZDNmNWMzYzc0NTE0ODNmZDdhNzc=
1N2Y2OTY4YWI1M2I5MzA3OWUyNzhkMWY3ODliNDllMTM1M2Y5MmRmN2MzNDI0NzFiMTczMjRhYz=
E2NTA3OTc3NzIwNTkyOGYxMmE2NDZmM2M0NDJhMzMxMjcwZWQ5Mjk2MjY2ZDYzMTEyZmFiZmI5N=
TRkNThhY2Q1N2MwM2ZlMGQzYzNkOTNiMjY2MmMyMGE2MjczOTE5MTg2MTJmNzBiYjIxYzIzYzEy=
ZTQ4YjEzN2U3OGFjZGZkMzgzYTQ3NjE1ZWRjMWEyOGExZTI5ZGI0MWIxMjA2YzNhYjFjZDQ5MGI=
0NjA0YTlhZjcxOGRlOTY3YWIwMzllNmE0OGZiODZiNjhjZDljYzA3MDQ2MjI0ZjZmYmFmYjM0OD=
E4MTE5YWUxOTZjODdlZjY5OGZjNzg3YzRkYzliYzkwMTc2ZWZkZjdlODliMTY1MjcxMjk2NjdmM=
2I2" style=3D"color:#0066cc;text-decoration:none" target=3D"_blank">Rotem B=
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
                              <a href=3D"localhost:1333?u=3DNzU4ZmE1NTZhN2E=
4NmZlZDc4MjA5NGM5NTFmOGYyOTVjNzQ4NTUwM2Q5OWMxNzc0NTI3NDMyZDdhODNhYTU5ZjE2ZT=
MxOTkwMTUyMGVmMzM3ZDEyNmFjNzMxMmJmNThmM2EzMzhhNzA4MWYzZDBiOGE1M2RmMTczYWM0Z=
WI4ZTUyODQxMmQyYWZlYzY1YmVlYjMyN2E4ZGYxYmM3OGQzODRmZjI3MDFlZTI0ZjA4ODA3ZTYw=
MThjODc5YzM1ZWNkZDUwMjMyMWY5MDQwMTFlMjM0OTZjMzIzMDk2MjU0OTZjMjZlYmFjNzVlYTk=
wZGRjY2U0YTQ1YzFlOWQ0NDUyYTQwMmQ0YTcxMjYzMzlmNWEzNmU3NDU2MTE1YzYwZWViMTA3Mj=
gzNDlhYTQyNTc4MjRiMTM1YTUxZmVhNDJlMmU0YTI4ZTViM2FmZjdjNWU4NzU2ZGU4NDNmOGM1M=
zU2Y2I0MGIwZDYxYzI3OGVlMmM0ZjM0MTAyMzM3Yjc1NDVlNjk3ZTFjMTQ3ODgwOTM0OTEzY2Y1=
MjBlYWIyODIzZmU5OWUyYTE4MWViMjc3MDFhZWYzZGRiODA3ZTBlMDEyNGZhZTFhNzk3NWE4Nzg=
5MjI4MTNjZWQ3OTJhM2UxZGUzMGNhYWNmNzE3OWNhMjg0NmY0YzYzNzMwNWRmYjFlNzI0MTdmYT=
Q5Nzc3MWY1MjA0NzYwZDE2ZmI5MjFmZTkwM2VkMDM5MGJkMTI1ZDUwZjQwNDg0MDYxY2E5MWZiO=
WJmNDhmNzM2ODA1Yzk1OGI0Y2Y4NGIxNzA3NDI1YTI0YTgyNjJiMTA5ODI5MWJkMGUyZmVhMTU4=
ZjM5N2FjYmU3YWNjYmZkYjMxOTM3ZDhkMTYxZGZjYTNlM2ExMjVjYWFhNzlhZTllYzMyMjI5ZWE=
3MzQyYjMyZTFhM2JmNzIyODcxZjc3NDJhM2ZkZDlmYzk5YTczMzRmOTExYTlhYWRlMWI4OTI1YT=
gyYjNkM2MxYjA2ZTNlMzVlNTEzNTVlOGFhM2EwYzcxYmY0NjM2NWUxMTU0M2RlMTU4OGY2ZDA5M=
DRiZjhlMzMzOTMwNGRmYTdkN2I5MjgyNzQ2NjFiMTQwZjU3MTdkYTEyNTgxNWJhNTcwM2M1YmZl=
MTI1NzliOWYwOTgyMmY5MmEyZTNkZWEyMWRjMzY4OTg5OTliY2EzNjcwODQxNTVjN2U2MTE2MDB=
mOTUyNmRlYjE3MTkyYjU4MDNjY2M0YjNhNGIzM2M1MDUzZTdlOGZhNTk5M2I3NzE2MWVlNzk2Nj=
gzZDgzOGQ2YTA4N2RkMDY1NmJiYTAxYzBmMmMxZmJkNjk3ZGQ1MWJmYWY4NmRiYzk0MGFmYTk5O=
WEwYTBiNDc2ZTQwMTFkNGQ3ZDRiOGNjNGM1MzEyMjdmMzA0NDU0MDY2MDY2NTIyNTYwNzBkN2E3=
ZDYxMTA2MTdkNDNlNjljZWQ5MDNlMzZlYzhiZjRjZjYxMTI2OTY1NTliYzA3ZDA5MTQ2OTFjOTB=
lZjk2NDgzYmQzMmJlMjg4ZDJkODY3OWNiNzc4MjRmZjI0N2E5NDZlMGRhYzBkODg4YWZiMzA4ZT=
E5NzM5NmM3ZWI4YjY5YmI4ZDNmYjhiYmM4NzZiMDIyYjU2ODU0N2RjZDA1ZjRkMjk2Yzk0NjVhN=
TFiMjAyMTIxZmI4NTEwZTMwM2FlOGVlMjQ2OTEyZDY2OGNhYmM5ZGNiNzMzNmQ4MGE4OTVmNWE0=
MzdlZTFmNzQyODlhMjQ0N2VjMWQxNzhjNjFhZjBkOTY0NGQwOTFlNmE2ZmMxYjFlOWRmMDMzOWQ=
yZDc2ZTNkZDUzMzU2OWJmYTNjYjQ1YTdhMzRiYWJiZTkxZDhlNjRjOTUwMDk0N2MyYWM4Y2YxOD=
M5ZjU0YzhjOTZlOGJiMDdmOTkxMWU3YjNkYThlZjZmZTZjZmEzYWE4ZDg1OWQ1MjIwNDFiN2JlN=
WM2Zjc3NDEwY2E1ZmU1YWNjYTM1NGMzNmZhNTc3NzEwYmY1Njg0YWExZmYwM2FkYTIzYzM4NTIx=
NGUyN2EwYjRkNDYzZWE1YjAwOWVmNGUxYzA0ODhjNzRlNGZiYzg0ZmJhOGVmMWVlMWUxYTliOWY=
zNzBjZGM5ZjlmZTVhZTU0MjM3ZjMzNjU0OGVjMTZhNTlkNWJmMjI5ZWIyNmU5ODQzZGQ4YWE2ND=
Y0YWMyMmQxMDg3Mjk0ZWIwMzI4OTdkOTQ2ZDU1OGI1NmNjODE3YjgzNDIzOTkwZTUwY2ZkMzMwY=
jhiMjYzODAxZWUxNmIzMGFkY2NiNTkwYjAxOTEwMjliMzBkYzM5MTBkZDY3MThkYzkxODg4NjFk=
MGM3MmRhZmI0OTJlZjBjYjY0NWJiOWJjMGMzM2ZhNTdmNDE0NDY2ZTQzMjY5NjExY2FjM2EyNzh=
kNjcyZmU1YzM5OTM2ZTkxNDhiOGY5MTUxNjQwMDU2ODE4OTJmZWVmYTNkOWQ5MzY2Zjc2MzQwOG=
ViNjI3YmFmZWNiMjZiYzBkN2FkZGVjMWYyNmM4YmYxMjYxMTllNmEzYjgyZDQwNWE1MzFlYzc0M=
zliOTBlYzkyMTM=3D" target=3D"_blank"><img src=3D"https://secure.meetupstati=
c.com/photos/member/9/9/1/7/thumb_307479191.jpeg" border=3D"0" width=3D"50"=
 height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DNjllMGFjOTkwNjA=
xYTQ3N2FiYTM0YjMyZjFiNTcxZjNmMzQzN2Q2NTRmYjRiYTI3NDMwNTNlYTQyMDA2YzU5YmJkN2=
I4ODI3ZTkwZjU3MDdhMDczYmM4NGU0ZDc0MjdiZDEyODI3MzUzY2QwNDZkZDkxNGQzZWU5YzIwN=
jlkYWIzMjJiOGU0NDRiZTYwNmE2MGJhMzJiNDlmZWQwMGVhYjkzOGM4YzkxZjY4NWYxMDE0NDhl=
OWZhMWQ1MzNhYzgzMzNiMjc5MzNiZmFkNDRlZGFiMGMyNTE3NzM5MTE4ZjE4MDIzZWQwNjdjYTN=
iN2IyODNkNTY0NTQwYmYxNjM3MWFiNTYzZTlhNDMyYTBhNjMzODI2ZTY2MWYxNjFkMzVhMmZiOD=
VmZjkxZDdmYmRkNDRhOTMwZDBkNGM1MjNmOTk1M2E2MjQ2ZDZlZTJmOWJlN2U4ODVkM2U1MmU2Z=
WZhMTQ3MTBmNDZkMjdlYzk3MzA2YjliODRmYWI1M2VkMTdjNjYyYWIzNTVjMzI1NGZiMjdmYzQy=
OTMxMGVjZGQ5MWIyYjdiYmQzMjFhMjlmZGVjZmI2NmJhZDY2MzkxMTI0ZTlkZGQzZDQwZGRjYjg=
xMGM3ZjRkODMyYmIzNGY3YTAzMGNkMWMzYTRlMDgyYTAzY2RiYjAyNDRkOGU5ZjRlNjI3MmYzZj=
ZhYzczMmQ4YWVmN2Y3ZGNhZjc5YmE5MDc5NjIxN2ZjMWQ5ODYyNjk1OTkwMzBhMmYzZTNlZTE5O=
Tc0ZTQ0MDg4OWZkMDRkOWE0OTM1NTQ0NDA1NjJjZWE4MzQ2ZWZhNzBlZGQxZGRlYjU5NjE1NzAx=
ZWY2M2Q3MWU3OWQ3YzI0ODU5NTBjMzM4NTZhNTgzYjc5OGYxNGNmZWFjNWNkODFkMjVjNTljMTA=
4YjI4ZjMwYWVhMTEwNTlhYmQzMzI0ZmJlZTZlYmY2NzBjNzkwYzcwMTk4Y2ZlYzI2MGYxNWM0NG=
NkMjY4MjZkOGMwNzRhZTRmMmJiYjllMWY5NTM4ZTc2ZjdmMjYxODA2ZjM1ZmQyZGZiZjcxYjAyM=
GE0ZjRiOGNhOWZkYmE3YzVjM2VhMDVlNDA2OWJhYWViNWRjNTVhNzVhZTQwMjM3YjJjYjg3N2Nj=
YmRjNDMxYjc2Y2RmZjFmMTg5MTgwMWU1OTdiNmZhYmE1ZjkwZGM2ZmFlNmFlNDA0OTJhOWIxYTU=
xNDNmYzRiN2I4ZGMyZGI0YjYyZWVjZGRlNTVlNmI0ZDVmYWIwNjVmMTlkODcwMWJiZTc4MDg1ZD=
I5Mjc5MDNkYzU3NDBkNzg5YTM3MjVkOTEyYzhkMzQyNWZjMjliZGIwOWNiOTg1NjFmOGYxNTA5N=
WNiYzk1ZmZjNzRmNzdmZTdiZTRiZjBkY2RkODVhZTE3MDExNDhlY2I0NzIyMzI0Yjk1YzkzMGJi=
OTljOGMxZDg2YTlmZjlhMjA2NzYxYWRkOWQyN2YwNjliODZmNWIxZGIwODI1YjQzYmQ1MTM1NGZ=
iNWQ5ZDU2ZGE5NjJmZmI4ZTEyOGNlOTUxNmE2OGJmNGFhNjU0NTAxNzEzNzExN2JmMDJhNTcwZD=
kyOGQ0N2NlZGMyZDIwNjg3MGQxNTZlYmZlNWI0Y2Y3OWRmMzJmMTY0MWVlMTNjZTU5ODJlNjY3Y=
TU0YjU5ZjVjY2U0YjI5YTM1ZmRjZjkwYzFhMWVkMzM5ZmU3ZjE5M2MzYmJlZjMxNzgwOWE3ZmQw=
MDhiYzIyMzRlMTFmYWQ1ZWQ4YzNlNWQzY2YxNjEwZWI5NmUwZGU2ZmNhYzkwMDJjYzEzNGJmODJ=
hYzg2ZjdiMTQ3ZDFmMGNkMDk0Y2YzMmI3OTNjMjQ1NTRiY2QzZjIwNmY4NzY1MTQ2NmNhZDQ5MG=
M2MTFmZTA0MDNlZjU5ZGVmOGUwYTAzNTg2ZjIyNDQxZGFkMGRmOTgzYjk2YjRmMmZlNTUyMWIzN=
TUxYjE1NTA1NDYyZmIwMjJiODExZjE1MThhOTNiMTZmOGNkODQ2OWVlNjNjMGZkOTExYTg3ZjRk=
ZjFiNTAyN2MxNmMyMGI2MmMxYTdhMzg4MzgzZWUzZDc1ZmMzY2IxNWI4YjgyZTBiODg1ZjM1NzE=
1ZjBmNzQ0MmYxYTliOGM3ZmE1MzAzNmFmZmUyODJkNzAyYzg0ZjBjZTg2OTliYTNjYzYzMGNhYT=
I0ZDhlNWY4MjhmNjA1NDNjYjEzMmFlM2QxOWI3N2U4NzdhMTYyMjFmNDJhMGM0ODA0N2E2NzI5Z=
TZlN2I3ODY4YjNkYzA3MmU2MDM0YWJiN2YzMWExOWQ0NmZlYjU0ZjhmOTM2ODhiNWE1YWQ4OWEz=
YWY1MzA1OGQyMjljMmExYmIxNTA0YWMxYTRmZDZiMTA5MDJjZjBjMWFiNzgwM2JjYWE3NTNjNmY=
zODRiYWE0ZjUzMWZmZWZmY2NkZDE4NzQ5YTBmYTkyMjRiYzBhZGRiYzkwOWNmNjYyZTIwMzQ0ND=
Q4MTY1NWU2YmI5ZThhNTAwN2JiNTM1NmE4ZjczOGFhMGZjNGZiOTQ1YjgwNzJj" style=3D"co=
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
                              <a href=3D"localhost:1333?u=3DNmNiYThkZGYyMzU=
1YTgyMDFjZmE2Y2Q3NGFjMTdlMTU4NDllNDE5MGFmMGMxOGVmYmFkYmY5MDUzOThmYjYxYThhNj=
ZjMGQwMTkwMTNmZGQwN2Q3NmQ1YzZmMDgyOTJiODJjMmIyYWFkZjBkMmIzNzQyNTllOWEwODZjY=
zkzMTJkZTc2NmRmYmY0ZWNhMWY1YjU2ZjU3ODlhNmEyZjkzZDdlODZlOGM1ZjIxODM3Yjk0Y2Jm=
YmExOTc1MDUyNTMxNzFmN2ZiZjkyZWJiMzY4MzRmNjJmY2FjYzFiMmU1NGIzMzA1MjI2YTQ5YmU=
5NWNlMWQ0ODA3NGU5ZGI0ZWEyMzcyNDk0OTQ4NzEzYzQxYTVkZTdlMDFiYjZjNjJmMWMzMDQwMT=
BmYmNjMzA5Njk4ZTY0YmE3ZjgwNzk2M2Y2MjczNTMxMGEwMTk1MTI0MzIzMzA2MTIyNGI2OWYyO=
GQyNDRjNTQ2MjI2OWNiNTdkZjZjZGZkZDJkYWNhZjdiMjkzNWNmNjE3ZmQyNzM3YTE2OTBhZDE3=
M2JhYmMzZjFiYTYwODM4ZDA4ZWIyMGZiZmYxOWQ0ZTFiYThmNGQwMTljMDEwYjY3OWYyZDEyZTE=
1ZjhiZDRhNTVkZDA4ZGM2YzgxZTliMWIzZjFkNGZhMmM0MGYwZDRhMGIyYzI0M2I2ZTNmYTdhY2=
FhOWE1OTk5NzI4ZTkzNGNkZWZkYjllOTEzZmIzMzgxNjRjNjVhMWRiMWI3ZDZkMGViOTVmNDYwY=
zhjOTRhMjQ5NjE0NTEwZTI1MjA5MzQ3ZDdjZWYxN2EyNGZhOWQ4ZjIyMDg4NTk0NDlkMjhmMDEx=
NjMwOTIwY2E3NWRjZWViODU2YjNlZDM3M2NjOWI4ZWJlYTQ0MGZhZDBlZGMzZTJjMjc4ODM1NGM=
0NzRlYmU4M2IyM2E4Zjc4N2NjNjJkNmM0ODVhMTM2OTM0ZDQzZDI2ZDBmMTQ2OThmZWI3ZGM3Mz=
Q4ZDc5M2YxZDg0OWIwMTdiYjkxYzRjN2FjZWU2YWMzMmQ3MzQ2YWE2ZWJiM2MxMmI1NzQ3NTgzN=
zc2Yzk3ODQ3NjZlYTc0Njg5YzMwZDIxNTUyZDhhZGU4MGNiYjI5MDRkZDkyNzZkMjkyNjU1MzQ0=
Mzk3YTg4NmRjYzkwYWRmZWM4NjkxNjg3OTgyYzdmYTNmMDUyMWE2NDY4MTE4OTRmYzk5YzA1ODE=
zOGJiMTcyZTRlNWRkZmFhNjcyOWIxYjY1MDcxOTEzMzBkZmZlYjhlMmJlMzk3YTVmZWE4Yjg0OG=
JlMTcxMmMyOTBkODk4ZTIzMDg5ZTViNzk4ZDIxMGZjNDAxYmM4MTE4ZWRhOGIyZDk1YjAyNTUxZ=
GE2NTgwNWM2ODU1MjkzZWY4YWIwNTBmM2Y0OTE5ZDY4MjI2NTc2YTY2ZmI0ZTQxNjk0OTRhZDQ0=
MTY1YzhhNDNjODdkNDNjNGIzZGI2OTQwMDNkNzgxZTA2MzAwNTljZjZkYTg3Mzc0OTQ5NDk0OGE=
4NmE4ZjAyZGJiN2EzNzJmNjdhMTM3MGExZTQ3OGQxYzA2MmVhZDgwODYwYzkwM2ZjZjNjZDdkN2=
MzNWQ0NDYzZTg3MjM3OTgzN2U4ZDIyZWRlMTZhZTkxZTgzMjljZWE3ZjUxMzYwZmQzZTYzYTJiY=
WQ4MzhjMTIwM2Y5YjY4YTI3MTlkNzY3YmE0MmJiNmY3Y2IyZDdlNzg3MGQwMGFiZGNlZTU1MDg5=
ZTdmZTgzNTNmYjI3M2E5NDc2NGMwZTQxM2ZkM2JiNGE1NWVkZDY4MjJhYWRmMGJjOTA0NzM5YzQ=
zNzJjNWRmZWY2ZmU0NTliNDNiMjk1NThmZjBkY2VjOWIyYzczNGNlYTMyNTQ1MDNjODMwNWQwNj=
I3M2M0NmFlZDc0ZTNjOWRjY2YyZDRkYjkzYmU3M2E3YzYwZWZkNzVmOWQ4YmQ1ZmFkYjM4MTFlM=
jIyMTg0M2NkZmYwNzRiZWJkMzg1MWUzZjRiNTJkNGE4MGIzMjZjZjFkYmVjYzFhNjVmOGFjNDI3=
ZmI5ZGQxMzJhYmYwNjQwYmE0ZDEzMzRiN2ZkNTM1YmQ2NzA0YzY4MTYzOTA0MDgyNDUwMWEyYzg=
1YWY2YzJmNzI5YzMxMWMxYTg3MmMwNzEwM2NkOTE0MzU4Y2UyMDUzNmJiNWVlYTUzNWZmNWE1ZD=
hhZjI2YzllZjE5ZmM4MmIyZTc3MTIwM2MyODAwMjk0Y2RjZGZkNDAyYzdlNGM1NGQ3NmU0YjUyY=
2QzNWI4NGEyZmNiMzY2M2MyNTY4ZWMzNjQzMDQ1OTg4NTRlNTdiNjhjN2UyMzFlYzFhMmY4YWVk=
MTQzMzY5MTkyZDZlODhhY2MwZDlhMTAxZTQyZmNiNjYzNDQ1MGNkYmUyMmYyNDZhYjRiZWNhM2U=
4MjkzNGFlMDE0NjQ1MTdlZTM4ZWM4NmZhZDllNDk3MGRkMjRlYzczYTBiNDM1MzBmYzQ5NGJiZm=
U1M2I1NjdlM2Q2OGZkZjViYzFhNWQ3MDU0MjMxYWU1MDk5NjU0YTExOGNhNWY5OTAwZjdiNDkyN=
TQwMTFlYTQwMGU=3D" target=3D"_blank"><img src=3D"https://secure.meetupstati=
c.com/photos/member/a/f/8/3/thumb_314024931.jpeg" border=3D"0" width=3D"50"=
 height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DMzhjMGNmNzg5NTY=
yMjk3MGQ0MDQ1ZmQ2OTU2ZDIxOWMxODYzNmJkYjcxNThjZTg3ZDA2MTU1NTE1ZWU5NWM4ZWMzOW=
FiZmRjYTk4ZWRlOGE4YTM0OWMwYjcwYzg5NDgzYTRjMjAxYTI4M2Q4NTVhZDhkZWNmYzU2NzIwZ=
jBmZmIzZDQ1ZjIxNDUzNGFkNjk2ZGQ4MDMwMjZhMTExMDA4NDk3MDE0YzY2Y2I0ZTFiZDNlOWNm=
Zjc0MzliNTNjMTdmMzYxMjg5YTQ4NTc4NzNlYWE2NGIzNmJhZmI2NTAwNDAyNTJmOWRiMmFhYWN=
mM2U0NGI0NjkyNTQ0YjkxNmU0N2M3MTA3NTdhZWFiMGE0NjgwNTcwZWZjYzAyNTI0MTA5NzVkZD=
U4ZjNhYWU3ZmRiYzNkOGVhYmE5ODgzZjQ4NGE1NzAzYWMzMzAyNWZlNDUxNzBkMGYxNzI1MDAxY=
TlkYmNjNjdmYTQwNzI3YjU1ODk2N2ZkNWNjMTYwNTQwZTk4ZWI2ZTNjM2NlZTJmNGM5NTQ4ODcz=
MjY3ZDRhYzAxMTRhYTkzNzMyNjUyZGQ4MjhhODJkYmJjODc3MDlhMWJkYzU3ZGMyN2NjMDZjMmQ=
yOGUxZDgwOWZkN2Q0ZTJjMTY4NDA1YTI4ZWZhNmI2ZGEyN2M4ZGIxZjc0YjlkMGUzZTljZDM4OD=
Y5ZTY0MTQzODQ0YWMzMzc3NGEyYjJiNDllYTFkMWI3OWNkYmUwOGIwMGZiYTZkNjljNzIwMWJjN=
zAxNGQwMGMyOTMyMjAwM2VhOGEwYWQ5NzUwOWQ3MDU4NTE1MTMyNDJiYWZkMzZjOTYyYjcwNjQy=
NDI1NzlkYjRkZmRlNTY5MWY3OWU3YjZmOWRkNTdiNGIyYThkNzc5OTVkMTNiNmEyODkwMDU1NzJ=
jNDgxNzQ2ZTUxMDMxZmM2OGM1MDQ4YjY0NzUxMzY5NGQwOTJiMmNhZTNkMTFiNzJlNzgzMmZhYW=
M5MmIwNzZmODljMDBhZTc0NTVjOTY4YmU5NTczYzAyYzhjMzIzYWM2Mjk2ODU3ZTBkYTA1Y2M1Z=
jNjYjYzZDkzNGJkMTIwNjM1YTBkMmJlNjM5Yzg5Njg1Yzg3NzNjZDJhNjA4NzFkOWRiN2NmYWRm=
NTRjOTFjMmU1NDgxNmZmMjJiNjdiOTYzNjMxYWI4Y2YxY2U5ZGMzNDVjNzcwNTIyOTU2MzQwODN=
jYjFhMDQ0YjNkNDliMDBiNmI5YmQ5ZjJlMGZiNDdlYTNmZjYwN2ViZWFmZmYyN2MyOTU4MzgyYT=
Q1NDEwZDQyOThjMzE4M2I4NDkxYTA1MjBkMjljYmI4MTg4MDlhNzFjZmVjNWU5MWY4OTQwNTBhM=
zY1MjUzZWU0NDQzYzZmYmFiN2VhM2RiNjQ3MmJjYjMwZTRkYzE1ODc3ZDkyZWU1OWY4N2M2Yzhh=
NmUyNjEzMmNhYjIxMTI1OWVhNGZlNTQ0NTMwZGUyNGVlZjIzMGUyOWEwMjA4OGRkYzRlMDE3YmZ=
lOTgwMmQ4MjQyNjVhZTBkMzI2YTkzN2YzNDlkYTYzZmUwYmRmNjdlZmI5MjNiZmUzZGEwMzlmMG=
M1OGZmODJkZTFhOTYyOWY3MDlhYzgzNWViMjJhYjUzOTExMTgxNDIxYzE4ZGI1ODJiNjQzNDJhZ=
TFkMWU2ZTM1ZmZjY2U3ZjBlODYzMWRmM2JmNDEwOTAxMGVlY2VlNDMyNGU5OTY5YzMxOGMxZmMz=
MjQ4Y2E3N2RkNTExZWNlMGY1NGI2NTY1YTE0NmE3NGQxY2VmOGQ0MzRmZGY2NzgyN2FhYzllNzF=
jZThjMTI0ODRhODIxNmQ1YmY2NDhkYzE4MzgwODJiYzkwOTBmNDBkODhhNDcwYzAyNjA5NmY5ZG=
M1MGM1ZmU4ZWM2Y2E0OTFiMzhmOWM0YjIyYzlmYTFiMDFkZjhhZjliZmNiYWE2NDk4ZTI0Y2Y4N=
DY1OWM4NTE1ZmUyOThjMDY0NmU0MDYxZDQ1YWJhOTIzYzA0NWEwNWIzZmFkNjQyZjZjM2M2ZTcw=
ZTgwN2E5NmEwNzVmNmUzMGY3MWIxMjdiYTAwMTUzZTQ5NTk5NDhlZTdiNTEyMTI0MzgzYTU2ODM=
4YjBiMDhiYjZmY2YzNWVkZjhkMjdiYjBlNDRjMWE2NzUxOThkZmU3N2Y5ZGFkNDY1NmY4MzU5Y2=
EwMTRiZDVhOTc3NGZiODM4OTQwM2FmZjRlZjYxNjc3N2YxY2YxNzMyOTJkNmQxZDAxNTExMDA4N=
GI5NjQ4M2NiNTg1Zjc0YmNhMzA0YzE2MzA2OTZkNWI4NTM2MTU1MDhhN2Y0NzIyNmU3MjQxOWMz=
NTU4OTcwNDU3MGIzNjIzNzg0OTM5NTYxNDczNDBlMDQ5Njk3MjViNzcxMmZiMjJlZmU4OTNlMjd=
jZTI1OWQ1NzhiYzhjYzkzZTljNTljMTNkNTgzYjI1OTZmYTVhMzNjYzU3ZWZjYWRkZGQyODJkNj=
BmZDI0NTc4ODFjOTVhZTY5MDM1ZDdhNjQwY2Y1ZThlMDExNDNkNzI5YzQ=3D" style=3D"colo=
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
                              <a href=3D"localhost:1333?u=3DNmNjYTY4NjU1ZDU=
1MzFhNDZjN2ZjZWZiZDIyYmU2ZGNkNGZjM2ZjMTE4ZTBhYzY5ZTJmOTFiNDM2ZTMzN2IyMTllZD=
IxNTAxYWFlNWFmMWY3Y2IzMmM4YTA0ZDJlZmYyYTIxYWQxOWYxOGMwZDJlYTg2Y2FlMjcwNDljZ=
WRmMzUyYjUzYjdjMWQ1MzkxMjU4YTYzNGUzMWY2YTBlMzdmZmYzNzM2NmM4OTA4N2YxZTU4NGRj=
MDk1YzhlNzFmYWY1ODUzZjlkZjZkMWM1MjY0Yzk5MzA5MDJiMjgyOWJjZDFhYTAxYjIwZGUwNDA=
4ZmNlYjcwMWM0NzgxMzhlOGRkNDFmNWU4ODNjNDMyZDI4YWE4NjM4MjlkYjNhZjk2MTM2MjI5Yz=
YwMTg5NTgzZTczMWY3Zjg2ODk3MWYzYWJkMzQ1NDk3OGQ1NTZlM2JkY2VjYzBhYTc1NmI3Y2Q0Z=
WM1YThlMDJhZDkwN2NjMjJlYThjOWVjMTkzZDM0YmFkMjExODY3ODQ5ZmM0N2VjYTdjNWVlMWU4=
YjExNjYzOTkzYzE4YzYzMmNiYWUwNDMwMjlkMDQ2YjBiYzMxNzdmODFiYWUzN2YxOGQzYWY4NTh=
lYzhjODEzYTZhYjc1Yjg4OTlkODI1MmY1MDM3MDA0ZGMyOTgyODk1NDFhMWI4NGZhZjRlYjBhNm=
VmOWM2YWUyOTUxNGZkMTY0ZDkwYjE3MGVmYWFjMjRkMzBkMGU0MjIxMjQ0ZWQ4NmEyNWUzZDU3O=
GU4ZWVjMzZkYjcwMTQ4ZWQ1MjBhMGFhZjQ5ODg4NjA2ZTE2ODRkOGJmN2FhNzBiOWFmZTkxZWU5=
MTM2YTMxNzJiZTAzNWZlNmNkNzMyMWJjYjliNmVjYTM4YzdhMmY1ZWFjNTQ2NWQwNGEyMDI5YTI=
2MjZmNzViNGZlY2E4MzJhZjdmZWIyOGQwNTRjNWFlMzY3OGMyMjlhYTdiMTMxNWQ2NDNlZjQ4NG=
Y1MDQzNzkxNGJiZDRhNmFiYmZkNThmNjUwOGNhNTJkY2M5NDk0ZTE2YzdlZjk2NGY5ZjY3NzU5N=
zFmMDk0OThkZTU3M2IxYjFlOTQyNzFkODJmZTA0NTk5OWJhZGJjN2E2YTVjNTUzMmYxMGM3ZDJi=
NjlmNTU1Nzg4MGUxMzkwZWUyZGRiN2IyYTEwNmMzMDk5ZTcxMWIzMzczZmM2ODVjNjZiMDJmMTM=
xODlkZTc4YjU2NjY4NjY2N2I1ODAxZmFhZTg1NmQyMDUxNThkZTdiNWI5YWQ2Y2ZkM2I5MWVlNm=
E5OTE3YjI1ZTBjOTY4YTljNDQxMDU3Yzg0Y2NlZGZhNzA1NzU0NTQ5OTE2ZmJiZWZiYjAwYWNiM=
jQ5NWY4NjE1ODczYTUwMjRiMmI3MjNkOWRhODAyYzczNGEyMjZhNDI3ZTc2OGM1ZTA1YWY0OTA1=
N2U1ODg4ZDdkNDhiMzUyZmM1MGEwYjVjM2Y2YzI2M2Y0MmJmZGJlNjk1OTNlNjg5ZmQ3ODFlNzU=
1MWE0YmJjZTM5ZjI4MWEwNmYyODUyNzZmMjJjYTdkYjE0NGI3ZDlkMTk3NWI4NjYzOWNlYjIwZj=
VkYTY4ZWJlM2VjMzFiNmI0ZjQ0ZDk0NjMyMjQ1ZjAxNDJhOTM0ZTM2ZGI1MDZlYjRiNGRiOWJjZ=
jlhYTMxMDdmZDUwZDEyMTRmYjA4NWFkOTk0MzZiMTc4YTg3YTU5YmI0MzM0MTkzZWI3YmNjMDIw=
NmM1NGJkZjFiYTM0ZTY1NmI5ODQwZDhhZjBlMzkwZWY0MDcxZjk1YzdhNjI3ZTA4NDg3MzNhNmE=
1ZWY2YzY4OTY5N2Y4ZjNhZjU5ZDhkODZjOTk5Nzc4N2QyMWIwZTBlOTUyOTRmMDkyY2E2OGYyNT=
E5YTc3YzBlYjNjYzEwZGVkMTljYTFmYWNmYzVjYzJkMzQ5Njk4ODljNjA5ZGM1ODQzYmRiYzU0M=
2NmOGRlMWNhMTNmNDVlY2IyZDBmYjdhOWU1NzY4YmE2NTFlNmE3ZGYxM2I4YzEzNmU1MzgwNDM1=
NWFkNDJmNjNlNjM0OGM5YzlkYmUzMzM2NmZkNjRiOTc3NmJhMmMxNGU5NzVhYmM5MGE1Y2IzYzc=
5YjkyNTIzYjQ4NDNlYWJjMGUyYzVjOTQyOWY0Yjg1Y2I4N2EwMzUxMGQ2MGY3ZGFiMGU2MzgwN2=
M0Mjc3NzU1MWRiMGZkMDQ1MDczYzA5NDQ0OGRjZWQ4ODJjYjQ3OTY5ZWMxNzE5NjZmNWQ3MmU3Y=
WQ4YjU4ZjQyM2EzMzMwZTBmODA0Mzc0ZGUzOTI1ZDYzNzEyMjllNjYzZmMwYjkxNjY0ZjQzMzI3=
YTY3ZmRlZGI4MWU2Nzg5NzI3NjI5ZTM2NmQxYWE1ODcyNTkxNGE1YjllM2ZjMDUyNmZmOGNhNjE=
3YjE2MmRkNjU1YmRlMDg3ODE5M2U1NjFlZDNmYzU4MTM3MmMxMjNmZWM4YzJkYjllZTczZjA3Zm=
FhZjYyY2IzYjg3N2M1NDVjMTQ4MDMzY2YwY2Q0N2EyY2MxZTk2MmJjNjU0MDQ0" target=3D"_=
blank"><img src=3D"https://braze-images.com/appboy/communication/assets/ima=
ge_assets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" border=3D"0=
" width=3D"50" height=3D"auto" style=3D"width:50px;display:block;margin:0"/=
></a>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DZWI2ODliNjdkNjc=
4MmYyZmVmYmFiZjM2NmUxZDRkNDdhMTAzNjA3OTUwNWM0N2QyZGZlNTg4NjczZmI1ZjA1ODAxNz=
E4ZTYzZDVjNmY5ZTRiNDhmZjcyNjI4MThmY2ZmMmI0YTJmZGY5MjgxMDQ3YTM4NmNmMThkYjIzY=
zJkOGZjODQyOTU5ZThmZjY3MWJkODY3ODI0ZWU0YTAzMzliODhjNjdiMGZhZTEwOWNjN2NmMjJj=
NmM1NzlmZWU2NDJkNjliNThhMzU4NWIyNzFjNWJhMzNmNDRkZjc2NjJhNTg2MDY5YzA2Y2I0NjE=
wMzgxYTYxMGVmYjk2NTg1OGM3MDAyNGEyY2M0YzA3NjQyMWIzNjYzZDY3NjBlYTZlZTQ5Zjc1NT=
dhOTJjMjQ3YjVlYzE1YjFlZjM2ODJhZWE3NzA4ZTM0YTM0MDRiY2YxNDQ4Nzg5MWY0ZTdiYTZlO=
WJmODEwMjQyZWMyZTc2MDYwMDgyNDRiZjFlZGE3MGMxNWE5ZWM5YWVjZmFjM2JlNjFhOWUzN2Q4=
MjEzYjhiMjhkNGMyYmU2YTM4MmE1OGMzMWNjOTg3YWJiMTQyYWI1YTVhOTJiYTdhZWNiOTM5Yjg=
0NmZlMWMzYTQ1MGZhMTY5YTJlYzNmMmIyNjAzZDBlZWI3ZGZjNWZmMTE1NjBlNjQ3NGE1YTAxMj=
A0NWZmNmRlYWI5MzE1MDU4ZjJkMzAyZGI1ZTUwYjQ2MDc3MGQ0MTkyMGMxMmY3OWNjYzFhNWZhZ=
DYxNDg0OGZlMzU5YWI4NGFjNDEzMTk2OGU2MzA5NmJhN2M3M2ZkODQxODc0NDhmOGNlODA3OWNl=
NTE2ZWZlNjM0OGE0ZTAyYTdlNzBkMTMyNzQ3MmE3YzViZDA4MGY1OGU4YzA0Mzc5YzMzNjg2ZmV=
mYTAxNTk5MWI1NWE2ZDI5MDY1MTFjMDI2YTE4MThmZmRmMDRmYTZiYzhjY2ZkMzY5YWExYjc2NG=
FhMGIwZmNkNmJlY2M4ZDI1MGI3N2U3OGU3YzUxZGE4Mzg1OTEzMTNlMTQwNjQyYThjMzY4OWMxY=
WZmMzcwMGEwMzIyNTBmMTk2NmE1YmRlZGY2MTQwZjYyYjMwMTc4NWQyNjViYjliOTE3ODE2ZTRj=
NjFmOWQ2ZjJjMmIzMTI0YTA3MWMxOGY0NjZkODA2NmNkMzNkZWE2N2Q5NDk1MDY3MGQyNjgyZWZ=
jY2I2OWIyMmMxY2JkYWNlNDBkODBkODIxMzFjMmU5Yzg4YTNmOGNhOWFjNTE4NGEzYWU0YzM3NT=
VmYmFmOTViNGE3ZDNkZGNlNTVkNjRhOGU3N2QwZjhlNzllMTBkNGRkY2MzOGZlYzlmMWM3NDNiY=
jU2MDY0YzNiYTUyODkyNmZiNjBjYmQ2NjU2ZjA5NGQyNDIwMWI1OWMyNzY3YjM5ZTc4ZDU1ZTU2=
ZTQxY2NiNDFkOTUzNGIxNjhlZTU1MWY2OGFkNTYzNGRiNzZkOWU4MjI1MTgzNTIxNGQxZjJkOTU=
wNDg3OTUyNzUzMWE2MjY3ZjM3YTExODFmZjRmZDVlN2U3OGYzNGJlZjQzZmNhMGRiNTExNDNlOD=
Y1ZGU5ZWU4ZmM4OTU5NmY3ZWRlNjhkNTY2MDhmYzQzZWI4MGVmYTkxNDQ4YWRlMDRhZWQ0NTk2N=
TY0MzA2YjEwODczYmY5ODk4YThiZGZiYmQwNjg3ZGIzZjY4NzJhMjk2Mjc5YTgzZmVlOTg1ZDE0=
YTUxMTYyNTIxNDU1ODRhMmExNmMxNWM4ZWE2NGYyNzIxZWE1MTU3MWRhNTJkYzlkNDNhODhkNDB=
lMjA2ZDEwNTY1OWZiZDZjNWJkNTA2MzVjYjlhMjQwOGE1OTIzNDc2ZmZiNzZmNzg1MmY5MmJkND=
Y3YTk1ZDkwNThmMTY3MWFiYzUzYmIyZjA5NmQyOGUyYzhiNTViOTIzYzQyM2I1ODA4Y2NhZTIwY=
zRkM2UyYTg2OWU4MTY2MjEzOWZiYTRjZWFmMjMwZGQ3MDY2NGZmNmY3YjBkNTRmZDY2N2FiZGQz=
MjI3OTVhYmIzZjFjYjhkMGZmZjdlOTkxZDY2MzFlMTExYTJiOTRkYzE0ZGRmOTliZDZiYWFmOGY=
zNWRjM2U5OWZkMzJlODEyNmNmMWIwY2Y4OTBhMTVhZDQ5Y2MxOWU0MTNjNjNjYjM3MzUzNzZiNm=
ZmNGIzOTBiNDQyMGU3MWY2NGVlYWE5MGE1MTI2MTEyYjFlYzRmMjU5YWUyYWU5YmVkNzk1ZTc4N=
GM2MmY2YTNlMjE2ZDJlYjhlNDhhZDFmOWJlMDlhNmEzMDZiZGRiOTlkMmY5MWU0YzE1MmJjMzc2=
YTE3NWQ1NDEwYzRiMDUzOGZkN2UyYjI1MTAwYTA4Njc3OGRhYTVlZWJjYTA3MTU4OTQ5ZTllNzJ=
lZjAyNTVjNDIxODZiZjM0ZDlkMmVhMzc4ZjI1YTQ2NWVhZmFlOWY0MWQ3ODE5OGRkMmIyMzE0ZT=
IxMTk2Mzk2ZDAwZTg1MzM4MTE2MmU0ODM3MTljMmVmZTllN2JhZTc1YWQzNTVl" style=3D"co=
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
                              <a href=3D"localhost:1333?u=3DNjAzOWNiNGUxZmY=
5OTY4ZDRhNWZiYWUyZWQ5ZTU4YmJjZDY4NTJjYTQ3NDBmNjA3NDY0MjhjNDQzNzI2NTA5MmYwMz=
JiYjgwMzFjYmJiZTAyNGZlOWUwMmUxNTE2YmE5OTJjZGNlY2VhYjc4ZjEzOTFmNDkzNDk1ZGRhZ=
TRlMGU3NzBkMTBjY2Y4NDc2OWEzOWIxOWNkYTk2Nzk5MjAyODI1MDgxYmE0Yzk3ZjU4YWFkNjAz=
OGFkMDNjZjhiYWQ5ZGRlMzBkZTFiYzcwMGZkMjBmZmZmYjM3Y2VkMjQzYzIzNjAyYjNlNGQ2OTN=
lY2M2MTJjZTM3MTdhODZkZTBhNjI3MGZhOWE2Nzk3ZjU3M2M5NjBhMjM3NmI4OTkxMDk4YTMyZT=
E1ZGFmYzllZmZjODkyZDVmMmM5NTA0YmJmNzkwNWI5Y2E2NjI4OTUyNWVmMWU0YTY0ODJkZGI4O=
DE5OTc1MGZmNDc3MWU2MDZiY2U2NmI0Y2U3YTc4YTIyMTBjNDM4M2ZjN2U5YzUzNzU1ZWMzNjc0=
Y2VlNjNhNzUwNTYyZjdkNDgxMDlmOWU3YzU1NDc4Njg4ODliYjEyNzRmNzQzYjg1NmJhZjNjNDR=
kZmYwNmYzNTc0NDk5NGZlZjI1ZmUyY2FhNjEzZjQzMThlYTU3YmM1MDY2YWJiMmY4OWJjYjAwMG=
YzN2FmOTk2M2M2NWQ4YTRlMTJkZTM1YTMwNGUzYzE1YzExMWY3MGVlMmJkOGZjMjFhNmJlYTVjO=
WQ0NzZlYzFlZjFlM2M3YWQ2NGZmZDFlZTY2MzUxYWZmMjA4NGRmZDE3MjY0NGJmMmNiNDU4N2Uw=
Zjk4YWU3NWQ0NmY2MzVjNzIyOWFjNzYwNjUzMWRjOTUyNzc1YjRjZjIxMGJjN2JlNDM4ZTMxMDE=
4ZDU1Yzg3MGFmOTA2ZDExNTc4YTFhMWJkY2E3MGVhNzg1NTVmNmFhMjZjMWFmNzhmMTcwZmQ3NG=
I5NzlmOWI3MTI2ODQyMTJmZGM4MWYwMjM5NjcwNjNjM2E2YmQ1ZWIyODRlYmZkYjQwNDU3NjE2Y=
TZkMjQ1ZDNlMjA5MzBiNzYxODhkOGViZjg4MWM5OWE0ZDQ3NGY3MWVhYzM4YjYyZWUxMTYxNjM1=
MTRmYjg2MDJhNWZlY2NmOTcyMjFlMjkzMTBkZGY4M2ZjZDZmM2VmODAwMjY4NTM4NTlkM2FkODh=
kOWZiYmVjZDc5MzY0NTRjYTAzNDYzNmQzOGU5YzM1Mjg1NDMzNWM4M2VjNTk1ZWJlZTAwMWE4Nj=
YxMzNiNTM4MjEzYThhZDk0ZjQ0MTMxOTc1Yjc3OWNlMjAyMjk4ZmEyMzAxNzI4MGQyZDhjODEwY=
TUyNjYxOTAwNmQyNWY2YjM4M2UzMzUwZmYxYzNjNmJiMTkxYTFlMzU2NTQ1YTM4YTgwZTFhMWM2=
NTAxMjZjNzQyNmExOGY5MTA3Y2EwYThkZWY1YjMwZTAzYjY1NDFmMTU2Yzg3ZGFhMGNlMWRhYmF=
jNTI2MjAxM2QyOWNiMzE3NGVjYmU3ZWEwMWJkOWQ1OGIwMzNlZWExYjI1Mzg1MmViODMxZjFhOD=
czNzRkMTU3ZWU1ZjU1NDVmN2FmYjFmYzM1OWM1YjkxNWFlNDE4MjNjOGU0Njc5NzBhMGMzMTUxY=
zBhODU2MzYyMzIyZjc5NzM3MDRlOGZhYzVjNWQ2MzE3ZmM1MTBjYzE1MzQ5MjNmMTk3NmNlYzQz=
ZGQ2NjQzMGZlYjRhNTkxNDczZmRmYmY5YWY3MmQzZWY2YjFmMGZlYTc0Mjk0N2JhNGYxZWVmYzc=
1OThiOGY5NjZmMzgwOWJkOGRkODRhOGU4Y2RlMWJlNGI5Mjk0YzE5NDdhNWNjY2RiY2U4MmM5N2=
Y5NDExNDgzNDBmMThiYzIxODBkZjRiZWIyYzVjYjM1ODhmMTAwZWUwOWExMTExOWRhY2U0YTZiZ=
GVhZTc2ZDVhOWY3NTEzMTIxN2Q3N2QxNDYyMzYwMzMzZTU5MWZiOTE5MzAxYjFkN2FlNjNmY2Jh=
ZDkzNjc1Y2Y2OGY5YmNkMWIxZmY5MzI0OTE2YWQzM2U5Y2ViYjVkMDA1ODJhYzI1NzBiZTdjYTF=
jYjc0NTcwMjJlMGE0OTk4ZDAzYTFjOWRkNTE4MmEwNmVlODgzMDMxMDJjODU5YmZmM2IwMTc0M2=
E0NTQwNTFjOGQ0ZTM5NDhiYjVhNDg5ZmJjOGZhNmQwOTNhNjFjNmVmNmJkOTZjMDViMjEwZGZiN=
DUxODliZTcxODIxMzMwMjllZjZiMjFkNDEyYTc3MTc3ZDA3NzQ4MDIwMGUxMWQ0MGU1YzkxNjYx=
NGNjMmVhZTAxYjg2OTM5MmI5MGE5NDNmYWIyNWI2MjU1MzkwNjY3ZDFkZWNiOGQ1ZWY3ZWI0NjE=
0NGIwODA4OTlmYjQ0OGJlZmM4MzcxYjAxNzQ3OWUxNjAxNTliZTE1MmRkZGE2NzI4YjQ3ZGRjYj=
A1ZDg2Yzk0ZDZlZDIzNDQ1NDdjY2U3ODRhNTBmMTNmZTBiNzYxOQ=3D=3D" target=3D"_blan=
k"><img src=3D"https://braze-images.com/appboy/communication/assets/image_a=
ssets/images/592f0c4c1b0e4d2db6c88e4d/original.?1496255564" border=3D"0" wi=
dth=3D"50" height=3D"auto" style=3D"width:50px;display:block;margin:0"/></a=
>
                            </div>
                          </td>
                          <td valign=3D"top" align=3D"left">
                            <div style=3D"border-bottom:5px solid #fff;font=
-size:14px;line-height:14px;font-family:arial,sans-serif">
                              <a href=3D"localhost:1333?u=3DNDgzZjc1MDliMTQ=
0ODU4NmUzZjQ2Y2NkYTA3YmM1N2RjZWVlNjNiODJlNWVmODcyMzhjOWE5ZDhlNTE4OGU5YjkyZj=
cwNmE5NjQwMjA4Y2UyMTQzMjE1ZGYzZDE1OGIwM2UyYmZiM2FlZDQ1ZGNiMzM1NjI4ZGQ5NGRmZ=
DdmNWNjNThlZDI0OTU5MDYxZmY5NWU4NjU2MWZiOWM0MDNjYjQ1NGI4ZjZiMjQ4NzZmOTllMmVj=
Njk0MWM3ZjU2ZDllOWFiYTQ5NDVhZjRhMTRhMmEzY2JmNzYyNDFjNTlhMmIxOWQxMzU0YmUyMjk=
2YWNkMGVkYjg4YWZkMjcwNGY0NzZhYWQwNDlkYjMzNTlhYmM5ZGU3ZDk0YWIyNjAwZGQwYmMxN2=
YwZGQ0ZmQ0MWM0OGZjNmM5M2Q1YjhjYmI1YWUwYThiZDQ0MmNhYjg4OGUyN2MzMmE1NGRkMGU3M=
DM1Njc1MWQ2NzVmOTRmMDhkYzM3NTQyZjRhODFlZTY3YTVhM2Y1YzJlNTdmNTg4MjIzZDUwZmFh=
YWRhM2U2ODZmNDU0MTYwMDg1ZTcwNTVkYmI4YzI0MTE1NjM5YjIzOGEzYjkwNWMyZmFkNjkwZjk=
wMjA2ZjViZmVjZjZkMDA5N2VlNzY4ZGNlZGJkMTA2YTA4YmE2OGRlNDEyZmZmMTY2MmIyY2I3NT=
NmMDk3M2VmODEwMTkyY2MwOTRlNTg2YmE4NDdhMWNhOGVmN2VmZjY0NDVlZDIxOTY3MmYxOTM5N=
2VmYWZhYWYzNzU3YWI2Mzc5YjM5OTJhZWVhNDFkYjE0ZDUzZTM0Y2E4YTk2Mzc1M2YyNGIzZDYy=
NGFjNTkxMmJiZTdlMjJkNWZjZGVlYjU5ODdiYjMwNTgwMDRlNzQzZjQwNTBkMDY5MTcyOWY1NWE=
0YTM1NzAxMGM0NWUyNGZhMGNhMjA3NzJjMDc0ZDMzYzliZWQ2NjBiNmNmYTNkMDFjYmFhM2U5ZW=
YxZTQ3MDc2MTdlYTBkYTBmMGJjMWUwM2U5MzgwZTk4YTNiNDdiNmI2YTRiZDY2OWViOWM1N2MwZ=
TAwNzRhMjI0YTlhMTE1ODc1ODcxODFiNDViMWU3YTVhNDZlNzlmYTA0MjZmN2RhZTBjYTNhZmRj=
NmQ1MTdmZTlmZjMxNTVjZjcxYmM5OTBjMDY3NDMzNTE5NjhlYTIwYjMxNGJlY2VmYzA4NmIzN2V=
hNGUzMGViZjRkNzc2OTJhN2RmNzE3YTRkMGNiMzIxY2EyZDBkZGRhYjBhYzJjNWI2NmZjOTllMG=
EyNzFmMTZhZDYyZmQ4NDY2MjcwMDc0OTAzNzAyMmFhZDlhNDYxNGVlOWY3ZTllNmFjZTM0MmUzY=
jEzZjhlMDZlNjkwOTg5ZTk2NmRmMzIyNmJkYmZkNjM5NDBmMGNiYzg5Mjg4NmFhNjBlNTdiMmJl=
NjM1MDQ0MGU5NTllYzA4Y2YxYTY5YzcxOTA2YWFhNTIzNzY1OTQ0NjllNTVhNjVhY2Q2ODkyZDV=
iYzU2YTU0NDA3NGY2ODYyZDNiMDQ1MjlhMzFiMzgxMmRiYzkxYjkxNzYzZjVlZjEwOTg5ZThjMm=
FmMDU1NWMzMmZhNTQzY2E4YzEwNTE0YmRhN2I4ZDE3ZGVjMGQ4ZDQ0NTk2OTM3YjZjMGVlYmJkM=
TAxNzVmZjE4YTYzMzZhNjA0MmUzMzczMWRmYTc5MGJiZTNlYjQwZDQ5ZWFhNjMwZWU0ZDA5Mjk3=
NTcyNjI4ODliODllZjdmY2NhMmJlNWY3ZjJkYTVlMDdjNTVkOWRhN2JkOGI3OWNiNmQ0ZmI5ZGV=
lZTY1ZGYzZThiZTRkMDUzYjYxOTVlM2I4MjczNDg5ODJmNjlhN2M2OTIyMzhhMzk2ZTRkMDY3Yj=
RjOGE2Yjg2ZjFmYjJmMmJhYjM5ZTBhZmQ4MGMyZTBhMTk4MTYwYjBlMzhjNTBkYjJiMWUyNWNiM=
jViMDc4NjYzMGJkZDAzMmJhOTk2ZGU4OThmY2M1NzY5MWZiMDkzMmFjZmZkNjE0YzU4YWU4YTg2=
N2NkOTI2MTNjYTg3OGY2MDUzNTg5OTk3ZTA1NWU3NGFkNWYxYzViZmZkYjc2NjRkYzNhNDFkYWV=
mMTIzNDkzNzdjNzYzZTk1NzI4MmU0NDgzOTJkN2I5ZGY1NTBmODA1MDgxODE3YWU4MWRhM2FkMz=
c4NDAzMjMxN2UwMWI1MDBmMmNlMDNjZTlmYzU1MDEzZjViZDEwNTVjYmZhZTBhMjc5Mjg0NTEwZ=
DIwNDU1OGU5NTNmNGQ2YTY1YjMxMjQ3MzgyNTQxNWMwNzJhYmNlNzZmNDMzYjM4OWU4NDMxNzQ1=
ZDY0MmI5Y2M5NGI2OGNkYWVlYWVlMjUxMzVkZDk5MGJhYjZiZTZjZmQ2MDdmYjIyNjJmNmNjYWJ=
mYzVlNTM5YWJlOWFlN2VlZjhiNDY0NTE0OTNhYWVmOWExYjIxNmZjNTE0YjcwZmVlNGQzMjM3OT=
E2ZTNkMjk1YzBmZTdlNGYwZDMzOTNjM2JiZjQwNzM2NzRiOWUyNQ=3D=3D" style=3D"color:=
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
                <a href=3D"localhost:1333?u=3DMDA0NDk2OThmM2RkNTVhYjE5MzMxY=
WNhOGUyNzdhOGU4NmQ5ODFkMjYwZDFmYjNjYWI3NmZiNjQ2NTMzZDk1ZGI3MTQyMjYwMTM1YTZi=
Yzg4NDBlZTdiY2M0NmRhZGU1ZjE3NDQyOWU5NTA2NTA3YmJjMDAyZmM1NjZjNjJhNDExYjEzNmI=
xODM5N2FjNjgxYjY4MWY5ZTA0OGYxMjA2YTExZDNiOTJlNmMyOWM3ZmYwMzRmZGI0YTE5ZWE3YT=
Q3NzZiYjk1OTllOGRjYmVlNzg4NjZmNzcyNzQwZGVkNTdlYWY2YTUwNTM1NGZiMDA4YWQzOTgwN=
2JjMDY1ZDBmZDY0M2IzZTRhYTA0NTIxNDc3MDFlYmQ5OWY1YTExYjc3N2UwMGMwYTkxMjE4ZGJj=
NWY1ZjdjNjQ3ZDEyZDNlNmYyMzk0ZDVlMjAwMzMxZjlhYzQwN2VkZGQ0ODU4YjdkM2Y1NzI2YmV=
jYzJmNDdmYjJjNGM5MWUzMDRkZTUyZjZhNmVlNTk1YmFkN2VmZDllMTQzYjdhNzVmMDgxNDhiND=
AzNjZmZWRlNjA1NWRlMWI5ZjBiYTk1NTdjYTRmNzBiMDc0Mzg3MmM4MjcyODVlYTk0Mjc1ZjJjZ=
WMyYzM0ZTkwNzgxOGYzOGY2N2JkZTYwNGJmYmM3M2EwOWNlNjQ3NTRlNDBhNTQwNmQzZThiZDMy=
OTgzMGQ0MTJjMTliY2ZhNTI0ZjNiMDI1ZjY1N2U0ZGY3OGZlM2E0ZmFjMGU2YmQ2NmQ2Y2U2N2I=
1OTEzYTg3NTI0NzI3ZjM0OTQ5OWFmZjUwNTcyM2M2YmRiMzI1MzQ5NGNjNDlmNWE0NTUwYTNhYj=
ZhZGZlZjY5ZjhiYWU1NTIzMjNkNTk0MDA5YjE3OTA3Y2E4ZTY3YmM0YjUwMTgwYjNlYzViNTEzO=
DdiMDk2MTZhMTg0MDYyNTZiMDA4MDljMTViODU0NjE2MDNhMTk5MDAxM2JjMTY2MTlhYmE0YmZk=
YmMzZDBlYjM3ZGJiZjEwYTRjODg5YTgzMTI1NDdlNzkwYjA4ZmYyMzNjMDE4NGQxOTdiYzg2ZDl=
jNWYwYzAwYmE3MGQ5MDJkNDY5NzdkMTUzOWM2ODkzYTJkZWIzMjBiYjg1NjY1OTZlZjUyMDBlOG=
E5NTZjZmQzNmMwYzM2ZTRmY2EyNmRlMGVlZjU2ODllMmMwMjIzMzQ3NDk2Y2FhNjU2MDViZjFlO=
DZmYTVkMWRmOWEyMDZkYWI5N2Q2M2ZhNjExZTUwZDg0YTM5NDNmNzllNjg4ZTM5OWUyZjY4YWMy=
MmIxODY2MWRkOTVhMzE3NWI3YWMxODkxMTI0MGUyMjc1ZWVkNWZiZTFiYmE3OWZjN2RhMjYwNDI=
5YzQ1ZTNjMGU5NWZlY2ExMzhiNjI1MGIwNjBlOTkyZTQyYTA3ZGVjNWNjMWEzMzRlNjA5MDU5Nz=
hmY2EwZjEyMDc2MDA0MDg3NDBkMDRiM2VlY2NmY2ZjNGFkNTNiMDM0ODNjM2M3N2EzZWM5MmFhM=
2E0ZDNjZDI5MTM1NjMxNjNjZjExZDA5Zjc0NjY3ZmQxY2IwNGZiMTZlYmZlYjhkMmJiNDg2Nzlk=
ZWYyODE3Zjk0ZTljYmY1NTA1ZjFiY2QzNmFjNmFiNGYzNTJmOTA5ODY2MzdkYmE4OTU4MjVkNjg=
0OWE4ZTAxNWY4YjFlMmI2YWM0NzE1ODMxZDY4YzJhYzI1NGQ4MTY2ZGU1ZDkxMmQyOTdiMDZkYj=
g1MGZkMDNkZmU2OTUxYzczZWMxMGE2ODU0NDliYzFjNzgxMzFiMzMwZmZkNzhhN2I2NmViNDNhN=
TVlNDQxNjRlZWExOTRjYjc3OWFhMTY3ODYyMzYzMzI2N2VlZTA1M2VmZTllNjRmYTA0Y2FmZTVk=
NjMzM2IxMjA3Njg1NTFkM2U3YTAxMTdmYzJkYjUzZjE3MTJjYzliNDQzM2QxNDU1NTFjOTkyMWI=
xYzliNjAzNTIyOTVjYzZhNmQ5Zjg3YWMwNWMxOWY5Y2MyNjJjYjYyMGU3OTEwZTdjNjM4ODVjYj=
kwMDZlODM0ZjU0Mzc1OGE0MzU1MzY5ZjU1N2YzZTdmMWIzMWNiMzFhOTkwODQxMmZmZjJhMDJjM=
DYzMGJjMGZiNjdjMGZlNGMwMGY4MWFiNmQyNDdjZjZhOTdlNTJmNGRiZjMyZWNjYThlYmIxYzM2=
ZGFmOTg0MmEzYzVkYWFlOTMyYzcyZDMyMmUzZThiMzY3YmVmNWEzMDFmZTU5OTEyNjZkMTVkMjl=
lNDNlYWZkNzdlMDQ0ZjM2Yzk3Y2ViY2JhYjBiNjM0NjVjNTJhNmExYmE0N2M5ZDVkZjVjNjY4ZG=
E1YzRhM2FkMGViZTk2ZWZlNmIyOTQ1N2MwODU4Zjc1ZTg4OWE1NmZhNjllYTMyZGNlZDA2Y2ZmO=
DdlOWE1NDFlZGY5N2E4ZWQwNDI5ZGE4NWFmYmE5OTZhNzA0MjhkNDhlOTI2MzU0YTE5YTZkMjk1=
YWRkNjgzOTJmNzg3ODYzMDQyOGM0MzY3NzVkZTQ1OTk=3D" style=3D"color:#06c;text-de=
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
                  <a href=3D"localhost:1333?u=3DMmM2Y2IxYzBiYmU1NjQ2ZGMzNWU=
0YTE2ZDBlYjg4NWI1ZDQyMGQ3NzRiZDExMDg3Yzk2MmYyYmVhYmU2NTgyMGM3OTkzMmYxYWJjYm=
QwZjc5MTc0ZmM5ZjVjNTBmODNmMDMxYzY1OGE5NTM3NjYwMTc4NWRiNjhlNTI4Y2MzOTMxZmZlN=
jVlNjVjNjk3MDcyYzg1YTk4Y2ZjMWRjNzAwMzhhZjIxYThmOTM4MDEwMjFmMzYyMjY2MDQyNDBm=
MDMzMGVkOTlkYTg1OGYzYmE3MDMwOWE0MmExZWFjYTFiMTQzNDI3YjY4MmJmMjcyYjA2ZWY0ZTU=
zMWU2YzZhZGVjNGQ3NDU4YjE0ZmIxOTYyMmFiODNjOGYyYTI5ZDFmNzQ4OTYxNTQ1ZDJmN2I2OD=
MzYzQxYmM5ZjNjNTA5NTViMTQzMWYwYmJlODU1ODlhNWM0ODQ5ODAzZmM2ZDM1Mjk1NDYwM2YxZ=
mQ2YmE4NWYxNTEyOTM1MjA0MTliNzk3NGJhZTUyMWM1MzVlZmE3NDZmNGJiN2I5YzM0MGZiYzhm=
N2QxNmI4MTRjMDZhODM1NThlYjA0M2E2YmY4ZDQ1M2E2ZmMwMmY1YzdjYTcwOTc4NGM3MDYyOGU=
2Zjk2MTQyODUwMzdiNDg2ODY4NjE3YjlkNmFlN2FhZmJmYWMwOTc2MGIwMjlkYzBjNzMyYjRjMD=
hiNGMyMTJjZDdiNzIxMzUzMzkzNTIxMjZhMTMzOTBhODUxNGVhMDg0MjE3ZmI0Mzk0MzQxN2EwO=
DNkY2NmMDQ0ZGJiYmZiYzQ4NmFlYTUxYjVhNDkzZDY5Y2I4MGJhNjU2ZjYxYzY3ZGU0MzhmOTNl=
OTVlNjIzNDJjZmRlNGZkYzIxYjhlMzA1YTBlOWI0YTU1OWRhNzJmZjg5YzIxNGVjNmMxZjAzNDB=
jODA2OTYxYmZiNjlmZDE0OGRlNGM1YTBiNjcyYjI1OGI3YzdkMzlkMjhhMzA3MmZkOTM0MzFlZm=
Q3ZmM1MzRlNGQwZmNmNzZiZjFiZTkxYTBmZGRlNWI2ZjAyNGIzMzZiZDFjOWE3OWM0NzAzYTMyM=
jNhMDc5ZTZlMWU2OGZkYzc1MGUyNjM0YzgwYWQ1OTkxYzBmOTAyMTVhNGIxNWY3ZDcxMGI2M2M5=
MDc5MzFiMGM1YjY4MzdjMWU1ZDQ5NDU0NGE4NWIwNGU1ZDVjZTY0YmQ0ZGM2MzRkZmExNzkzYzR=
jNDkxODM1YWM2YTM4ZDgxYjIxZWY2OTBlMmE0MTNmYmNkOGE0Y2MyNWJiMjdkZjU1OGYzNGFjM2=
IyOTYyMjA3Yzg0N2QyOGY0MTUwOWFkMzhiOTE1MDNkZmZiOTkyYzk2MWNjMGZjMGU2OTlkZmU0Z=
WVjMWY1NDVhMDJiODlmMWQwYjA1YzZmZWFhYzAwNWNkNjNkNjNjMGMyMzQxZDZmM2M1ZGNkMTU5=
NzBiMjIzZTY0NTMwYTAwN2Q4MDU1NzZkMzY2MjA2YjQ3MzY1YjcyODc3MzdjOGY0MDNhZjMyNWJ=
lZDcyMDFjNmViNWIwZGYwMmRjNmQ1NGY3ZDdlNTJiMmY0ZmRjYTExZDkyZDI5NThlNjZhNWExMD=
U5ZjUyZWUzYWJmYmMzZGQxNzc2MzE1YzYzODdlNzlmY2M0N2MzMjBhYWRmMWMyMGZmMDQ3ODg3M=
2E4OGUxMDQ2NjVmOGE0Y2FhMThiOWVlMjY0ZmZkNDcyNTkzNjk0MGYxYTU4YjE4ZTEwZTY3Njdi=
OTYyMDg5ZWRmODQxMDgwNGNkNDM2ODJmZWQzMDQxZjUyMWJkODNhNjExODZjMzcxOTk5NDcwNWU=
2YjJkOTYyNjAwZjNiYjBjYzExMTJiNjJiYjlhYjRiMzgwNDUwNWY2NzUxODEzYjk1ZmRmM2NmNT=
JlODQwZWRkZTljOTQ1OTZiZTY0Y2RkZDk3NjQzMWVmYzE5NjRmYzFkNGY2MmZmMjc3Y2MzNDdiZ=
DM5Nzk5MjJhODBjNGRiY2RiMjhhNWRhZDkxYzc5YTg4MjdjNzRjYjI1MGZjZjIyMGFhMGE4ODc5=
Nzk1ODAzMmZjYTBmZjU3NzY5NDBiMWI2OTkwM2Q3MDk5MDkwODcwYWViYzI2NjdlM2NmMGJhZjM=
3M2E1OGI5MDZjNjZlNmY0OGFhZDM1NzllZTkzMGE5NjE5ZWExNGJlNmYyNTcxNDk1MTE0MGZjNW=
Y3M2IxNzBkMzhkMzk4NTU5NjJkZTlmMWI0ODE0YzY3ZTk1NjA4YWIyZDU4NTgxMjk0YTY2ZTVjN=
zZjZjM1NzkyNjU5Y2E2NjdkYjIzOWNmM2NhNjA5ZTUyMTM2NjgwZTcxOTZhZWViMmEzODdhZjQ5=
MWQ2YThjMDc4MTI2ZjA2YjlkY2NkZWFmZjAyZDQxNTUwOWQwOWU1MDFkNDE2NTBhYjkwYjQ2MWQ=
4ZTM4MWRiNTIzODFkODE3OGQ2OTY1NTlkNDQzMmM3YjAwM2M2YmFhZWQ1MzU3OWRmZmY0NDc2NT=
AxNDQ2ZTU1ZTA2OGNjYjU2YzAwMDY4MTc3YjMwOGQ1YzJjYTRmMzYxOTRiZjMxZjNkN2M4N2Q3O=
DQwYjMzY2YxODNhNzFkYWUyNzMzYThkZGVkODUwYThlOTUwODU1YzJjZDE3YzVjZjZkNmZjZmE2=
OTU2ZDRmOGFlMTFmZmM4M2Y0NmEzMWQxZmM2MWIxNjM0OWFmYmY2YzFmMWZkOWZhOWNlYzhjZTI=
1MDYzNGVlNTJhYjI0NTg4ZDM3NzI4ZDRkZWRjZTliMGIwNjNmZTUwMTQ4ZDNmZjg0YjlhZmFiZD=
Q4NWU3MmVkNGNkMmU1YzBmNjJlMDdiNTJiYjUxMjQ4OTVmYzgxZjM3NTBmYzdlYTc2YTViOTUwM=
WM2ZGMyOTdkNjJhNTAzMGFlYmY0OWMyMQ=3D=3D" target=3D"_blank">Unsubscribe</a> =
from this type of email. <a href=3D"localhost:1333?u=3DYjg4YmIzMzU5ZTBiZmMw=
YjI2NWUyYTgwNGVlZTk1Y2MyZDg4MTIwMDBkOWQ5NjZlYWNmMTM2NTU0NjI1NmIyOWQ2NzZlMTY=
xNmUxYzc3MTRjMmZjMjM3NmJiOGYwYTI4OGZmNGZkMDA2MzdmNDI3MzA5NTkyNWEzMjMzOTAzYT=
Q2ZjZhOWI0MDJhZjY2ZDg1MWJiMDA1M2U3ZmRjYmZhNjk1YWNiY2I1NTBlNWIyZGEzMmYyOWNkZ=
jQ0YTg2NTE0Y2ZkNTNjNmUzMzg2MmMzYWZhNzQ2OWE1NDA0ZGMyZGEzNjc0OTE2NTFiM2Q4YTE3=
YTg4ZTIyZTdkYzU3MWM4MjRmZDc4ZjE1YTFkYTI5Y2ZjNDQ2MjE0YzI4ZGMxYmQ4MDM5NjM0ODl=
mMzg0ZjQ3YmMwYjdlY2RhM2IzMzZkZTQ1NTZiY2EzNGU1MDZhNWFmMjcwZjlhYzEyZGZjNjJiZj=
ZmNzBjOWQyOTAyNGVlYjA3ZGNhOGJjMDVjM2RhMDExNzAwOWNjMTFhYjRjZjc2ZmJkYjFlNWJmM=
mM2OWNkYzRlMDE2OTYzOTlhMGQxNWI3ZjY5ZjFkODhiOTZmMmNlZDQ5NjE5YmMyNTkwNjhhNWRi=
ZTA1MzJkN2RhMWUzZmE2YzA4ZjM0ZWI1NmViMWI2YzFhMGUzNDZjMDQ5MTI0ODRjZDhhNDlmMmM=
0MDU0MmY4MDM2YjJjNDVmZTgwZWMzNDRlZGVmNDFjYmVkOTQzZDhlNGY4YjAwNmIwZThhZGYwMz=
IyMzRlMTU4N2U0ZWE3YTZhNTcxMGVkMjcyNWZiMWIzMDM2MGU1N2JhNTVhMDg0ZGRiNGJlOTFhY=
2FiZDQ5YWIwODdmNTc3NDFiODI3MmU0OWFlYTQyMmNlYTYwOGMzZTg5ZTcyMzE5YWFiMzE4ZTQw=
NjUwNDYwMDg1YTVhYTJkZDFlNzM4OTRmNThjMTUyMDA2YTc1NTZlZGNiM2IxOTA3Y2UwODlmN2J=
lMWFjN2M2NTFkZjliMGU5ZTcwNWVjM2M5MzE1ZGRjMmI2YmY1OWM1Zjc1NWFlOGJhODJhMjllNW=
Y3MDRlZjQzNTE2NjVjZDhhMjNlN2RiNTg0Yzc5N2Q3NWE1YmJjZTYxN2M5MWExOWNlYWFiNTdhY=
TQxNWY5OTc0ZDI3NWY4ODhiZmVjYzMyNGVkN2UwMmIwNzAzMjVkMjg0N2Y0ZjY0Nzg5NTVkMzQz=
MDdlYThlNmEwNjNjZmFkMTEwZWFlNWNhOTY3MDhlMDkyYzI5ZjVjNTgwOWU4MjdhY2VkODkxYjE=
xMWViODc2YzI3NTdiMjdhNGI2NzUzMmFmMTg4MzY4NjIzNzYzZmE3OGFmN2IwYTU3YjJiMzBmZj=
UzYjVmYjIxNTgxN2YyYWJlMGM3YTEyZTE5NDM2N2VmZjY5N2YyMTg1YWVkOTY4ODMyNzgxOTYyY=
2JhMzA4OGRmNDVjMGQxYWRhNDUwMTE0MmMzZjAyZGFjOGJlZDg1YjA1NzMwOGFmMTFiOWVkNWNm=
MDE1MmQ3YjMzZTgwZjc3OGMxZTYwNjc1ZjdkNjFhYTU0OWNlZDUwNTQzNjIxODI2YzZiYzRkNDB=
iYmI0NzMwOTY4YWMzNDNjMDgxMTVlODQzMTZhY2M4M2RkNzNkOTQ0MjYyNzQ5OTBkN2Y4NTdlNG=
Q5N2U3YTdjOWZjYzc0MDdjZGIwYjE4MTM5ZmRhNTk2YWQ1NGQ2YjcwYWNhYWMzYmY3YWNlMWZjY=
ThhNmVmYzBiZjQ4M2IyMzhiNmRiYTI0MGZhZmI2NzBhZWQ4NzUzM2U2ODkzY2U4ZGVlZDNkZDEz=
MzRkZDU4Y2U3YTlmOGZlZWExMGVmOGE2ZGMwZTM0NDhjNWU2MjFlNjYyNGY1YTQ5ZmMwMDhhNjU=
zN2RmOWIxMWMzNzM2OWZhZThiZTRkY2VlZDdhYWI4ZDM4MjIyZmMwZWQzZTlhMmY5N2QzOTU5M2=
JlZWIxOGNkNzc0ZTE2YjJiNGYxMjkxMGRlYzYxNTc1OWExNjRlMjFjYWJiYzJmYmI3MTJmZTdlO=
DQwZTM5YTQ1YmE1M2EzMTE0OTM0NmQ5MTE1ZTAwMjQ0YTVmNzk0ZWI5Yjc3NzdkZjAwZTYzNTRm=
YTczOTE2Mzk5MzM1NTcxMWZmNWUwYmRkNDdkNTcxYjJjOTFlZGZiMmY0NzQxMzExNjUxMWExMzB=
hYjMyNzIwNGE5Yjk5MmQwZTViN2Q4MmFiYTBkYjIwODcxYjU3YWU3MjU1ZTYyYTVmODk4ZTJjOD=
Y4NzkwNGJkMDFjYzAzZWU4NTg1N2FlMzM2YTBhMGFhZjA0ZGNkZjkxZTNhZjY2YjI5ZDMzYzZlY=
zhhMjUzMGRhNmUyYmM0YzE1N2UwMzNmMmVkNWFlODliMWZmYWEzOTljNDY1MjE3ODRkOTVlNTc1=
MDEyYjVlMDNmNTdmMGEwNGE4N2NjNDk1MDc5ZTFiOGNhMzg4MjI2MjNjYjkzNmEwZTUyNTI3OTY=
yNjI1ZjM1M2JlOTVjYTExODI2NmMxNzdiNTY0OGRiZGFmMjFiZjkzODkwN2VmNjBkN2JiODc1Ym=
Q2YTQ2MTRhMjZjZDEwZmJhMzAyMTM4MGYwMzA2ZWRhNmFhZDg1MDE5MzcyMzNhMDc3MTJiOTM1M=
mM3ZTdhYmVkMGFlYWMyYmRlZTkxNzJjYzQ5YmI3ODQ5ZmVjOTUzZjFjMDFmNTYxNmFiYTcyNTE0=
YmFkZjcwYjMyYjQ3Y2U2OTYwZGM3MzNmZTczOTU5MzFjOWFjYTEwYzNkNmVlNGI4YzUwNDcxN2Q=
wYWQyZjE0MTQ4NWU3MGIwMzRhMDNiOTRkM2NkNGYzNTgyMmNjNTc5NDIxOThlZGRiNzlhNjI2Ym=
YzZDgwZGY2MjZmMzFiMjE1MGJkZmYzNWUyMzMyZTliMGU4ZmIxYzg4ZGIxYjM5M2JjZTdlMTMxM=
zNiOTZmYmRhYTExNGEzNTZkZmIzZjE3ZWZlNjIzNDE2YjViOWM0ODZhNjUzNDI3NjZhYTEwNzhj=
YjYyMTEwNmU0" target=3D"_blank">Manage your settings </a> for all types of =
email updates.<br/>
                  Visit a <a href=3D"localhost:1333?u=3DNWQ5ZGY0NmE4NTNjZjZ=
iZmU5NTNmM2FhOTk0MDA3ZGZkMWNiZmE0ZTRmY2U4MWZkOTNkMWJiYzA0MjkyNTljNmU2MDlmY2=
ViZGQ0ODRkMTYxZGQxODdkNGU0N2RlNTdmZjQzMGM1NDY3YmRmZjEzZWZkMzNiMWFmMmJjMzU5M=
mNiNzM5YzI1ZmQ3NWZiZTlmMGU2YTM1MWFkYmJmZGUyY2YzYWRjYTlhMDlmNTU3MDQyNzQ3NmVl=
ZjY4YTdjYmZiOTBkMjI5MTJjMjM4ZjNlOTBlZWMwMDhkOGVlZmYyMmY2Yjg4NTU2ZjMxNGNkZTA=
5OGNkMTA3MDVjMTg5ODVlMWNjNzE1MjRmZDJlOGYxMjBlZWVhM2Q1ZGU1M2EzYTQ1NzlmYWM1OW=
U2MDQ4NTYxYmE0YzUyZTA4NzJiZWJiMTYxZDExNjY2ZTI3M2M2YzEzZjc1ZDBkZmZlMWQ2MDE3M=
DczNTJhMGEyYmJiYWM0ZjgyM2FmYTMzYTBkNzdmNmNmOTcwZjJjOThmMWIxMjRkYjQ2NWRiZjY3=
MGUzMGEzYmQ2NDg5Mjg1Mjk0NWY5OTZmZTljMmZkZTllNDkxMGNjNjgyMzdiODYzYjA0NjlmOWZ=
kYzg0MjhhM2EyYjc3MzEwYjc1NWUxNTE5NDkwYzE1NmFmY2ZjMzNhNWJmNzVhZTAyYjRiMzc2Ym=
U3ZmExNTU5MDAzZjZkNWY3NGMyZDcwN2FjOGM0NmM4NGRkN2M4NmQ3MTVhODI3MzlmMGMxY2ZjZ=
jMzZDE4NDE5Njg3NDE0NmI4MWJhYTIzY2U4MTA4ZTZmYWZjZjdiZGNkNmQxNzc2Y2M0ZDcyY2Rj=
M2FhYWU1MzAxZDVjMmNlZGJjNTgwOWQxNWZkMjVjNTY5ODA0NmQzNmRkYjU4NjUxMGVlMTk0ZGV=
mMjhhMTI4Nzc2YWQwYjJlMTc0MTZmM2FkNjdkOGZhNzgxYjI2ZDU5ZmRlMWI0NzBlYzk1ZWM3Mj=
ZjZDUyNzM2NTFjNGJkNDhjZTg0NWNmZGI4YmUwZDc2Mjk1YTNhNmQ0Njk0NjVhM2JjNzE5OTVlN=
mFkNzg3YTMwMDdiZGM2ZGZmMWE4NGNhOWY2ZDZiMDZjMDYyYjgxMjg2NzBhYWVhNDllNzExMTIy=
YmM4MGQ4MDAxNWMzNGVmYWFlZGIzYzdiMmE0NWI1MWNjMzQwMjRmY2EyYWU2MjNiYzZmZWU4ODA=
zZDk0Mzg3ZjFmNjM0M2Q0ZDczY2YwZTVjOWQ2ZDJjZjhmNmFhYTM4MjIxNmYzNGM1ZDc0MTVlMj=
VmNTQzMjIzMzUwMjkyNGY3MzViMzdkZmYyNjFlNWM0MzJhODg0ODRkM2VhY2Y4YmVmZjdlYjIyM=
DgwNzFiNWEwOTQyNGE3MTZlNjE2OGZlMmQ4Yzk4YTQzZTk5OWU4MTBjMjBjNWQzZmUwNWRlNjFm=
NGVhODBjNzljM2QzODg0YTY1ODkzZjAyZWYwNWIwN2Y0ZjEwN2Q1MjM3MjVlOTI2Mzg0NDlkNDF=
iNGFlZDdmMDQ5YmE0ZGY0M2RmOGIxMjFjNmNmODlkYzEzYjAwYjE4MmNiNDA1YWY5MmIxOTk4Mz=
FlNzc0MzNjZGY4ZjZmOTc3MzYzYWFlYjUyOTYxYjlhYTIxOTlhM2U4MDFlOWQ4NTJlMzVlMjg2M=
TE3OWU0OTc0ZTlhOWQ3YTQ4YzYwOTVjNDYyODBiZDRkOWUxMTRjZWRkNTVlZTEzZjNmYjM3ZTA1=
ODA5NjFhNDMxOTYwYmE4YWVkOTBmMGMwMDY2MDE5NDM2ZjYyMjA3YzVmZjhiNjA1YmYyMTBhZGF=
kMDVlYWQyMWI4NmYyMjgwMjBmMWM3ODA0ZmQ3MTM5MjVkYWNkYTc2NGU5MTgwNTAzYzYwZGM5ZT=
NhN2I1OTcyODNhNTE4MWJiYWYxMThkNjMwMjE1YzAwN2NhOTFjZjA3OTdiZWQyNjk0NDBjOTE3M=
mFlNGI1MjNiNGI1NTdmNTRlNTYyNDY5Y2QyZDBmOWY4NDljMmNiNGM4NzE3MTFkMjkzNjMwYWRh=
ZjQyMDI5OWYxNWU0ZmI3YmUzZjU4Y2I0NDk1ZjA4OWE1OTU1NzQ5Y2JhNDZkNjdmMjE4MDhkMmE=
3NWQ2Y2QwYTFhMGU1OGU2ZWI4Nzc5N2NmMWM3OTkzNWZlZDc1NzYwYTY3ZTUyYjYwMzMxOTE1Mj=
k0Zjg4MmEwM2QwNWFhM2M0Y2FkYmJjZjVkMDU4OWE1Mjk0MmM2ZTJiMDdmOWRmZjljZDNiNjgzN=
Tg1Y2FmOTE3YmMzNmFiZWE3ODg5YTJiMjhmNjJiOThhYmE5NzRjMzhmNjZkODYxMzNiN2Y2OThk=
ZDQ1NjQ2MjU2Y2Q4YzlmNzBmOWViZjMwM2RkMzg4YWJiYmFmMmU0ZmQyNzRhYzY5ODlhNWY0ZmQ=
0YmE1YTJmYjRhNDkwZDZmODMyNDI0YTc2YzY1NGQ1MTUwN2M3OGI2YjNkM2FhZWE2MDZhNmRmNj=
UzMmVkMDc1NDQ3MTQzZTY0Y2ViNjEyOTVhM2M4NTc0MzFhZWVmNjlmZTZjNWQyZTk2MzA0NjE2Y=
jI2ZTQxZmY2MjNlMjg2NGU0Y2NjMzY2MWY4MmVhYTA4MDM0MDM0ZjdjZTExYzAzYWZmY2EyMjc5=
MzM5NzkxZGE2NjI1MmY2N2RmZDMwZDI1OGY0YjhiYmZiZjE1ZTE0OTczZjIyZmMxOGViZjg1ODk=
xOGY1Yjc4NWFmMzBkMzUwZmQwZTA4MDYxMGQ2OTg4MjA4YTg1M2MzNTJjNDQ0NWViYWYyZGEwMW=
U5NjJjYTJlZGM2MDM0NjM4ZTc3MmMzZTQxYmQ5NDFmNjhiYzRiMDY0OGQ0NWUxYTYzYzRiMWE2O=
TUyOGZlMjc4NjgyOTQ4MzQ1NGQyYjdiMTFiMGU4YjMyNDRjNTExOWI5ODBhNjQwM2U1ZWEzNjU0=
NzNmNDJjNWJiNjE0ZWU5YThhMjcwZDU4NTAwMDQzMDYwNDMzZjVmNjliNTYyNDhlOWM2M2E2M2Q=
5MTUxNGU4ODg1MDM4YjkxYWI1ZDAzMTQ2NQ=3D=3D" target=3D"_blank">your account p=
age</a> to change your contact details, privacy settings, and other setting=
s.<br/>
                  <a href=3D"localhost:1333?u=3DZjQ3NWYzOGYxOWY2MzM1Y2NhOGQ=
xZmE3NTAxYmE5ZDM1NjdiMTNmODMxODkwZTg5YzhkZjg3MDQ3ODk2M2ExOWFhYTg1NTk4OWM5YT=
ZkOTY5YWM2NzE3NTNmODk5Y2Q2OGQ2OTkwY2JiNGYxOGNkZGVmZmYzZGRhMjRiZWQ0NTJlNGRkO=
TQ5NjJiNWE5MzU2ZTJkZGMxNTAyY2I4YTQ1MWEyMjJhY2RkYjYwOTM1ZjhiMmFhMTI4MTE0Njdm=
NWM2MGZiNzNhNTIwMzQ4OGM3ZjMxZDVkZTk3OGZiODQwMzEwMDFhNmY0MzEwZTkwYWZlYTYxZjJ=
kNmRiZTBjNzc0YjAwYjBjNTVkZDc2YjQ1OWNiNzZlNmZjOTU5YWIwNjczM2ViODMyNDFhZGI4OD=
A5MWVjZWMzODQ1MmMwZWJhZWFmNGIxOGNiODI0ZTViYzZlMWRjOGE2Y2UzZWM3NjQxNDA1MmUzM=
DZjMDY5ZjllNjQ4YTYxZGJlMDExNGIwMTUwM2VkOGRmNWYxM2MzM2Q0MzU0ZGFiNjY3ZWUwMGRi=
MDM0OTUzZjk4ZTFkYjFiMTc4MmJlNmExMjk1ZjQyYjNjMWFkZTUwNzIyMmEzOGJlMWI0MmZiMzN=
mMDFiMDhiNDMyMmMyMTgyNjNjMzVjOTg0YTI1YjRkZjQzNDY2NzFmYzQzNGI3NmI3OTBlYjExYz=
AyNDM3NTJhZWRkYmE4NjEwODRiNjhjZGEzZDM4MDE3NGU4N2ZiYmIzNzJhM2UwYzBjZjBiMTVlM=
jU5NDA5ODdhOTViNTY0MGQyMTllOTlkNzFhNzA3NzlmZDBmZTFmOTkyZDc4NGRiNTY2MDNkNzZm=
NDRiZmYzZWU0YzNjNmNiY2NkM2YyYTMyNjM4YzdkMjY3ZGM2Zjc5M2IyN2UxZDk1NmJjOTBjNDl=
mZmNjZDRlNzk5OTI0NGNiZjc1OWI1OWQxY2JiMGVjMGQ5NjA4ZTk0ZDk0Zjk1MmQ5MjRhNmUzYj=
gyZGUzNzgyNTUyY2U5OTIyYjU3OTczNmNmM2E1NWUwM2M0NjhiMTJjNjEwZjUwYTYyMWJmNmI2O=
DZhMjZkM2EyM2IyMDM3M2NkNWIzNTkzM2IwNGRhNTllYmUyNzhiY2RhZTc5NDA1MmE5ODAyYzlj=
ZTdmZDk4ZDExOGJlOGZkNDVkMzUwNGEzYzZjYzgwOGY2Zjk0OTc4NmYyNGIyZjhhN2U1YTAxNTc=
5MGEzYWRhMDM3N2FmOThlNDVjMzFmMzY5OGFiMTMwMTcxOWMwMjFiYjRjYzkyODA4NDJhNzI4MT=
lkYjVkMjU0MjY4NDVjMmI0OWM4NmYwNjY2N2UyMWY2MjkzYjM1ZWU4ZmZmNWNlMzBkNjcxNzNmN=
TQ0NzhhZjVlNzFhZWQ0NGI1ZjhjOTI4YzQxNTU4MTgyZmZlZGUxODE4Y2NkNWE4YjhhNmNlN2Ri=
MmI1MGIzN2Q3MDBhNDA0NGRiNjQ4MWRlYTNhY2Y1OWM0YjBjY2FhOWUwYjc0M2U0NGZhMGEwNzk=
wOWZlOGIyOGI3OWY0ODNkMWQyZTk3MDQ4Y2YwZTJmNWI4YjhmOGFiNTU4ZmVmNzNkNjc3MmJiY2=
M0ODZmOWFlNzg5YzJjYmYxZmUyMThiYmEzM2QwYjk1MTIzZGFmZDI5OWI2MzZhZGY2YzJmNmNkN=
WI3ODUwN2MzMDgzOWIwYmUxNzQ2YmEzYWExOTY4YjkyYjQ0ZjVjYzBjMWYxOTBlZDAwYjQyNzNi=
NDFmZGRiMGMwZjY2YTgxNWQ2YThhNzQ5ZTU2ZDc0Y2Q3OWE3OWIxNGNlMWNkMjQ0MzhkOWIyM2Q=
3OWM1NDVmMWM4NmM2MTMyODlkMjgyMTYwOGQ1YjQwZWRmYzI4MDZmZTgwYTg1NTIxYWM0MWE4NG=
Y0M2VkMGI2YjU3ODY1MWJiM2NjMmY2ODgyYjVhNzUyZjY1Y2U3Y2I1ZjZlYjNlNzIwMjJlZDQ4M=
GRjM2ExYzlhZGQ3MzA0MzM4YjhjZWQxYWU5NjFjMThkYjk4ZWE4NDRmODkwYTAxYjQwMTBlNDFh=
ZDdhNzliODg3YzY1MmQ4ZDg5YWFhMGNlZTRlMmNjMTJlMTRhNzc5MzNlNGNjYTg5ZTUxODFiYWF=
lMTg0MDIxMTkyOWU2YjllMGJmMmRjNDNiY2I5ZDU0NjM3OGI0ZTBkM2M2MzU3NzcwMjgyZjZhMz=
VkOWE2MWFhOGY2MDNmYTEzMjgzYTM5OTA4NDkzYzhiOWJjNTU4YmNjMGRkNDU5ZmM0MTI5YjM2M=
mM4MzQ4NmJiZDhkMjQ2ZDE0NzU5NTNlNjZhMThiMWNkNGJjOWMxYzkzMTU5YTBjMzJmNTlhYmZj=
ZWRhMzQyYTRlMWU5NWQyYjE4NDY0NzQ4Yzk5ZGY5YmM0MTFiZjk5YmM3NTM2ZWNlMmNhMDU1MDh=
jZjViMWY5NWExOWI2OGI0MTZlNjczMGIxOTM3Y2I3ZmFkMmJiYzljMTA1YTkxZDc3ODNmY2E3Yj=
Q1ZjE2Y2RlNDQxMGJhNTMxNzA2YzdhMWE0MGM4OWMwNzA0OWExY2M5YzBlNTUxNzE2YzkxY2U1Z=
GRlMzc2OTI1MDdiZWIzN2FjMGU2YTI5OTQwMzk0YWY1NzNmNTM2MDY2MDQ5Nzc1ZDQ5NjkyMTg0=
YWFmMTgwOTU2NDIwOTliMWYwYTg4OTM1N2M3OTNkZmM3NGE5N2I1N2I0MDY0NTk3YmI3MDUwOWI=
0YzgyMjRjNDMwNjkxNjVhZmY1ZGYwM2EzOGY3MTEzNTdkZGEwNWE2ZTQyMmVlZjEwYTdlZjQzM2=
M0ODczMjg0YzUwNmIyNTg0N2RjNWVlMGYyZmRiMDNlNThmN2YzYmNhMThiOWVhYjkxODk2MjkyN=
zdlZWUzZGJkZGZjZWJiZDYzYzdlYTFkNzk5ZjU3NzJkMDg4YWIzOWRlMDVkMTE1N2QyY2IwNWIw=
NjhkYWZhYTU=3D" target=3D"_blank">Meetup LLC</a>, POB 4668 #37895 NY NY USA=
 10163<br/>
                   Read our <a href=3D"localhost:1333?u=3DMmE3MDZlOWE0ZjY5N=
TRiZmI0MGFmZGIwYjE3NzNhNGNkNDkyYzcwMmFlODNmMjIxMWZiOGIyMmNlNGRiNDE3MGE3NjQz=
NzlhODFlYWJhM2U2NmVhNzNjYTBhMGQ3YmYzOGY0Y2ViNTczMmZlNDU1YTA1MzcyYWViZmNmZmE=
1NjBlZTZjNjE2MGM0YzE5Y2EyY2YzZjE4YjE4ZDAzMzYxMjcwMDIyYzcwYzY3ZTg0ZjhjNWYwYW=
ZjYmZiNzdhMDc3NTZjYmVlYmUyYmFlZjc2OTIzNWRlYzIwZTU1OWQzZDQyOWZkZTNkOTA5OTBhN=
DEyOTVjYTZjOTg1OWExMjNjYzZjNjJlNDY3NGQ5MzM3YjNlN2QxZTg3YWM2NjZiNGY2NTk5NTQy=
ZjIyMzllOTU4MTI0MzZlYTg1ZWE1OTdmNzkxZmEyNzM0YTZlZDMxNWU0MmJmNTk0ZDE3ZGEwZDk=
yOTJjMjFhNDVlMjhjZjUzYTJkZTUyOTQyMDA0YjFmMGIwMWJhYzY5Y2Y1NDE5OGNiYmY5YzM4OG=
YxMjQwZTk5YTM4YzBhOWNmNjk5MTJkMWZjNTc1OTE4MmZlNDE3ZTUwODZkYWFlNzRmNzY3YWVkY=
mYxYmEwYmI5MWZjMDU1YjcxZDlmOTg2MGU3ZTdmOWExYmRiN2Q2YWM2YjIxZmZiNmI0NTdlMzAz=
MWQzZGZiZWM4NDY5ZTRmZjU3NmVjMzA5MmEwZTBkYzEzZGQxMGNiZTdiNGMxYjI2NTViYmM4ZTk=
zMWMzYjFmYmEzN2E1MTRlMzdjZTQxYjFiZGU1NjQ5YjMxMDc1ZDRjNDg5MWNmNGJlYmFmYWM1OD=
JmODJjYmM0Y2IzZGIzNDcwYjUxNmJkYjUzNjZlOTRmMGRkYTA2NzI1OTQ2MDM3NzE2NjQwNTUzZ=
mIyOGRjMjY1N2E3NTYxM2FhMmRkYTdhOWFkNDlkZTdlMjQxNDRlMjEyMDc0OGJlZTNlOTkyYWUy=
ZWI0MmU5NGZlNTE4MzhlYmZmZWUwN2MwZmU5ZTYxYTg4ZmY1YmNkMDgyYTQ0MDU0MzJhZjI1ODh=
mMjk0MmViMDY4YTQzNTU1OTI1MDI0OWIwNzU5ZGYyZWUwM2EwMWQwZDNmYWE1MGZkM2QwOTczYT=
EzMmJlZWU5YzI2N2Q2MGYyZGMwZjEzNWIzNTFhMzhmYTMxZGY4ZDRhMDFlMGM0NmM2NTAyODZhN=
TQwMWYyMmU2NzI3ZTI2NmYzZjMzNTE4ZjcwZTdhMDZhZmUwYjZkYzIzMGQ5ZjQzZGFkZWY1NTVm=
NDEzMGNlYWQ2NjAxZjFhNDVjMDkyNTM0YjYyNzlkZDdhNTczNThlOWNhMTFlMDk0MGFlNWY2N2M=
wZjg5ZmRkOTNhMmVmYmQwMDI4NWY5MmJiMTQ4MjZhYjcyMGVjNTA1ZjYwMjVlMGNhNzIwODNhYm=
NlODg3YTIwNWFhNTc1N2I3NjE3ZWZmMzgyMTAyZDAxOThkNmJjMzM1ODM2OWMzMDkxZmFiZTRhY=
zRiOWZjNTc2MzU4ZTY0OTA0MDY3Y2U4YWYwODJjMDNhOWRiMzA1NTMyOWRlNjk4NjYxZjY1NzM5=
ZmI5YmRkZThmYzgzMDY0NTliYWYxMTZlMmVhOGM4OWE3Y2I0YjI4NjVlZWExMTFhMDQ2NWY0YWI=
zOWY1OWZhMzRkNmE5Y2ZjMWMxZjgxY2Q4ODViODI2ZWIyMDdjYzY0YWI0OGM4MGE5MDQxODhhMD=
g0NWVmZjYzZjhiMGY0NTU0OTE4ZjNmNGMxOTI3YmQ3ZTU1NGM3NzU2YTJhZTBkMmU3YzA0OTcyN=
zk0YTQzZGM5NGIyMDVhOGYxYWUzYzY4NzI3ZTZmYzFlNTI1NDUyNWMxNjE1ZmRmYTc2Y2Q1Mzc4=
MWZhYjI2OTA3YTAyMDQ1MjAzNjEzOTUyMmUzMDFmMDNhZDFhYWNhYWZkOWVmMTFjZmE3MDZjNDM=
xN2IzNThkYTliZTQyNzkxZTVmZjY0YzI1ZjhlMTdiMDAxZmRkOTlmNDdmNjQ5ZDYxZTViYmY1OG=
RlNzBlZjRhY2QzMGE2YTJjNWNhOWJhYzE3NDczYzViMDRhMmNlZTliNzFjNDA5ZmM3NDU5MzQxY=
WRhOTFiZTdlNmQxZjAyYmJiOTBjNGE0OGI2ZWM3ODhhNzNjYzA5NTM1ZjU0OTIwYWNlOWI4MTM2=
Y2MxNzA1YjRjOWE5NWI0YWU1NjU0NjNjNzUwNTc1MDU1NjYyMGFlMWEyOGI1NWIwMzViNDZjY2R=
jOTFjNDVkMWM0MGRiNmQyYTU0Y2I1MzE1YzAyNjFlMzRhYjRkOTYyMDVmMTYxNTdhMGEyZDBkOT=
czYTBhZWQzZTM2ZGI4MGI1MjVmYzNhYjUzMDZiNTdlNTU0ZjIzMTMyYTNlNDI3MmM4Zjg1OWYzZ=
DQyNTEyMzlhNjRkNmNlYjFlNmMyYzk2ZTQ4NjYyNzc0Y2Q1Y2E2ZTNlYzlmYTkwOTg3YjM1OGY2=
MTQ0YzQ2MmIwZjM2NDY2ODRhOWRhYjVlODJhNzQyMDg5ODc2OGJmYjIyMTliODc4YTc1YjRkNDU=
0ZjU3N2E1NDA2YjY5NjQ5M2ZmMzRhYzJhOWI4ZjU4ZmQ1MTQxMGEwM2I2OGQxOGM3NTAwODZjYj=
c3OTBjMGIyNDhiNmYxZGYwZjg0NTJiMTM0ZTJjNTg3NjYyY2RhOGE0OTMwOTNjNWI1NTQzZWRkZ=
TRmMzBhMzJkNGZiNGUzNjc4YmVlODgzYWIxYTFkYWZlOGM1ZGIwZGUzNDFjMDgzZTllN2JlMzRl=
MjczN2VjMDZlNDZmZmFhMGYwOWVmYjMxOTRhNDUwOTA3MjAwNTFjNTNjY2Y4N2Q5MmM4NmJmZWU=
5ODBjZmViNDNmYTcyMGQwZDc5Yzg5MGIzNDZlZjQ1YTdiOWEyNzM1YmFiODk5YjBjZWI2ZGQwZj=
BlMjQ2N2ZlZjkzMjRjOWRiMTJlNTUxY2NmMjkxNTQ5ZWEyOWY5MzU0MzAxYjE4ZTQ1MjRjNzRl"=
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
