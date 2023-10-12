Received: from EUR05-AM6-obe.outbound.protection.outlook.com ([104.47.18.104])
	by localhost.localdomain with ESMTP;
	Sun, 08 Oct 2023 14:01:25 +0000 (UTC)
Received: from AS9PR06CA0103.eurprd06.prod.outlook.com (2603:10a6:20b:465::21)
 by PR3P192MB1054.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:a0::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Sun, 8 Oct
 2023 14:01:22 +0000
Received: from AM6EUR05FT043.eop-eur05.prod.protection.outlook.com
 (2603:10a6:20b:465:cafe::6e) by AS9PR06CA0103.outlook.office365.com
 (2603:10a6:20b:465::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36 via Frontend
 Transport; Sun, 8 Oct 2023 14:01:22 +0000
Authentication-Results: spf=pass (sender IP is 209.85.222.45)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.222.45 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.222.45; helo=mail-ua1-f45.google.com; pr=C
Received: from mail-ua1-f45.google.com (209.85.222.45) by
 AM6EUR05FT043.mail.protection.outlook.com (10.233.241.173) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.26 via Frontend Transport; Sun, 8 Oct 2023 14:01:22 +0000
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-7abcef80a82so1401956241.3
        for <eyaltest@cynetint.onmicrosoft.com>; Sun, 08 Oct 2023 07:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696773681; x=1697378481; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HPprm8slXHCcDWpq2JtOn2TdhkVemI4p12DHmLuzap4=;
        b=OoLcuveHH2kZ1fbFRbhn39s5ixE2uvI79wACp4ehUJuNp/z8GyXRphrq1qTwrGflUD
         KSq7R/HfeyW/uFov/8otLnyXsMVjnlBkPoS72lu+COjOv8IM9AGnPsXmUofL6IP4JHVa
         A1fxIYwPv8QMUS8Rny8+YdMwlRwpQf2yc9VhpHAwhI0LtHRBw3UijzCc/Y3nrsbcUaQT
         Xq1tJ30S8/p6GAWflT16SXm6aDb2SujGdLBRa6OnPXp79+z95OVur96J1WGxsJJuhvXn
         6uDrLVCjhKLWJXMiDDXMd5Wu7NTMJofQoNZvOjBqrXau4WQBzYCb68Bc+lbnWU8vB0KN
         Dxcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696773681; x=1697378481;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HPprm8slXHCcDWpq2JtOn2TdhkVemI4p12DHmLuzap4=;
        b=LeQ164/gz4P8xuDc2PLClo0JU9da9aTuCsoT454c00VnEsLEzPOsiURGHTJxwWkz7D
         GdIX9tgTH+yFDZOi1fZLFPnzi8FsK28Qk/7wAvUx5Ab0lxT/1l07SDh3qDuaky+kmwhO
         gc/NDAbIILkNtBzMCGiv4RbQULEoFrmf/nl+d90mJG3w2TJAILq/oNRYItwh9YL05aVF
         Zdd0M1JlXqanOfDC9gnwxRD659MjJPLUO8gY8ggdCPAgHJ1PTLp076wUIhm4B5gOlpZq
         x6ppQ/5QP/L9hZ31Z9+XuqzGoH3DKLw21zG8z972FhYR1WUo4iJIsdVPYGVbt+0rs/sI
         Ap5Q==
X-Gm-Message-State: AOJu0YwWQCt/jfZgaoeZ8Bcn0ZgOs+702JTjU+yXlDXFlaxqsroMIx7W
	BSQejBSWZo1fEeLbECahzG4njdRbzbgy2FMXJIaQ7j48VnWt0w==
X-Google-Smtp-Source: AGHT+IFaSddqhOOxo+DgNic2HIq3k5Me0zYSEiPSPmz+1fcEkYVS+TIp0CDSRKKw1UNbA9EyC4feY/suA+o4Jaawh+g=
X-Received: by 2002:a67:f6c1:0:b0:452:635e:2710 with SMTP id
 v1-20020a67f6c1000000b00452635e2710mr12159278vso.0.1696773681174; Sun, 08 Oct
 2023 07:01:21 -0700 (PDT)
MIME-Version: 1.0
References: <C6.C4.33264.C9B9D156@jt.mta1vrest.cc.prd.sparkpost>
In-Reply-To: <C6.C4.33264.C9B9D156@jt.mta1vrest.cc.prd.sparkpost>
From: Yuri Khomyakov <yurik1776@gmail.com>
Date: Sun, 8 Oct 2023 17:01:10 +0300
Message-ID: <CADrc17DL8zPPnNoNcVYUCmCfAGAv_yaKpd6tkH3A-6xmQSksBg@mail.gmail.com>
Subject: =?UTF-8?B?RndkOiBCaWcgTmV3cyBmcm9tIFBheVBhbCBIb25leSHigK/wn5Oj?=
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="00000000000087e04d060734e8e1"
Return-Path: yurik1776@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM6EUR05FT043:EE_|PR3P192MB1054:EE_
X-MS-Office365-Filtering-Correlation-Id: 77561c89-fd92-4d04-440e-08dbc8070de7
X-MS-Exchange-AtpMessageProperties: SA|SL
X-Cynet-Tenant-Token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?RWtuV0R6UFNNQjJ3VWs2QThwVHVRS2FQUzhNenpNVHMva3laWG1tMDNWcWpp?=
 =?utf-8?B?WlB6MjRxRXVSMFBubnZ1ZGZFdm05bS9xRStYMUpiR01iRXFnVnRsekhUbWdh?=
 =?utf-8?B?RFcrYXRnWDhOTkI2cEp1ZTlUcDZEWE5zVjhQYm91NDJhMHJsWjlidHZKRTFG?=
 =?utf-8?B?Mld1eXEvQ3prdW9oN2U3VHBSREZEeG8wR0JISVRadWFOdHFHM3E4bWVxUmNB?=
 =?utf-8?B?Z2lFai9NRE1uM2Y0WVI5U2FhUTRxZkc4Z0pnWSt5RmkwVXRqWklkT055S2ZJ?=
 =?utf-8?B?ZmFhUnE3RWc5Q1JidzlUMTc4V0MxZm9UUkE4V3hiL3NGZGJEdTMvZFQ0cVFE?=
 =?utf-8?B?NVo0OVAxaGZCSlN5NU5NTW8zclFqU0RHeGhnRHpVWkdsM0YvUGUrVTg5blQy?=
 =?utf-8?B?MlZaS0ZvSnhsaG14UkdPWnIyR1RROE55cVRLSEhZb1FDYmlOQXdmNHFRbDVs?=
 =?utf-8?B?ZGFPZE1SeWJ4TGhpay95YzdKdnpxcVBXa09ueHNVbkovTjFxdkJrNW1iL0lQ?=
 =?utf-8?B?QjFBbmUrVkhOcHJYMmJqR0JabzFGcDUxYUpHRDNpcmYxVTZCYXl3bUxoNUda?=
 =?utf-8?B?RzBhYnljZEVZR0NDZGpibWVXam1lb2QwT3hFa0FhTkZHcDkxWHV6YXhqNzRp?=
 =?utf-8?B?dkJxaTA4ZTN0YlRFMW16TzAwMVc5ejg2d1F4QWVJbjhXRTU5UW8zQmczd2Ex?=
 =?utf-8?B?QUhBMExZS0U2WThrYW5ndExlZ2gyRlVnb0Zya0lOUm9rK2VQMkJZKzlVYy9y?=
 =?utf-8?B?TVN4dklaN1JUZnhIR2huV0dqVjZneTB6TzhtNGRzUFIrVG92MzVYamRLSnFV?=
 =?utf-8?B?OEgxYXNhNGU0cm5PRVNPSkhURVQxQ0x4YUhiVWR1Q0V1VEpVaFBaOVg5MkJK?=
 =?utf-8?B?blNMOHFOSEk0c3VuZGdlMTZhWWFnRlZseUpOelRNR2NBSVdNM3NsWXN0VFdn?=
 =?utf-8?B?cWduQkc5WkwrWTlERHZFMFZTQm5INFYvZjN0NUd6djN3YzB3b2o4TS9FNlFm?=
 =?utf-8?B?eG0rNEs5OWlJWXUwVEtLOG1sakNJRWh6TTFEY25LMDJRd1pHTm9qWFlwbUZs?=
 =?utf-8?B?ZzJNVjFCM3NkMmVkU2pMYlNtc05sU2lxREZBd2EweGZPYkxBQWl3M09vZGkw?=
 =?utf-8?B?YzFYZjd3OEhWNmMvdVRrTWZMMGNvV0NzRjBkN3NGUWphTVFCejk0MWJPTmVX?=
 =?utf-8?B?aU9tZng2ZHhINDhWOFkwQjcyVWo3dWxJbXB6QnRZSTRtKzFTQXhRQlY2Rjdn?=
 =?utf-8?B?TmN4ci9BYmYweHdZbDJlaGNlc1B1bjNUNjljM09maFJmM3pnQjdSSVZhclNH?=
 =?utf-8?B?SzdmeUpVQVhTaGlWZDV5L1FScDU0c0c1MExFeDI5YTRLTmsxc1RzR3BOSjFK?=
 =?utf-8?B?YVVIcnQ4K3pmU21UT1d0bVoxS2ltUFhmWENLYmx0MEZTOFZBUllobDRBVDl0?=
 =?utf-8?B?cUtPV3JIWHYwTEcya0FGZytoOXBLUlRjQUVhR3RRK2t5cWt5WUR2eFBQSDZp?=
 =?utf-8?B?RmJYSm9pbkxpNW1VM0hUdndNZis5ZUZiK3pwbXBaY2JqYm0xYnRyQmN2K3NN?=
 =?utf-8?B?L1Z4cUlQWUhkVmdSNEhSU2VtNzI4TyttNE8wY1A1Y0NNaEd4bkMvYnhpQ2FY?=
 =?utf-8?B?czBJWkVldlFQWWQ4UUc2ZjdWSlRQYkdSb3lGQWwxVDcwMUtDdXN1c3ZmV2Rw?=
 =?utf-8?B?WVBWZUlNRTQrUGpRTmdQRnE4bDM3M1lnMFNDMHo4YnFwdkkrNWtJNWg5VnBw?=
 =?utf-8?B?bTJmSFBmSkVlcHkrK3VsMTNYbXg2a25MWTZqV3VwcU55K3BRVEhIL2RwbCtn?=
 =?utf-8?B?cFo4OS95eWd5bGwxK2pkWVN4ZE43NXZCWUE3cjlpZllsTkhLSWJrMUhTNG5R?=
 =?utf-8?B?ZndsRDN0cFBmM29iVHY1UzY5VkxOelE3VkNZbWNtL3FmeHhhSVBPdU5RUE9L?=
 =?utf-8?B?NDM2cHVaeHhERmI5dVMrZTl4ckUwMHhkdkUxS1dlUGdDM2NiUC9FK0NBeDZi?=
 =?utf-8?B?TVp4SFBPYUd4YjIxN1U2OHZHNGhBWk9rRXRJbnRDbFBUMEs0NkxuMU1adElo?=
 =?utf-8?B?VExydFFyRkNocnRZdDVsWHkxVkNkNGVhNlVEeXlHR2dpUWRTNXROTyt4M3Fy?=
 =?utf-8?B?THpuYzNnclFic1VXNnl0MHBEQmYwM1d6MUFDdmtpZVdNWGFhWk5aQlg2QWpF?=
 =?utf-8?Q?8wu2/JE4dChrPGaJY21x7Fs=3D?=
X-Forefront-Antispam-Report:
	CIP:209.85.222.45;CTRY:US;LANG:en;SCL:-1;SRV:;IPV:NLI;SFV:SFE;H:mail-ua1-f45.google.com;PTR:mail-ua1-f45.google.com;CAT:NONE;SFS:;DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	YYXVS8oX0lhClrRzaLtpWQW6Vh7jRQv0Zunlr4c3RjWbYZ/z5Weem4u8EGsdn73AdsiuxQmXNTcI+34or9A/u4JGrgAkiuJ9+bEMCTC76tMuRF4b0hyh9WzMiWvQbQJ6rTnTJOoTWhokwIQ/MGWiGEEz3GXsKEUJ3F2xOrPlGHRmyW0jdHubvunemdoYMJaGTNAUzgEmFlKreIoU28KgDM1hMziW0Sptem1TI033btrWvMQv4atnjw4qXDgxBz8XvUGXdBjwav9rdEpgYrRy+jM754ylFy8W8xagb/9UoVTVDWjb+jGue487Dkui5aW8O0ATj1dNwIv6X+5GCYpMkb8yGNpw+ZqRJAgO3l0HTkB59BoDrlnGJ3lDVAntoTqQaEvlQ2nyiZOCW+otgwobVJEwgif5Wq2zrXKz8gqmYgu2htEnBpmFpyssxmNOs9TjBCNxxdEhtETXF9f+PYQtmm/7+JQJoF0G+Llq8+d9UHLYKWIp6heVTizFQWJycTX2pjjCOlVIIfIR2bJu3EeHtHBvCBK7MNmFlJZkz+5YmFfCwfMr994yBHH+HOw2U39NUSS1VclFumBqFO9yyAGmj83TfL6z1eun2tzavGw/rsnFpAn0mNp1V/Davgnq3QDsXit5saaEoostx4uFXHZwNkPAD5OoSGG0A+UtM4UQpJLbfnlNYAAdytwKy+hmhcVYy7LHQPZRm4FHPTkGb+NHZUYDZYS620SOF3+hj8T4iPsWDcI2lRaTAu41hg/87gYNZYUiUN9FjXtm1qjyhXnSRQ==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2023 14:01:22.6330
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 77561c89-fd92-4d04-440e-08dbc8070de7
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
	AM6EUR05FT043.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P192MB1054

--00000000000087e04d060734e8e1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


Hey, check this out

=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=90
=E2=94=82 scpxth.xyz    =E2=94=82
=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=98
=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
=E2=94=82 research.cynet.online =E2=94=82
=E2=94=82 slb.cynet.com         =E2=94=82
=E2=94=82 link.sbstck.com       =E2=94=82
=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
=E2=94=82 act.qasimforcongress.org =E2=94=82





---------- Forwarded message ---------
From: Honey <insiderdeals@my.joinhoney.com>
Date: Wed, Oct 4, 2023 at 8:06=E2=80=AFPM
Subject: Big News from PayPal Honey!=E2=80=AF=F0=9F=93=A3
To: <yurik1776@gmail.com>


Honey is on=E2=80=AFyour iPhone,=E2=80=AFgrab those sweet Honey savings=E2=
=80=AFat your convenience =CD=8F
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F=
 =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=
=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F
=CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =
=CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F
=CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F=
 =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F
=CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F=
 =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F

[image: Honey]
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK8q4aAZ6WhOFBC55Ng4LpELLeKmOdDIhYFeZgIUUUV4oJPS4lMlxA98DL4Z1h6_hHQ=
03PCqe4CwARWQOrCjJf-e4ghTvecosjHRquIbjCA33Ab60X0c9sMrbwx0E-iJr9atCuuCpRObft=
RaauIZOk7M2LJtsofL6eymdk9AaQxPaSnLvDETP0ZLJ9cvULGx6-8KCRBIEpi2SSEqOcGLNQSIu=
NPaOvM3Z6vD9pzEb7EflQ%3D%3D>

[image: PayPal Rewards] PayPal Rewards Balance
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK_xoU71Qfezzajlz0IVVxvqJWKAp7O0EJ_xLAvlJaPoXlVGYKUNqheOZkbtusiRaOo=
nqx5Oy56wOmDritUQ-aRfhlE8bfNtJvJeaADS6nJRhplyTNKfhbSb_7hJyR1FsWDZ-JqgnvVy0U=
n9Jkik0hLFGj-YTuTO-7NGsiB-YsXIQiqYZuhaw04SJOfrHhYHzwGfMBXOLbENFNbQDA2YZAgrO=
iHEM3DqTn_hetiMUDeDhPkVTTvhBPkjV-6z_l3bUh4%3D>
366 points
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK_xoU71Qfezzajlz0IVVxvqJWKAp7O0EJ_xLAvlJaPoXlVGYKUNqheOZkbtusiRaOo=
nqx5Oy56wOmDritUQ-aRfhlE8bfNtJvJeaADS6nJRhn-Po1W1wT-MU2OHZUJThEjI09U43PHfMx=
HvD_lKDYvfMiwcHohKXkRVNeZaxyjNan4oICrNvdliQJ36KgWNoWuN1VSI5H7ptRd7srwnUDTTY=
RyJl7WmUDteBUsBWw50UWlHfFtWvQ7l_SnRztAX9pk%3D>


You asked for it: PayPal Honey goes mobile.

Honey delivers again. Add Honey to your iPhone and save on the go while
you=E2=80=99re shopping.

Get Honey on mobileLearn More
<https://links.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL=
1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsx=
ohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc54=
5ZkqSSOMJreTdjV_Azz4391qeOZb5z9GC6QromIgry30WR5BroD4OB32KRGhND2D_1hemH8jJ4u=
5GSZ-dV-E-RAAraZl_oSFkp3FYXttIuP2Dx5aR3I0TzSskj4KgYUH0mOne21r6ffxOtMfqur3Rh=
5WvH3Wx98w%3D%3D>

[image: Get Honey]
<https://links.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL=
1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsx=
ohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc54=
5ZkqSSOMJrolBi0p-vHjo44n3Pbo5YCFeR6cEJOqvjo3YYpjhD9WeJVIkTSw_R2XFDeUpEmuMyw=
WVbrrxMNwmYovastYCDY-gDY66kH2x4mA5qWA85fwwIeIWMM37nMTv0Q2_ZEn_WR3Z3aHEPcRwl=
giur0BCnxg%3D%3D>

[image: App Store]
<https://links.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL=
1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsx=
ohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc54=
5ZkqSSOMJrRnKZD3ge8UhUMuOcXpUlg8i3C-k0vH_RsQwHuDwbvx1XX7g0MuE0ZDek0jr6kWyUe=
nEGFwH-t3-g4cMgozYuGUNqmSFnuk57kCWtuJjCb64c8vdQmEiAau6Y33YO18XKLboDerjtmo5E=
qe3lrPcfDQ%3D%3D>

The Apple logo is a registered trademark of Apple Inc.

Learn more about Honey for mobile Safari here
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70HrF4IxD7HvY=
Gdin44cRPngqBnm0CK24I9EtGUYKzAuP91vrWRTTCcXPyj_DVy0y4oNJvUUPfbd-sTHsZge6YaX=
zlNEI0Z6O-PfNcSt0MvdlekGkM_4oPug2xKmEVddKliuzRNX8H7hpXsN5dpfH0FqFLy3lbWOabM=
tW1kUoibwFKwo-T_JoNVKU4ta2VWEItXz5WphDJw1aJbGBi3_-LO1aDmEjFgOqYpe4oreXLOAuT=
yv2OVdXBlOe83raIiEAcpmQUVjyL2nUxWk7x8mqhqKkuu5AHKfXxBXkbrdKaiuCohRh-awswcC3=
FfO09j0iOQ%3D%3D>.




Explore
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK9DamdwWRpR2gSmHh0zA99ijpIcFEfG8c4Q6p0JoHy1HpexGpGG6lRcC1qMjlgfxKr=
B3thFjB4w-cPg4WNqxMjSMF0L39NnNQ2L3psxQ5Dy5W479ZIgoUlHUKvL7TwJnURtlOT9nlUSNX=
K1S9HVFxFd9RzCKMh-AX9pp7akAwq6qfMGSIqtSzZoNvoHzPAszvlLGrK_HkdxptjSKX3MDId8u=
45qiGIx4re2qRfrOwG6ow%3D%3D>
Droplist
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK8Udk5OI6QXB2uxgYKgB08AYCjG_hQxE5Fdes8WLh2JcH2BjL30Ui3Ruv7JCAINcDw=
5rOW5FvFw7kR81Hu9el1yuHInI1_88p-w3cT9j0Ohk16TtT7KJjl73BuGpStpImKZmaG6Iwm-EJ=
LDmR6izTG0Bk91O7TOFOkWel750rfFc5KVrITyUlH-hRrWV4Z9wiTQq3fYtH00bY9SvjqK6zWxJ=
1EG9q9zn6_kYl6K-aGqVA%3D%3D>
Rewards
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK-gEAIy5Ed17a_e_7MDOJFaL7VeLvoBwir6lAUU0aeryhWEnwM_Tu0fpeYo-nE-WC9=
UDnYynqqvg-ElbwQI3swf8AAVXx9W5gT7hjuYZ6uvQGIEov3LrSWibvF25hkqixzuBOPGmZrrqz=
RJQ1mbP7LRTom9yCoUxsV3NJW4XIn_1FRKeESIbzywbtoS8OtnmLLtcDDszehsk2rk4uF6_nW-V=
Zl8PIPKydbnWhquNlnWnHcKM7DOVqZPX-3T26oZbkM%3D>

[image: Facebook]
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70OTUD-PUbWul=
4mnWSepyWwn1Mo5BAzp8Z9J-T736mVlKRWLFtZDyIBo48Z8OkYPhnfntXnnjrPuTLjW9dkzxASx=
dWUcLidto33CW2AH52HQgDn-OeSIltQ0iOu1W3ZP4ytBWK0_ww4n4S9iQ1ocGEM2GR2yfpqjVBP=
dDtLPpxHDimiKn-qDZNj22Yk2VLeqCVc9CjoYiUeZQnwVTRKPv7R0y3D2KE_0qn7qEtmwjMJO9e=
zONms7s4pJjyHQLF5Y0HQ%3D%3D>
[image:
Instagram]
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70CjkDoxg64Zo=
rltUBV6xSXEWNYrrMpVlPODrlkurZN3YAE-sY0nPF8-d8FEfOiy21YJP-24AgbIWHjlxadLBvXS=
OJOgU0Tbu7NuWIIHSU1Ep5YUd2mwaPl0YTqLElVakF408K12mk9xxmcgrY2SQP3tOB7OLNchne5=
VRboyG8Z3i1gzoit-o127Q2_jBU8gPs8jlwas7jjhpqtcx5Gz7PaAipinLPny-ZFLjwPp2HiupR=
yte-RstmRqWc5ukO3hGkg%3D%3D>
[image:
Pinterest]
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70BN2Un3LodsG=
bka_iV3cygrhIZy022pbjuWw_KqZzy-tu_4oCum5j5CV_56v8-yZUYpnBVTTMz9M73p8J5k2H47=
aoZO7MKmmqlQGdJJ7MprleUm4Y47iZjPqAGmXz3TKzH9VXUNNOnkuR6PsiSDW1vPPkQlTQRZZsP=
GuDCRxlRxaGJyLHVNGRoZgyZpix4WJq-T8vvoJix0UwrN-Edy8YLoJLLTZ8SmasTCePqvPFcv09=
N6e1u7-GQLEDDNrfo5rFA%3D%3D>
[image:
Twitter]
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70LSuLL5qFAtA=
l2ZvHJSEqBhdT1MQfEi9HtxXYhSVtpVhZ0FeJtI-95EP7IE36Ty-6x7HWggtuhFruNB1u2UeXO7=
Fsqzs0e9H5B51VYwy6Ud4ZKG8cOK1lmOWRh9HnoQpr-TNtNcz3lBFtgfhNcMaT1nxsHi6h6rTdX=
qdiDsJmhuZX-Q4n7EgwuIGwnHJJd9cdSsSuzLrBn3fuoVQ89yDO5lKIuD_cgxJZcBIwFTb9luQQ=
Uim0XbplKU6XuGs9MrfRg%3D%3D>



View this email online
<https://links.joinhoney.com/e/evib?_t=3D70657193eb7a404887947be80fb10777&_=
m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHG=
L6_yBG4twEa7nsAhyynBoZAvto1_VJV>
.

You are receiving this message based on your Honey account settings.
Unsubscribe
<https://links.joinhoney.com/e/encryptedUnsubscribe?_r=3D70657193eb7a404887=
947be80fb10777&_s=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_t=3DPQFjEIYh9v9Lo6dEE=
7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4RRZ7dureRSYWwGZ0RyPFEBqWiCMFBgvISu_H21jEiuX=
GrDbw0z1eENoNsEIWOlNHHM6WW5Rbp2LQKFPde3UwVUvjZNt0TpSj8OAJQpBOvSG4fyH7Dpyoyi=
Fwp8%3D>
or adjust your email preferences
<https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&=
_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4=
EeDHDdrEoK-vtKMB13iGzp3kf3kFFhPX0CDhelueiYwJVGCACrLGr5WaX68LszTz9o_XSQkC5A3=
-S2n0HiBv_4M6tSsLK1U23HzxVWI5-IGHWabmcvWfKLIKZl-JFZP_nsUwO-pq1xq3s81Klvc3ua=
iNiVLPXyt-V0a9YRzrraW5QmmdzSGV5ML_puh5BLbPgw_YfsS0zBj8iE2qVTL-W5DXuJ2qi4III=
ljSPWngL6JJeIKWcd_T4tj5ZiMl6HumKi-oY09yi0M%3D>
.

Copyright =C2=A9 2023 Honey Science LLC (a PayPal company)
All rights reserved. 963 E. 4th Street, Los Angeles, CA 90013

CID: 4570808_10.04.2023



--00000000000087e04d060734e8e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey, check this out<div><br/></div><div><p style=3D"color:=
black;font-size:15px">=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=90<br =
aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DZDAzNmJm=
ZDgzYTdkMzM0MjE4YjM5YjZhYzViNzAyYTQxZGZjYzQ5MTUwODk0OTVlYmRlMGUyZTVlNGY0YWY=
3Y2RlYjEzODBiODhjY2I5MWIwNDlhMGUyZTJkZjg=3D" target=3D"_blank" rel=3D"noope=
ner noreferrer" style=3D"border:0px;font-style:inherit;font-variant-caps:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;font-size-adjust:inherit;font-kerning:inherit;font-variant-altern=
ates:inherit;font-variant-ligatures:inherit;font-variant-numeric:inherit;fo=
nt-variant-east-asian:inherit;font-feature-settings:inherit;margin:0px;padd=
ing:0px;vertical-align:baseline">scpxth.xyz</a>=C2=A0=C2=A0=C2=A0 =E2=94=82=
<br aria-hidden=3D"true"/>=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=98<br aria-hidden=3D"true"/>=E2=94=8C=E2=94=80d=
nsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=90<br aria-hidden=3D"true"/>=E2=94=82 research.cyn=
et.online =E2=94=82<br aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"loca=
lhost:1333?u=3DODIxMzk1OWJiNmU4MDUzNDRjZjkxNGM1NTM1NGM0MzQzYWM2YmVjYjZiNGQy=
OTAxNGJmN2UyNmMxZjFhODJhZDdjMTYzZTM5MmYzZjcyODNlYzAwMjgyYTY4NmVkMDJkYzY=3D"=
 target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-sty=
le:inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kern=
ing:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-s=
ettings:inherit;margin:0px;padding:0px;vertical-align:baseline">slb.cynet.c=
om</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hi=
dden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DZTUzYmQ3NDQ1OGZ=
hOThlYTIwZjM3NmU5OWMxMGQwMDRlYmNmY2Q2MWExNjc1NzNkZGI0M2JmMzliNGZkZDUyNjQyMD=
g1Yjc2Mzg4MzZjODEzZGY2N2JjYWFlZTY2MWJjNmRiOTll" target=3D"_blank" rel=3D"no=
opener noreferrer" style=3D"border:0px;font-style:inherit;font-variant-caps=
:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fa=
mily:inherit;font-size-adjust:inherit;font-kerning:inherit;font-variant-alt=
ernates:inherit;font-variant-ligatures:inherit;font-variant-numeric:inherit=
;font-variant-east-asian:inherit;font-feature-settings:inherit;margin:0px;p=
adding:0px;vertical-align:baseline">link.sbstck.com</a>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hidden=3D"true"/>=E2=94=94=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98<br aria-hidden=3D"tr=
ue"/>=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=90<br aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DZ=
jgyZGJhMmY4ZjY2NWViYzhlZGM0Nzc5NDhhNjFhOTIxMmQwOTBjNTgyMWI2YzljZmZiY2E4ZTU4=
NTA0MzZiZDMxZTFmYmE0ZWY4YmQxYjY4Y2M5YzRmYjBlYjYwZjBjZTI3MWYwZjdlZTBiOTk5ODM=
wMTY3NDJl" target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0p=
x;font-style:inherit;font-variant-caps:inherit;font-stretch:inherit;font-si=
ze:inherit;line-height:inherit;font-family:inherit;font-size-adjust:inherit=
;font-kerning:inherit;font-variant-alternates:inherit;font-variant-ligature=
s:inherit;font-variant-numeric:inherit;font-variant-east-asian:inherit;font=
-feature-settings:inherit;margin:0px;padding:0px;vertical-align:baseline">a=
ct.qasimforcongress.org</a>=C2=A0=E2=94=82</p><br class=3D"gmail-Apple-inte=
rchange-newline" style=3D"color:rgb(0,0,0)"/><br class=3D"gmail-Apple-inter=
change-newline"/><div><br/></div><div><br/><br/><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message --------=
-<br/>From: <strong class=3D"gmail_sendername" dir=3D"auto">Honey</strong> =
<span dir=3D"auto">&lt;<a href=3D"mailto:insiderdeals@my.joinhoney.com">ins=
iderdeals@my.joinhoney.com</a>&gt;</span><br/>Date: Wed, Oct 4, 2023 at 8:0=
6=E2=80=AFPM<br/>Subject: Big News from PayPal Honey!=E2=80=AF=F0=9F=93=A3<=
br/>To:  &lt;<a href=3D"mailto:yurik1776@gmail.com">yurik1776@gmail.com</a>=
&gt;<br/></div><br/><br/><div class=3D"msg44490807107789003"><u></u>       =
     <div class=3D"m_44490807107789003em_body" style=3D"margin:0px auto;pad=
ding:0px" bgcolor=3D"#ffffff">
<div style=3D"color:transparent;opacity:0;font-size:0px;border:0;max-height=
:1px;width:1px;margin:0px;padding:0px;border-width:0px!important;display:no=
ne!important;line-height:0px!important"><img border=3D"0" width=3D"1" heigh=
t=3D"1" src=3D"http://links1.joinhoney.com/q/A0ngOcZbzwzT_2ngbr1B5A~~/AAQ-S=
gA~/RgRnACCcPVcDc3BjQgplFJybHWWPImxMUhN5dXJpazE3NzZAZ21haWwuY29tWAQAAAAA" a=
lt=3D""/></div>
<span style=3D"color:transparent;display:none;opacity:0;height:0;width:0;fo=
nt-size:0">Honey is on=E2=80=AFyour iPhone,=E2=80=AFgrab those sweet Honey =
savings=E2=80=AFat your convenience</span><img src=3D"https://links.joinhon=
ey.com/e/eo?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a3=
9a4bcf37bdbd64e7&amp;_e=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4=
RRZ7dureRSYWwGZ0RyPFEBqWiCMFBgvISu_H_-S82oV6A8pZaHkghJDwdPJspWqt3F6Fx9ZsfNA=
Y92yIxx6hLvWXUad_X3oPnxPBA%3D%3D" style=3D"border:0;width:1px;height:1px;bo=
rder-width:0px!important;display:none!important;line-height:0!important" wi=
dth=3D"1" height=3D"1"/> <span style=3D"color:transparent;display:none;heig=
ht:0;max-height:0;max-width:0;opacity:0;overflow:hidden;width:0">  =CD=8F =
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F=
 =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=
=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=
=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =
=CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =
=CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F=
 =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=
=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=
=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =
=CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =
=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F=
 =CD=8F=CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F =CD=8F </span> <table widt=
h=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D"0" class=3D"m_4449=
0807107789003em_full_wrap" bgcolor=3D"#ffffff"> <tbody><tr> <td align=3D"ce=
nter" valign=3D"top"><table align=3D"center" width=3D"600" border=3D"0" cel=
lspacing=3D"0" cellpadding=3D"0" class=3D"m_44490807107789003em_main_table"=
 style=3D"width:600px"> <tbody><tr> <td align=3D"center" valign=3D"top"><ta=
ble cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:1=
00%"> <tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"cente=
r" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444908071077=
89003em_main_table" style=3D"width:600px;table-layout:fixed" width=3D"600">=
 <tbody><tr> <td height=3D"20" style=3D"font-size:1px;line-height:1px;heigh=
t:20px">=C2=A0</td> </tr> <tr> <td align=3D"center" bgcolor=3D"#ffffff" val=
ign=3D"top" class=3D"m_44490807107789003em_aside15"><table align=3D"center"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><t=
r> <td align=3D"center" valign=3D"top"><table align=3D"center" border=3D"0"=
 cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td align=
=3D"center" valign=3D"top"><table align=3D"center" border=3D"0" cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td align=3D"left" val=
ign=3D"top"><table align=3D"left" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:120px" width=
=3D"120"> <tbody><tr> <td align=3D"left" valign=3D"top"><a href=3D"localhos=
t:1333?u=3DY2E4MzBkNTc2NDg2MDFlOWE3NzRiMTA3NmRiN2MxNmQ0MTVkMjdlYjMyZGZlNTU2=
ZThjOTZkZDliZjk5OGNkZmU0OTdiZDkwNDhlNTRkODQ3Mjc1YjI3MzY5ZGZlN2NiZWEzMDhiMGF=
iMjU0NmFhZTE3NzU2YmM5MmYyZDlkYzk0NDMwOWIyZmI0NTRhNDY1MTA1ZTdiYWEyYTI5Yjc5ZG=
Y3MTJlOTAzOTA0MjQ5MzhmOGQ3NTQ5ZDRlZDJmZTkwNDQxYTA3ZGZhMjA3Y2M4NWJmMDEwZDk2Z=
GY2ZWVmZmI3ZjBiNTNkZDcxM2Q5ZjQyZTY0YzkzZDYxNzNiMjNjNzcxNGMwYTQ1ZWU4NWEwNTRk=
ZTBmMmZiMjY3Mzk3OTdjYTNiOTY1Mzc2NDU0MGE1MmU2MDkzZDU2NTA0MWIzYzAzOGRmNjkwNjF=
jOTFlYjVjNDU1ODNmYWNjODdiYTgyZDMwODkzMWE2Mzg3ZGMyNTE2ZjE0ZDgwNTUxM2RjOTcyND=
lmYzM3Njc3YWJiM2E2NGNhYmUwYzY2MjU5ZWNkMTM2ZjNjZWU3Y2FkMGE5N2FlM2FkZjM3ZDZmY=
mNjMTEwY2YwMTE2M2M2MDhkNTMyM2YzMmEzMjcxNDBjMDY4ZjM4NjU5OWJhODQ0ZjkzMzA1ZGEz=
YzA4NGRkMzA5MDY5NDJhNTdhYmE3NTM5ZjYwOGI3MzY0OThmMjFlZGM5MjQ1MjlhMDQ1NzcxZTF=
jYTU4MzQ2Zjk2NmRhNWUwODUzOTQ5MjkxY2VkM2U4OTMwMzE2ODgzYWQwOGFlMDM5ZDM3ZGVjZj=
QxNGI0ZGVkNDQxODU3Mjk0NGQ4OWM1Yzk0ZDQ4NDkwODE2MjE1OGRjNGYwZjYwZmM1NjlkZGJjY=
mQyNTI3NTliY2ZhMzQ2OWQ1MzYzNzdiYmY3YzY1NzU1N2NiODEzZDMxZWJiMDY5ZTUzYWEyMzRk=
YWE5OGYwODA1ZmU4ZGU4NjhhNGZiYzE5MWQxMzIyNzY2ZmU0MGJiMjMyMzM4NjZjNGM1YjZlYzc=
wZWU1OTJiMTY0NWZjNTRjNWE0N2RjYzYwMjE4YWRhZDFiOGRiMjlhZjQ5NzJiNDViOGRmMjJmY2=
FmZWIzNWVhOGZl" style=3D"text-decoration:none" target=3D"_blank"><img alt=
=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/email/PayPa=
l-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120px" width=
=3D"120"/></a></td> </tr> </tbody></table></td> <td align=3D"center" valign=
=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;padding=
-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font-size:1=
px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"right" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;c=
olor:#212121;line-height:18px"><a href=3D"localhost:1333?u=3DMTA5NDc2NGExOT=
g4MjkzN2EwODc4YTU3NzEwMzkzYjRlZGZkZDcwMjY3NmUxZDg2YmY4M2Q1YjQ2ZTc1ODMzYzZhN=
GEwMGI5YWQ3ODdhZGViNDQzNGNjYzNiY2QxYzIxOGRjMjc2YmExYjRmYzViMzZmZDg1NmM3NTI5=
NWM0MmIyNzdkZjg4ZDUyMTA2ZDJkZTFkOTgzOWRiN2NiZTE5MzM0YjdhNGMxNzgwYjY1ZWRlZDk=
wOGE1ZTMyZDM1MTIyM2U2ZmZmN2JlN2QxZWVjZDFlMjAzOThmNzQ5ODIyYThhOTlmZGNkMmM1ZD=
g1ZWM0ODMxMDllZmRlNGM1NTY2ODA1ZmJjZDIxZGFmNWQ3ZDQ1OGM4Yzk3MTY0YWU3ODMwMWQ5Z=
DIzNGYxZDA5YjMyZWIyZTgzMTkzODczOGRiZjJmZWFhYWZjNmFjZGUzYjcxMGYyYzZlNGJiYmVm=
ZGJiZjBmZjVjZDEyZDE1NzA0OWI1OGQ2MzZkMWNkMzAwOWI4YzdjNDUwNWQ2YjA5NTEzYjcyNzJ=
iYWIxMDU5MmNlNWMwZDE2ODRjY2YzZmY0NGE1MWVkYjllOWY5NTBhMTJhNzU1NzZmODdkYmFkOT=
Q4ZmJlNDgzMzlkZTI0ZjQxODNhNTc4NTQ5NTIwZWMwZTQyZDY4OTA3ZDk3ZWFjM2U2MzUyNWNjZ=
WE3OGVkNzNmM2E1ZjE5NzQ0MmE5OGJlZDZlOTg0NGM5MmVhMDhiNzU5MDA0OTc4MjM3N2E5Njdl=
YTMxMjhkZmVhNDA5NzliNGI0YTEwMmYyN2NjNjRhNTQwZTg1Y2VkNjY4ZDQ1YTdkMGMyMzM2ODE=
2ZWFjN2NiYWQzNmY0OWZjOTkyMmFmZTk5MDgyNWI5Zjk4MTJiYTdjZTE3ODMwY2I0M2UzYjMwOW=
Q3NjVlNGQzMzFkZGU4NDc1ZGUzMjRiMjg4NzM5MGRkMjY3NmJmMzBiNTMxYTlkZmQ2NWE1MTFmN=
DY2ODM0OTQ5YTQ4YmE3MDZjZWIyNGM3MGRmNDU2ZjljZDViYWZjOGJmZGE3ZDAxOGUyYTM4ZGYx=
NmFlZmQzOTA2NGUzMGFmMGI5Njg5NTg3MDA0NzdiMzg1MDYxMGRhZjZkODRiMjU4MTk4YmUwOTQ=
yMTA0YTg4YTU2ZjZlMTM4OWIxNjI5Yjg3YWYz" style=3D"text-decoration:none;color:=
#212121;font-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" bord=
er=3D"0" src=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/troph=
y_rewards_circle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"/>=
 PayPal Rewards Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#21212=
1;line-height:18px"><a href=3D"localhost:1333?u=3DYThmZWI3YTcxNGZjZWJlZGFiM=
2I2MDJjOTM3YjJiYWQyNDg5ZGNjODE2MjU5NjNhZmM5NmJkN2FlODk2MjliYmM3ODE5NGZkMWFj=
YTBhNTBjMjhkNmQ0ZjFlY2E3MGIxYWQ2MjlhMzRkNzFhMjk5MTBkZDAyNmJkYzg4NzNkOTk4ZTc=
3ZGFjZjdlNzA1ZWY5NTdhZjRiYzc4ZjljZGQ3NWFkZGM2MjA5NmJhZGQyOTI4OWYzZjg5OTY0Mz=
Q3ZjUxMzRhYWI0NWYxMmQ2ZWZlYTU2NjkyNzE0NjQ4ZjU5ZjBjNjcwYzdjNTI3ZWUwYjUyM2JiN=
WNkMTAyMWZiOGEzN2M1YzkwN2ZmNDI5NWQzMTRjMGNmMzllYThhNjI4M2Q0ZmFhZGQ0NTkxYWU5=
NjMwMjJhNTI1MDI0OWE3MWQ5YzE0YTczNzI1ZTZmZDZlMWJjMDMwMDJkYjYxNzJhYjM4MTQ4Mjh=
hNjJmMDMwZDg0ZjhmODcxYzE2MzM0MTM1ZTNkODkwNzNhOTFlOTczMWI1MGE4ZTRjZmE0MjFjY2=
YzYjdkYTM2NzI5ZGJmNjIwNDRmYzY5OGNkYjU1OWQ1N2U4MmI2NzQ3YjU1NDEzMjczODg0MWQ3N=
zk0MmUyMWNkNWZlMDY2YWVlY2RlNWQzMTZmMDUwZTU2MjI5NzhiN2Q4ZTYwNjAyZTdiOGFhYmNj=
Yzc2MDBiYWU0MTQ2ZmQ3MjExMmIwYzMxOGQ0MDk3YWE3MWYwOTE4NGZlZWI3NWM5ZjE4ZDA1NjV=
kMzVkMjE2ZDcxMzc3ZGRjZTg2MDlhY2U5NGM4NTRkNDRkNzEyZDkzOWYwODMwZjgzNzhlZjY0OG=
U0MjI1ZmQyOWE2ZjI0YmRiNjhjZDc3Yjk5N2VmYWQyZDFlZTg5NTJiMWNkNDJhMjJjZjA3ZjQyM=
DU4MTQwMjBiOWExMGI5ZGYwMTliM2MwZDlkYjlmZWUxZTdjMWQ1MWFkZTQzMjM4NzBkODBlMjZj=
Y2NmNzM4Y2YxODBjZGIzNDdmMzRlZjYzNjY3ZmI2ZmM2OTI2M2MyN2EwNzE5Y2M3YjExZDlhNzU=
yMzJhNzE2OTE5NTQ1ZGQzMjdlZWUyYmFiYzQ2NDljY2Q1NjFhZTIzMTFkYjQ0NmQzOWZmODhkND=
E5ODgyOWQ2NWQ5NjRmZmM2NmIz" style=3D"text-decoration:none;color:#212121;fon=
t-weight:bold" target=3D"_blank">366 points</a></td> </tr> </tbody></table>=
 </td> </tr> </tbody></table></td> </tr> <tr> <td height=3D"10" style=3D"fo=
nt-size:1px;line-height:1px;height:10px">=C2=A0</td> </tr> </tbody></table>=
</td> </tr> </tbody></table></td> </tr> </tbody></table></td> </tr> </tbody=
></table>  <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=
=3D"min-width:100%;border:0px"> <tbody><tr> <td> <table bgcolor=3D"#003381"=
 border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789=
003em_full_wrap" width=3D"100%"> <tbody><tr> <td align=3D"center" valign=3D=
"top"><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D=
"0" class=3D"m_44490807107789003em_main_table" style=3D"width:600px;table-l=
ayout:fixed" width=3D"600"> <tbody><tr> <td align=3D"center" bgcolor=3D"#00=
3381" class=3D"m_44490807107789003em_aside15" style=3D"padding:0px 20px" va=
lign=3D"top"><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" width=3D"100%"> <tbody><tr> <td class=3D"m_44490807107789003em_h=
20" height=3D"40" style=3D"font-size:1px;line-height:1px;height:40px">=C2=
=A0</td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em_def=
aultlink m_44490807107789003mobile-font-size" style=3D"font-family:Pangea,E=
ina03,BlinkMacSystemFont,Segoe UI,Roboto,Helvetica,Arial,sans-serif,Apple C=
olor Emoji,Segoe UI Emoji,Segoe UI Symbol;font-size:50px;line-height:54px;c=
olor:#ffffff;font-weight:500;letter-spacing:0px" valign=3D"top">You asked f=
or it: PayPal Honey goes mobile. </td> </tr> <tr> <td class=3D"m_4449080710=
7789003em_hide" height=3D"20" style=3D"font-size:1px;line-height:1px;height=
:20px">=C2=A0</td> </tr> </tbody></table></td> </tr> </tbody></table></td> =
</tr> <tr> <td align=3D"center" valign=3D"top"><table align=3D"center" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em=
_main_table" style=3D"width:600px;table-layout:fixed" width=3D"600"> <tbody=
><tr> <td align=3D"center" bgcolor=3D"#003381" class=3D"m_44490807107789003=
em_asideall" style=3D"padding:0px 80px" valign=3D"top"><table align=3D"cent=
er" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody=
><tr> <td align=3D"center" class=3D"m_44490807107789003em_defaultlink" styl=
e=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:16px;line-=
height:24px;color:#ffffff" valign=3D"top">Honey delivers again. Add Honey t=
o your iPhone and save on the go while you=E2=80=99re shopping. </td> </tr>=
 <tr> <td class=3D"m_44490807107789003em_h20" height=3D"20" style=3D"font-s=
ize:1px;line-height:1px;height:20px">=C2=A0</td> </tr> <tr align=3D"center"=
> <td align=3D"center"><table align=3D"center" width=3D"100%" border=3D"0" =
cellspacing=3D"0" cellpadding=3D"0"> <tbody><tr> <td><table class=3D"m_4449=
0807107789003honey-button" align=3D"center" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0"> <tbody><tr> <td align=3D"center" class=3D"m_444908071077=
89003em_defaultlink" style=3D"border-radius:3px" bgcolor=3D"#F26C25" valign=
=3D"middle"><a href=3D"localhost:1333?u=3DMWNiZTk2NDhjZDcyMWE2MDM3OTFkOTE3N=
2YwYTE2ZDJkYzE4MTcxZDdjMzA4MWY1YWVmZWFhODZkMWE4MTUzNWNiZWRhMTI0MGUzZGFlMjdh=
YjRiZTY3MjBiMmE1MmZlYzRiYjQ5Y2E2NWFkYzEyNjgzNTU4ZWUwYzhjNGVjNzgxNTVlMGU4NDV=
iZWNjYjZlNWVkZWQxOTQxNzRjNGMyODQ0MTJmMTRiNTYxYjNjZDk3OTFjMmU0OWYzNWQxZjA3Mz=
cxNDdlNjJiY2ZmYjFiZTRhMWI1NzdjZTI5YzJhZWYwN2IzNmFjMDk2YjliYzFiNDNmODUzMTI4N=
TFmYzRlNmYwNjRjMDg4MzAxMDMxYzQ5OWVlYjQwZWY5ZjYzZjAzOTg0YjIxMTVjNjQ3MjZlYWY3=
NjNlNDhlNmIzZDYxZTgyMWRjMDRlNWYyNGY3YWVkNmZmYWQ1ZTE3Yjk1MDE3OTBlNDY2YjA5MjA=
1ODVhYWQ0MDc0MjJjOTM4NDU0OTRmMzliYzY2MzhkODU1NThmN2FmN2JkZWIyMmIxMGY4MTM3ZT=
NjMzBjMTZhNThmNDk3M2RkYzMwNDVjNTkzMjE1ZjA4ODQ2ZmY2Yzk2NWFhOTM2NDhhZmJiODVjZ=
Tc5ODg2ZjFhYTkzNjIyYmZkZjYwYTYwODFkYjEyNzUzNzRiZDNhNzJiMDNjYTJmNWQ5MTg4NGQy=
YjhmODc4OTYzNjI0NDdjYzE5Zjk4ZjA4OGNiNzg3MjAxNzI5NzBlMWFhZDMxOGFmNjAwODY2YTZ=
jNTBjMmZjZjQ2Yzc0YzE4MmYzNjA5OGE1MTZhYmVkNzYzMjJkMTJmN2RiMGY0YzZkZTQ2OTZmY2=
QyNDkwMjczNjc1MGY3NzM1MjM5MWY2MjMxNmFkYjhhOTY1YWIwZjA0YTUyMDFlN2IyZGFkZjdlY=
mE2ZDcxYjdjZDBmYTdmNDhhYzU0YTI4YjY2MGU0ZjY0MTUyMTM5OTg4MjgyYjg0MTU3YTM5M2Qy=
M2Y5OWE0YjkwYzMyNmQ3NjU2ZjMxMmNhODAzNjM4YWI1ZDczM2ZmZGZmMTRkODM0ODE0ZDIwMWI=
2YjU4YTIyNGE3MTNkNzU1YjZiMzA5N2RlNmQ1ZDhiNTM2ZjBiOWI5ZGRiMDcyMTIyZjc4ZDk5Zj=
M1NTZhZWNlOGQ3MzViNGM5NTk0YTVhMTlmMTdkYjBmY2NjNjVlMGNmNmYwY2IxMTE1MTc4ZmJiO=
WM2Nzk1Y2ZkMDY4YzFkNGJmYWZmMTI2NzE4YjBiZDZlNjVlYzFhM2UyYTdlODRlZmY=3D" styl=
e=3D"font-size:17px;font-family:Helvetica,Arial,sans-serif;color:#ffffff;te=
xt-decoration:none;text-decoration:none;border-radius:3px;padding:15px 45px=
;border:1px solid #f26c25;display:inline-block" target=3D"_blank"><span cla=
ss=3D"m_44490807107789003hide-desktop" style=3D"display:none">Get Honey on =
mobile</span><span class=3D"m_44490807107789003hide-mobile" style=3D"displa=
y:block">Learn More</span></a></td> </tr> </tbody></table></td> </tr> </tbo=
dy></table></td> </tr> </tbody></table></td> </tr> </tbody></table></td> </=
tr> <tr> <td align=3D"center" valign=3D"top"><table align=3D"center" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_m=
ain_table" style=3D"width:600px" width=3D"600"> <tbody><tr> <td class=3D"m_=
44490807107789003em_hide" height=3D"20" style=3D"font-size:1px;line-height:=
1px;height:20px">=C2=A0</td> </tr> <tr> <td align=3D"center" class=3D"m_444=
90807107789003em_full_img"><a href=3D"localhost:1333?u=3DYTQ1MWY3NTczMWZkMz=
MwNDczZDU5MjYyMDdkYTM4NGYxNzQyYmQ2ZWZlOTQyM2UzNGU1OTk4ZDVkYmNlZjI1Y2UyN2I3N=
Dg5MDZjYTIwOGUxNTFlMGQ4M2UwYzZmNDFiMjRiY2I1YjUxZWEwNDkyM2YzYjMwN2Q3OWFiMDY1=
MjFiNGZlMjExYzA3NzI4NjEwOWUyNjQzNTVhMTViZTc0M2UyNjc0ZWY1NmJhNjYwMWM2OWQyNzU=
0NjI1ZTVmOWNiNDg1NDY4YTVlYTA2ZmM1ZjVjNTlhYTVmYmMwNjlkZDM2YWFmODg2OGM1ZmI4Mz=
E5ZjBhNzIzOTk2MzE5NWZmZWJmYTYwNTMwMDUwOWQxODJhZjMzMDg0NTVlODM4MjIzOTNmMzdiY=
WI4MDUwNzVmZmE3YjRiMzZhNTgwODllOGY4NDEyM2Q4N2QwMWVjMTBhMmI5N2FhZTFjMzdhNTc5=
YmY3ZDE2NmJkM2RhMTM1MGU4MTc2YjA1OWRjMjQzNzcxNWMzZWFhZTkwYzBmYzRkNjhjN2IwNmU=
3NmY0ZjMxMTc1Yzc3YTkxY2EwNTUxMzNkNTg0YTFhYjkzOTUyY2UzMjdkZTU2NGQ2ZjdkNDU0ZD=
M2OGExMGM5NDRmZGEwYTY3YzdlZDEyNWIxNTUzZjMwYmE2ZWZmZDBjNjRlMDZiNmY3ZmRjZjIzM=
GM4OTBhMGFiYTdiNWU2OWY3MjI1MzdjZWI0NTQxYWMyZTBjZmQ3Y2ZmMWVmNTQ2YTZjZWU5YmMw=
MGM3ZmYyYTYxOTMyMWQ4YjhkZmNkOGU0ZDk1YzFhY2E3YWNlNjg0N2ZhYWJkZWVlOTAyMGYzYzM=
yYWExMzVkZTRjMWVkOWQ3ZWM1ZGQ0OGE5YTdhZGM5ZDI4ZjE2MWZjMDFkZGVhODc5ODBhOThkMT=
VlMDQ5ZjkxYWQzOTVlNDlkNTM1ODVkZTZhZjY2YmY5OGQ2MGYxNjkxMzRmNTFmZTkzMjIzYjU4Z=
jRlMGYxZTg0ZmRiYzI4NmZmODBjNjZmNGM1ZjkwMWQ3OTU1MzVjNDBmYTcxNDIyM2E2YjYyZDMw=
YWRlMDhiYWFlZTVjYmQzN2E3N2VkMWFhMjg3MGE5MGQxY2FjNGVmZTlmNDliZDA0NjA3NzcwZDR=
mNzc4NWZiODYzZjJiMTM1NjA3ODkyYWEwOGEyNDhiYTVmM2IyYmE3YjUyNGFlNjkwNzdkMGViY2=
FlMTdlMzEyOGZlY2FmNzA4NTgzNzQ0YTRkYzRjOGQ1ZTJjM2JiZjMwMDI3MjlhZjFhOWE1MmFlM=
DdhODc=3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get=
 Honey" src=3D"https://cdn.joinhoney.com/images/email/mobile/ios-mobile-ext=
/MSE-blue.gif" style=3D"width:600px;padding:0px;text-align:center;display:b=
lock;line-height:50%;border:0!important;outline:none!important" width=3D"60=
0"/></a></td> </tr> </tbody></table></td> </tr> </tbody></table></td> </tr>=
 </tbody></table> <table bgcolor=3D"#EEEEEE" border=3D"0" cellpadding=3D"0"=
 cellspacing=3D"0" class=3D"m_44490807107789003em_full_wrap" width=3D"100%"=
> <tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"center" b=
order=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_4449080710778900=
3em_main_table" style=3D"width:600px" width=3D"600"> <tbody><tr> <td class=
=3D"m_44490807107789003em_h20" height=3D"20" style=3D"font-size:1px;line-he=
ight:1px;height:20px">=C2=A0</td> </tr> <tr> <td align=3D"center"><a href=
=3D"localhost:1333?u=3DMzcxOGQ0ZTc4ODJlYjQwNWE3ODc3ZGM1MWE3ZmE2NDBlMDlmYjZk=
NDc0Yjg0MDM4MmMxYTEzNDZiOGZlMjNkY2NlMDZlNzI2MjNlODRkZmU5Y2IyZTE1NTUzYTM0NzI=
1MmJlNzQ1ZjY2MDdiMmFjMGRjODQ1OTcyMzY2YmRjZTE3YzIzYjMzYmE5OGMyZmRjODYzMmVlYW=
I2MmVkMzNkYTcxMTBmYTAzY2ZlNDRlMzYwN2IxMzE4MmY2ZTkwYThiYmVmODBhNDg1N2MzZDJkM=
zFjZTZmYzM2NjJmMDM1N2U0MjZkYzM2OTM3ZDI3MzljMGM2ZmU4Mjg1ZmZhYzI2Y2E0NGMzYmU2=
YmExMDEyZGRlZTY0MjE2MjZmNGI0ZTZkYThlODk4MmJkZDE0YmY2NjhiOGM4ZDc4ZGNmNzljZTY=
wYzA1ZDQ5ZTIxZDI4NWQxZjg5MDNmOWVjMDI2MzdmNDQwMzVhNmRiNTBjZjRlZmJlMjA4N2E5MW=
E3OGJiMDc5ZmQ5N2YwYzI0ZWNmNzZiYzQwZDE1ZTI1NmEwN2JhZTI5NzUwYzYxMGI1ZDQzMTc3N=
DI3NjUzODkwNDVhM2RlMjcyYjk1NjBmMmQ5YzI1MDQ5ODVkNDEzYmMwM2Q1NGE2MTY3Yzk1MzNk=
ZjM2OGZkNDllZGFhNThjOTgxYWYxYTFhODNiYjk1NTE4ODk0ZjAwNmRhMjViOTMwODJjYmEwOWU=
2ZjJjM2ZiMjI3OGZmMWZkODdmMDg2Y2NlZmY2ZTBlODFhNThkYjViMTg3ODVmNzA2OGRkYzQyZW=
I3NzZmMDliMzFkMGE2MGY0NjI3ZDViYTlkOTg3ZGJhNDBjYmQ3MjI0NjBlNjFmMmQ5NTc3NWVkM=
zlkMWM0MzVhZDVhODk2YWRkMDFkM2U5OGZiNmJlZjgwMTJiZmQzOTYyMWIyMTY3ZWM0MDBkOTE0=
MDU4YzIzMmY5OGU5MGUxMmZlMzNjNzkwZDMxMTBkMWY4YzFkMmQzYmU0NzU0NTVlZmZkYjIxYjE=
xZGJmZDM0NjU5OTYyZDQyOThmOTRiNWMzMDI1YzYxNTdjNGRkYjUxOTYzY2U0YTRjYzgzYTZmMD=
cxNzhhZTU1YjNkMzM2ZTVkMzI4Mjk2OGI4ZjA1MjUyNzM3NTY3YzFkZGQ5ZjBlMTc0YTViZjNjM=
jQwNTgzZmU0ZjEzMjlhNzRiZTc1NjkyMjkxMzYwMDhlMzYyOTgyY2Y2ZDZiZjYxYjkyN2RmYjQ2=
Njg0NDRkM2FhZDg4MmFhMTdlNGRjODc3YjcwNGVhYjVkYmU=3D" style=3D"text-decoratio=
n:none" target=3D"_blank"><img alt=3D"App Store" src=3D"https://cdn.joinhon=
ey.com/images/email/mobile/ios-mobile-ext/app_store.png" style=3D"width:180=
px;padding:0px;text-align:center;display:block;line-height:50%;border:0!imp=
ortant;outline:none!important" width=3D"180"/></a></td> </tr> </tbody></tab=
le></td> </tr> <tr> <td align=3D"center" valign=3D"top"> <table align=3D"ce=
nter" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444908071=
07789003em_main_table" style=3D"width:600px" width=3D"600"> <tbody><tr> <td=
 align=3D"center" style=3D"padding:0px 10px" valign=3D"top"><table align=3D=
"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <=
tbody><tr> <td height=3D"10" style=3D"font-size:1px;line-height:1px;height:=
10px">=C2=A0</td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789=
003em_defaultlink m_44490807107789003em_center" style=3D"font-family:Suisse=
Intl,Helvetica,Arial,sans-serif;font-size:12px;line-height:16px;color:#7575=
75;text-align:center" valign=3D"top">The Apple logo is a registered tradema=
rk of Apple Inc. </td> </tr> <tr> <td height=3D"10" style=3D"font-size:1px;=
line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"center" cl=
ass=3D"m_44490807107789003em_defaultlink m_44490807107789003em_center" styl=
e=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:17px;line-=
height:24px;color:#757575;text-align:center" valign=3D"top">Learn more abou=
t Honey for mobile Safari <a href=3D"localhost:1333?u=3DNDcyZDNlMzI4MjVmMzI=
yN2M2YzExYjBmNDc4ZTU3Yzg3ZTcyMDg3YWI3ZDA1NTJjNjk2OTJkZTk5MjQyNTFiMTg4MmM0OD=
ViMGViZGVkY2U0N2I4YjJkY2UyNTBkMjFkOWJjZTYwNGRkYWEwYjMzNzQwNzkxM2I5ZjliYjVkY=
jJmYjJkMDk1NzkxNDgwYWUxZmI0MGU3NWMzODBjYTQ5NTQ2NmI0MTljYjcxZGNjODg4NmE2OWYx=
ZDdjYWU5MGQ5ZmNmZDU4ZDE4OGIxMTM4OWE0ZGQ4ZDFmMTY5N2MyM2U0OGViNDVkNTY1YTFmNjE=
2ZGIyNjMxN2E5NDUyZTkzMTE1YjQ5MTFjYmQ4MWE1NDJkMThlYjIzNGEwMjk2OWM2NTEyZDAyYj=
k0NTEzOWY1ODY3NTRkZGNmYzg1MjBlMjYzNGE5OWEyYjc3Y2YwNzVkYzM2MmY1ZGYxMGE2NmM3Z=
DgzNjhkODJlMDM0OTM2ZTM5YzgzMGI5Y2NkOTNiZWVlYzA3NGZlYmViNDU4M2ZjOWVjYWEyZjBh=
ZTc2NjZjZWRhNGY4ZGYzNTlmODgxYzdjYjY0YmQxYWNmZGEyYzUyYmI2ZDkzYTg0NTZkNzgyNmM=
3NjAwZDcwNWIyOTI3NTQ3YzM5YjE5NGU4ZGI2MmQxYzYwYjUzNTc0YmE2Mjg1ODFmOWM2ZTcxND=
gyOTE5ZTgxOTBjMTFmZDQ0ZGIwM2JjZGY0ZDNkZGYzOTVmNTllY2RiY2NhNWMyOGE4ZWM1MGYyZ=
TE5YzI2YjFlMmEzNmU1ODk1OGFkNmViMDExYTVhMzU4M2ZiMTM3MDU4ZTgzNzM0M2YwNmU4YjQz=
YzExYmU0OGQ4Zjg4MWJlMWVmZWZkMTI1YTM2ZWI0Yzc2NTZmNjQ4NWU5NGJhODZjNjg3MDI5Yjd=
hNjMzZjVhNDRiOTRiNWQzYzAyYTcyNDUyYmI4NTIzN2RjY2E0Zjk1ZWJjZGJjNTNmZDBiMmQyZW=
M4NzY2YzhlMGM5ODE2ZGQ0M2U3NGYyNGY5MWE0YWRhOTU2MGYwMGIyMDlhZTcxYzMzNTlkOWYwN=
GYwOGYxZDk0ZmIxODcwZThhNWM0MmNlOTUzMGZlNzM3MmU1ZDZjNDNmZjlhNGM1Mzg0NGI1NjAw=
ODhhY2VlY2NhZmJiMTA3ZGE3ZjJmMmM3ZmJjZGJiOTg1MjczMzk4NjQ2YjE2MTc5ZTlmNmZkZTR=
hMGNkNzc3YzY0MzAyYTJmMDkxM2EwMjRjMTI1ZTg2YjllMmMxNTA3ZjI3MGQ4YTMwN2Q0MjdiNT=
c5MjQ=3D" style=3D"text-decoration:underline;color:#757575;font-family:Suis=
seIntl,Helvetica,Arial,sans-serif;font-size:17px;line-height:24px" target=
=3D"_blank">here</a>. </td> </tr> <tr> <td class=3D"m_44490807107789003em_h=
20" height=3D"20" style=3D"font-size:1px;line-height:1px;height:20px">=C2=
=A0</td> </tr><tr> <td height=3D"1" style=3D"height:1px;background-color:#b=
dbdbd"></td> </tr> <tr> <td class=3D"m_44490807107789003em_h20" height=3D"2=
0" style=3D"font-size:1px;line-height:1px;height:20px">=C2=A0</td> </tr> </=
tbody></table></td> </tr> </tbody></table></td></tr></tbody></table>  <tabl=
e cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100=
%"> <tbody><tr> <td> <table bgcolor=3D"#eeeeee" border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0" class=3D"m_44490807107789003em_full_wrap" width=3D"10=
0%"> <tbody><tr> <td align=3D"center" valign=3D"top"> <table align=3D"cente=
r" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444908071077=
89003em_main_table" style=3D"width:600px" width=3D"600"> <tbody><tr> <td he=
ight=3D"15" style=3D"font-size:1px;line-height:1px;height:15px" class=3D"m_=
44490807107789003em_hide">=C2=A0</td> </tr>   <tr> <td bgcolor=3D"#eeeeee" =
class=3D"m_44490807107789003em_asideall" style=3D"padding:15px 10px 0px" va=
lign=3D"top"><table align=3D"center" border=3D"0" cellpadding=3D"0" cellspa=
cing=3D"0" width=3D"100%"> <tbody><tr> <td valign=3D"top"><table align=3D"l=
eft" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_4449080710=
7789003em_wrapper" style=3D"width:380px" width=3D"380"> <tbody><tr> <td val=
ign=3D"top"><table align=3D"left" border=3D"0" cellpadding=3D"0" cellspacin=
g=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:188px" width=
=3D"188"> <tbody><tr> <td align=3D"center" class=3D"m_44490807107789003em_d=
efaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl,H=
elvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center" v=
align=3D"top"><a href=3D"localhost:1333?u=3DMGZlMzZmMDVkMmJhNjBiOWRmZjFjMTg=
1YTJlYjNlMmYwNzYwZDg2OWY5NjMwNjgwOWRhYzI5NGE4NTUwMTRlMzg5NzE2OWE3YzNmMjUzOT=
c1MTA4ZDcxMzYwZDcyODg4YjMyYTc5ZTY0MDcxZjk5YzMzODdhNTM0OTIxZWRiYzBhMDEzYjY5M=
mFlZjZlOGZmOGU0ZDdkMjdjMzU1MzMxZDgzOGJhOGU4Nzk2OWE0ZTM2MTZjOTJiZWE2OGRlODE3=
YjYyNDIzYTEyZDAwMzA5ZWNhNzBkMjA4MTAwNjczM2RjMDhkNWIyODY2NjJlNjU0Njk3NjMzZjc=
4ODQ5OWUyYWNhODdiOTIyMWI3ZGYzYmI1MmU5NWQ1YjMyNmZkNDA1Yjc2YmM3ZTA2MzI2NGMxMj=
FkZDc3NTM2NmFkNzk1OTNmMzg0NjYzM2YzN2I0MjkwYjRkZWZjZDdkY2U1ODVkYzc0OTVhN2IwZ=
GI5NmI4ODQ1N2FjOWQzNDExNjliMTEyMmExNmQzZmI5ZWUwZDU3ZjZiOTc2M2U1MzI3ZWYzMDZl=
NmIwYjhhNWFiZTFlZGRkNjRkNzhjYWI5YmZhYmMyYzM2MmQxZDJhNTYyZTViOTZiYTQ4YzBkZDE=
zNTc1ZDhiNDJkMzFjMjgyOTg0MDdjOGY0YmVkYTFmNjAxMTJmYThmNzUxZWRhYmU1OGU0ZWMzZD=
c2MjA4YWE4ZWU1NWNhMjQ2YmY0YWVlNmFlNTlhYTk1OWNkNTdlNGI3MjgwNzNjOWQ5NjJkOGJmZ=
jhjMDBkYmMyZDQ2YjBjNTRhNTg5YTNiYTQxMjFlNjY3ZmI1ODM4NDE1ZmIyMjhmMTY3NmM5NWIy=
OTkyOWRlZjEyYjE3YjRlMWRjNDE0MmY0YjU4ZGNiZTY0YWRjYWQ0Y2E1M2U3YTAwZTNlNzMyZjQ=
1ZmNiMmRhNjVlYTBmOGIxOTU2OTBmNmYwOGRhOTk2YTIwYzk2ZDkzOGYyODcyMmE3ZGY2Mjg1MT=
c3MTYxOTUyYjA4MTgyZWE1NjZhMGRiYmU5NmE0MzVjYzRmNmUxOWUwZTFjZmQ4OTY1MTc3OTllZ=
DM1NGViZjc1NTlhMWM0Mjk5OTBhZjNiYTYzMTQwYTE4MjAy" style=3D"text-decoration:n=
one;color:#616161;display:block" target=3D"_blank">Explore</a></td> </tr> <=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D"hei=
ght:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table alig=
n=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444=
90807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><tr> =
<td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"height=
:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl=
,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center"=
 valign=3D"top"><a href=3D"localhost:1333?u=3DNzQ3NGM3ZWJiZmQyZWJkYTMyNzdhN=
2VjOThkNGQyOThkMDgzZDMyYmFiMzc2ODdiM2ExMGFhZWM2NDU1NDFkM2IzZGM0MTM2ZGMyNzM2=
MGIxNzMwMGUwOTI3YmQxMGU5ZjhmNTA0ODQ0Y2Q2YTAyY2I1NjBhYTg0NWY5NWRmMmZiY2UwYjh=
hNjY1NDFiYzI1YjE1YjU4OWI5MDcyMTE0ODM3NzAxMGE0NGJiM2QwOTc5OWIwMTRmYzIzZTI1Yj=
k0ODM5ZjU3MTEzMTAzNmY0ZjA4YmVkNjk5NjMyMDQ2ZDY0ZGVjNWUyODIzNWUzNGUxZDk0NDg2Z=
jNlZDNjYzc3N2JjYjJhYmEyNGJkYTkyZGEwNmUzOTY2MzZlZjJlYWZlODU1OGE5MmNjOTYyOTQ5=
MTM2MmJiNGE5Y2QyY2M3MjU5ZTMwM2FhMjZhZDQ5MjdhYTFmYWZjMzNjNzJmZWZkOWVkMjIxMzc=
2YWYxZDc5NWM4MThiYTdkYTY1ODRkN2Y3ODY2NzI2OGQzNDUwYWRjN2Q0MDMzZWIxZmY0ZDdjZm=
NlYmRlMTA5ZGMwYjMzZjE5MzE1YmQxMTY5MmViOGVmOWQ0MzYyODZjNzk0MjA5OWE1YWViOTNlY=
2I1MzliZTkyZGRhMTI4Y2NmMjRlZjg4ZDJlODI5NWU4ODNjY2ZhNmM3ZmMzYTY2MGUxYzhjNzE2=
MjU2MDliMzNiNmJiN2NiMDUzZjdmYTUyMDhkMjk3NTAwZDdkNTJmNzBlODExNjMwODUyZmFhYTc=
zNjEwNjlkNWY5ZDdkNzViNTVjNjc4MWQzZDU0NGUwNWViYmUyOGYyY2Q2Yzg4NDliN2NkMDE5OW=
Q0NTI1MzhhOTc0ODE3NDE2MGViM2NmNmE5MTdkYjkyNTE2MjMxNjc3YjYwMjBiMzRlNTg2YzQyO=
TBkN2IwMWQyNWZiNjZhNmI2MzhjNjdkYmMwYjcyYmZjMjQ4MTE0N2U2ZGQyMTVlZDRkMzA5ZGQ1=
NTc2ODViZTM0ZWQ4ZWIxNGE0ODdmZWNiMDk4YzUyYzIzMTM1OTRjZDgxYzhlMDZmOTFiZDkyZjd=
kZjI3ZTczNDI4NWZjZmYxZDNhODk1ZmRmYTZiNzIyYTdmNjA3" style=3D"text-decoration=
:none;color:#616161;display:block" target=3D"_blank">Droplist</a></td> </tr=
> </tbody></table></td> </tr> <tr> <td class=3D"m_44490807107789003hide-des=
ktop" height=3D"1" style=3D"height:1px;background-color:#bdbdbd"></td> </tr=
> </tbody></table>  <table align=3D"right" border=3D"0" cellpadding=3D"0" c=
ellspacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:188=
px" width=3D"188"> <tbody><tr> <td class=3D"m_44490807107789003hide-desktop=
" height=3D"15" style=3D"height:15px"></td> </tr> <tr> <td align=3D"center"=
 class=3D"m_44490807107789003em_defaultlink m_44490807107789003footer-nav" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:16px;c=
olor:#616161;text-align:center" valign=3D"top"><a href=3D"localhost:1333?u=
=3DODQwYjc4Mzg1MzUxOGY3NDkwZWI5NDlmYjQwNWFhMDIwZTAxZTgxNTg1ZGMxZTMxZGNmYWQ1=
ODRjZDRlOWIyMGE3MTgxMjk3ZTI5YzdiM2QxNWFlZjk4NDU3ZjZkOWIwMDMxMjY0ODU0ZjdmNjV=
hMTVhZmZmYzZlZjE1YTczOWVlYTI3ZDgwZTQ2ZTYyMmMwMDE5MDQ4YmUwMzliYTc3MGRkYTkzMG=
JhN2I5MWEyZjhiZGNhYmZjMGEwYjAyZDg2YjAxNjY2ZjhiOGU1YjZhZmU5OWY4MWE5ODRkNzBjN=
DVmMzI1NTdiZWRhMDFmNWVjNzlmZDUzNDlkNGJiOTZhNTFiOGI2NmZiYzk5Zjc5NTliOTNkNGRi=
N2QxYjczNDZhZmJhZmFmNzQ5MTNhZTA2ZTEyMzljNDVlZWY4NTU4OGRhMGIwOTI5NGZmNTM4NzQ=
1Yjg5MTRkNmM2MjhjZjlkMmM0N2UyYTY4ZTBmY2IwYjI1YzVkYWIwNGUzZmFlMTJhYTBiYjk1ND=
ZhZTMyYWU0MDAyNzRiNzVkZWE2YmJhYWQ0YjIzNzE3YWE0ZDJlYzEwZWFlMTUxY2YyNzQ2N2I1Z=
mNlMjBjOTExYTM4ZmUzYjVhMjQzYjM1MTdmMTBjNzMwYzQwZDI1NjM4Y2EzNWY0MTg1NTg1ODkz=
NmZmMzc3ZTI4ZjkzZjVhYmEyNzE0YjE1YTgwMDhjM2NkOTZhNzRkZDMzNzI5MDAxYmYzYTQyYzR=
hNTQ4MmIyN2M0ZTQ2Njc5MGQyOWJmOTEwYmM1YTNkMGEyNGNjMzdlMzJhNTA3OTJiN2IwNDgxYz=
QxNDMyYjVhMmNjMjRjNTZhZTJjNTk2NGVmOGVkNDE3MmMyYzkyZTZjYTg4OWZkZjllYTliZTBjN=
2FkNjRmNDQxMjJmNmQzYTAwMjdkNTdiOWQ5ODBiNDlkNjI3OTZhMjdhMTM2NWMxMDc5ZjE3YzNl=
YmM5NGFlNzY4YTcxNTI2OTFiNDQ1ZWI2NDg2MDM2ZDIzOGY1YTA3MzAxZGFmODMyZmY1YjA2YTg=
zNTkwZGUxMWU0Y2ZjYjM2ZjM1Y2U5YjUzMWI2OTI1M2M3ZjQ2OWQzNzBkMmRhZWY2ZTEyMDQ3Yj=
c1NmVkNGUxODEyMmU2NDYzM2FjYjk5MzE3MWNiNTljYmY4NzVkZTJk" style=3D"text-decor=
ation:none;color:#616161;display:block" target=3D"_blank">Rewards</a></td> =
</tr> <tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=
=3D"height:1px;background-color:#bdbdbd"></td> </tr> </tbody></table></td> =
</tr> </tbody></table></td> </tr>   </tbody></table></td> </tr> </tbody></t=
able> </td> </tr> </tbody></table>  <table cellpadding=3D"0" cellspacing=3D=
"0" width=3D"100%" style=3D"min-width:100%;border:10px solid #eeeeee"> <tbo=
dy><tr> <td><table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=
=3D"background-color:#eeeeee"> <tbody><tr> <td height=3D"40" style=3D"font-=
size:1px;line-height:1px;height:40px" class=3D"m_44490807107789003em_h20">=
=C2=A0</td> </tr> <tr> <td align=3D"center"> <a href=3D"localhost:1333?u=3D=
ZjQzODA2MTllMjY5NzM2MmE5MjU4NTcxYmQyZmVkMmQyZjQ5MmE5MmY4OWY2NDQ3NDNmN2M1ZDg=
3NGRiNmE0MDU5MTRiMWZjMWFhZmQ5YzBhYmM3YzNhMmExNDU2M2RlZTk3NzllZjY5YzMzMjhhYz=
U1NTJjY2ZhZjIwYWY4YjlmZWU4ZDQyNjFmN2RhYmVhNmU2OTk0OWMxYmY0NzQyMTFhNWZjYzc0Z=
Dg2NWFiMDU2OTQwNDQzYTU4MTEwNjRhODQzOGNiNDY4MmE2MzIwMTljNDZjNzFjYzdhYWJiY2Ix=
ODViMTExNWU1OWZiNjQyNDM0NWE5MjllODY0NWJjNTc4NzRjODhhOGM0MTkzMDU3MzYwMWQyM2E=
4N2QxZTA0NTFiNjhmYWM4ZGRiMjgyMzMzNjA4Njg0YzFlMjkwNWQxMmE0ZWU5YjVjYjJmYmRjNz=
VhMGVlNmQxNzZmN2JmMjRmZjNkYzI4ZWZmZDU0ZjAzOWM5NzdkOWEzMGM1MWQ5M2RlNDdjMjQxM=
WQ2ZTRlOWJmYmI4NThmOTY1NDRlZWMwY2NiYWNhYjFkMDE4YmZjOGNlZDU4NTg1ZGUxOTNjNGY4=
ZjBkZDk3YjhjYWEzYzYxZGNhN2VkYTJhYTIzZjM2NzM1ZDQ0MjZmODg2ZjY3MDg3NjM1NmMxNDk=
1MjU2ZDgwODJhOTA5OTU5MTFkNWNhMzI4OGYwMDk3NzgwMGFkMzc5MDNhNWM5Y2M4ZTU0M2NkMG=
I5YzViNWQzYmQ1M2JjNjFlZTcxYWQzMThkOTQ0Yjc5ZjBlYTc4ZjE2NTlkOTE3OTRhMTJkY2UzY=
jg4MGQyMjkzNjk5MWM4YmYxNjQzMDM1NGUzNDFhMWRmYWJmYThmZWE4MDYxNzg2Y2M5ZjlhZTAw=
OGQwYmFjZWYyNmJmNmU3NGFhYjUwYWJmNDAyNjZlNGZlNmU0ZDJhYTI4OGViYTlmYTMzM2RiYTk=
5NTEzNzEyN2IyOTE1YWQ0YmQ1ZmYwY2YyMTMwZGEyMDA4ZTYwYWZiOWM5YWViMDE0ZDMxMWMxYm=
ExYWZkMWUzZWNhMTM1OTczOWY5MTUwMDA2ZjdiNjQ4MTA0NzlmN2JlMGNmZGJhOTU1YTVkYmJiN=
DA1" style=3D"display:inline-block;margin-right:45px;height:24px" target=3D=
"_blank"> <img alt=3D"Facebook" src=3D"https://cdn.honey.io/images/email/we=
lcome/welcome-social-fb@2x.png" width=3D"24" style=3D"border:0!important;ou=
tline:none!important"/> </a> <a href=3D"localhost:1333?u=3DZTY0NjczMTFiMGIz=
YWM4ZTcxNTgzMjIwODlkMGU4M2IyZTkyNmMzYjY2MzQ4YWU2MGQyYjJkOWM2OTUxYWU1NDhjOTk=
xNDkzMmExNzYyZWU2ZTlkMmZlMzVmZWUwMTE1NTVkMGUwYzUwMmE0ZTI1YmRhODIxMWJjOTQ1NW=
E2YWZjODUzZGI1NjIzNTVmNWMwMGMyZTNkMzRmOTM5NmE4MmRkOTY0MWVmYTRjZWY3MzNiNWJiM=
zRmODBkZGM5NTVhZTk5ZjYxM2RjODBlMmE2NmU5NzM3NzEwNzNhMjA5YzdlYzM1MDA1NTMyZmQw=
NTkxZjcyODFiOTk4OWQwYzdmMDQyYTg1YWVhMzE5ZWZkYWY5YTMyZjc3NmI2ZWMyY2I3ZTU1Zjl=
lYjE5ODIxN2Y0YWU0M2M2MjJiMDMwODBjYzFmNjZkZGU3ODdjM2FjNDU3OGMyYzkxYWFlNjllND=
MzYjc2ZGY3OTZmMzQ5Y2IxMzUyMjdkYzQxN2FiNzQ3MGVmMmM1YzY4MmNjODQ1MzlmODQ2YjVkZ=
ThkMzIyYmI0N2NmZTUyODc5Nzc0N2ZjZGNlMmZjZjRiZDBiMDkxMmU1NGQxNTM4NDcyMjg4OWJl=
OTNhYTdhZmRiMTA2MWZmMGYxZjNjYTJjYTVkNzI2ZWJmMTZmZThlNzcwNWQxZmUzZjY0MjEwNDZ=
mYmFlNTM3NjFiMjVjMTFkMzg4MTg2ZWVjNWE2NzgxOWU5Y2U0OWY4NWNiYjFjNDcwNzk5ZDI0MD=
JjMmMyMTMyMWM1M2FiM2YwMTZiMjNjMDYzMDBjYTczZTM5MWUxYTU0NDk5NmIwZDQ5MDRmNGM5N=
jczZWQzMzM1YzliZTY2Y2NhNTVmMjQ5MWY0MGUxMjNlNGRmNGRlNGNiZjJhN2I5MjVkNDM5Yjk4=
MjBlZTlkZDJjNGM4ODdhNWE5ZWIxZGE4MDNmOTQyYTU4NTczZTAxZDQ4MTI2ZjViM2Q0ZGY2Yzh=
kNjgzYjcxZWU1Y2IyNjdmZGQwMGJlMWNjMGRlMmY4ZDYwZTgwYTMzOWJjMGNjNjgxNjlkZmNhMT=
c3MjQ0ZWI4YjkyM2EyZGVmZjIwOThhY2UwZTc1YzFkODQ0NDAwOThmNDMzZDZi" style=3D"di=
splay:inline-block;margin-right:45px;height:24px" target=3D"_blank"> <img a=
lt=3D"Instagram" src=3D"https://cdn.honey.io/images/email/welcome/welcome-s=
ocial-instagram@2x.png" width=3D"24" style=3D"border:0!important;outline:no=
ne!important"/> </a> <a href=3D"localhost:1333?u=3DOWFlMTIwOGYwZWYyNGYxYzlj=
NDg0MTE1ZmMyZGEzYzJkNjc1N2Q4ZWQ1NmVhY2UzMmYwNjQzYzhmNDY3ZGVkM2ZiNTI2YTk2ZjF=
kMGY4MDkwOTIyNjM5YmE3ODc4ODQzNGRlZjFjZTJhYTcyYTBlYWVkNWJmMGZmYWVlODJkMjcxNm=
FiYmIzZmQ0MGRhYjZmMzMzNDVhMjA4OWM2NWI5YTUyYjExNDEyMzkxNDE5MDQ0MTNiZmI1YTQzN=
zI1NjlhYzUxZDUzMTk1YzI3NWZiYTE1YTI1MjcyNGRkZjFjNTk5ODg5NjA2MTk5MTFkMWI0NTMw=
ZThmMWE1NGRhYmU0ZDI5NTdiMThkMmRmNmZjZmMxNDMxZmI1Zjc1MjQyZTczNzIzYmI2MjRiMTk=
4NDYyNGM5ZTQyOTJlNzBkMzdiZTFiNDViNTQ3NWU5MjlhODZlZDM5NDY0ZmRmMTMzNWVmNmI1Mj=
E3OTIxZTFiMDk3MzdjN2IwZTVmY2FkMzlhYzI0MjgzY2NhNDY3NDNlN2U3NTNjMDJmZGY0Nzc4N=
2JiYWQ2YzE0ZWNhMWVlOTA5MjVlNDcxNzliNmE4MDNlMmZkMjU4ZTNjMTIzZGQ3NWEyYWVjN2E0=
ZmJhZmZlMjk1NjM1YjYzMWU2YjIxNDVjNTJlMDI1ODBlYjIxMjBkYmI5Yzg1YTg2ODk0ZDhlZmI=
zN2JlMGM4OTc4ODMzNDQ2MjdjYjI0NGVlM2RkNWQ0NjNjOWFkYmM3YzFjZmIzOTRhZmFhMzc2Mz=
c1YTI0ZTFiY2Q4MDNjY2JmN2QyNTAwMGRmMzQ3ZjBiMzQ4MjY5MmZiYTkyODhkZDJlYmI3MWIzN=
jFmYzIwNmU3ZTY4MjY2NjJiZDAyNjY5ZTRiY2ZiZGU2ZTdmZTFmZGZlOWE0MzY0MWY4NWVhYmIy=
YTkxNDUxNDIxMGI4Y2E5MmE5M2RhMTcxNDYxMjQyNDZjYzE4NDY4NTU3MmJlNDlkYjg0NGM5NGN=
kNDI1ZDQzNTU1ZjNkZjY2MWI0MjMyM2EzMmVjNDZmNmYxZTRlMzllOTFhMjhjMTlmNDU0YzkyND=
A2ZDMyZTVhNmZmZTEyZTM4MGEwN2ZiNDAxMTM0YzFkNzZlNzU2YWZk" style=3D"display:in=
line-block;margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pi=
nterest" src=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pi=
nterest@2x.png" width=3D"24" style=3D"border:0!important;outline:none!impor=
tant"/> </a> <a href=3D"localhost:1333?u=3DMTZlNmMzM2Q0YmRjY2FkYWIwZmU0NGM3=
M2M5NDVmNTk1ZmUzZGUxZTRmMDNlMzJjZTA0NTVhMWVmOGExMGI4ZGRlYjk5YzIwYTQ3MjRkZTh=
hNTA1YmU0YmEyYmNkZDk4ZTRhZGI0ZDFhMDUxN2Y5OTAxOTQ2YjJiYjY3YzIzM2MwNzhkNjdjOW=
E2NWFiNThlYWYzNjIyZTIwYzllM2UyMTFiYTBhOGQ3YmNlNTk4MWZkNTkxYTQ1NGI2ZTgzN2FlZ=
WM0MGM0NzYwYzdiMzJiNmVlZTVlMDAyM2RhNTU3OTQyOWZiZjE0NGFhMzViZmY4ZGQ1OWIxZmUx=
YmQ2MmM2OGE4ZWRiNmM1MWYyMTlhN2UzNzEyNjJlYjViNmMxZDgxMzE4NjM5MGJhZjllOTA0Yzh=
lMGJhNTA5YWM1MTI4YTliYzIwMWE1NTFiZWRjY2FiMjg4OGE4ZGRkNWM0NTFiZDljN2VlMTQyNG=
RiZTlhMjVmMGY4YTRlZDk1NzkyMDc5ZDA5MzBiNmNhNjIzZGIzOWY3NmE2ZDJiMGRmMTNjN2I3Y=
TM2OWJmMDBkNzBmNzVlNGZhNmE3ODMyZGFkNmJiYWY4NDc2NjdkMjBkYjJlOTBmMTYyODlhMDRh=
OTA2Yjc0Mjc3NTA2ZGU2MDA3ZDljMmQ3YWM3MGI4MzdlOTQwMzE4MWRlZWIyZTkzYzA1YjQ0MTY=
5Mjk4YzEzZDM2NzRhMWQ4YTQ0ZDM4MWExMTJmOTcwNTVmZGJlMTIzYjIzYzcyMTk5NmQ4YzdkNz=
YzYzU0OTUwMWJiNzliMjc3MGM2ZTM2ZDU2ZDJjZTQzODIzYjA3ODRjNTRlZGUxMzEyMjFjOGI1M=
jFiNWI3MjhhNTVmNWJiYWJhMDRjNjI2ZDdkMjA1ODdiYTFhMDQ2MmYwOGM2YTJlMzlhM2ZiZmVk=
MTZlYzdiZDk0ZGIwM2QzYTY5YzFmYjY4OWViM2ZhZmIwMjJhMGNhYTEwZTY1OWRkMGUwYTI0ZTl=
hMGRjY2NmNWRlMTNmMzUyNGEwMzkwMmI2MWM0MDYyYjJmODQ4YjdmN2FiODhjNDUwZmJiOTQ1Zm=
ZjMGM1ZDQ3ODNkY2FjNmI3MGU5Y2JkOTRkNDVkZjhjNjhl" style=3D"display:inline-blo=
ck;height:24px" target=3D"_blank"> <img alt=3D"Twitter" src=3D"https://cdn.=
honey.io/images/email/welcome/welcome-social-twitter@2x.png" width=3D"24" s=
tyle=3D"border:0!important;outline:none!important"/> </a> </td> </tr> <tr> =
<td height=3D"40" style=3D"font-size:1px;line-height:1px;height:40px" class=
=3D"m_44490807107789003em_h20">=C2=A0</td> </tr> </tbody></table> </td> </t=
r> </tbody></table>   <table cellpadding=3D"0" cellspacing=3D"0" width=3D"1=
00%" style=3D"min-width:100%"> <tbody><tr> <td height=3D"40" style=3D"font-=
size:1px;line-height:1px;height:40px" class=3D"m_44490807107789003em_h20">=
=C2=A0</td> </tr> <tr> <td>   <table cellpadding=3D"0" cellspacing=3D"0" wi=
dth=3D"100%" style=3D"margin:0 auto;max-width:600px"> <tbody><tr> <td width=
=3D"8" style=3D"min-width:8px;width:8px"></td> <td> <table cellpadding=3D"0=
" cellspacing=3D"0" width=3D"100%">  <tbody><tr> <td style=3D"vertical-alig=
n:top"> <div style=3D"color:#757575;font-family:SuisseIntl,Helvetica,Arial,=
sans-serif;font-size:11px;font-weight:500;line-height:16px"><a href=3D"loca=
lhost:1333?u=3DZjYwYmZmNGM4ZTYyNmMwNGMwMzdkOGQ2MDNjN2VmOWQ0MmIzZjNkNjNjNjI1=
YjhmZTY0OWUzZjJhNWJkYzZmOGJkODdkOWNhMzcwNGRjMTMyMWJlMThmNDA0N2ExOGZmMWFkMGI=
wNWFkMzg1ZmIyNGU0N2UxZTEzNjUzMmExMzY0OTUwYmZlMGVkZWQ4N2MzMTIxM2YyNjQ3NjFkYz=
FkNDEyNjBmOTU2M2YxYzM4ZWY2NjY0ZmVmOWVmYzQxYmRlZTAzYzA5MGY4ODRjNGYyODEzM2ZkN=
TNmZWRhYjE4NTUzNzU5OGIzY2JiYzY3ZTI0Nzg4NmMxODk3NmVkYTdiMjQ2ODQ1YWIxMTYyNDk3=
NTBmZDAxMjU4YzUxNzhjNTE1ZTNjNmM0MTcwYzNlYjc1NDE1YzJmMTllYzI1NWMzZmUxMThjMzJ=
lZjZkMTA3YTU3MjZmY2Q1ZDljNzgyYmMxYzkzODIxZjdiNWIzMjFlMTQ3MmZhZTk5N2JlNGY5ZT=
MxY2UwMDhhYWM0Y2RmN2U5NTU2OGE=3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;fo=
nt-weight:500;line-height:16px" target=3D"_blank">View this email online</a=
>.<br/><br/> You are receiving this message based on your Honey account set=
tings.<br/>  <a href=3D"localhost:1333?u=3DYzU1OGU4MjJjYTQxMDJhMGE3MzYwOGUz=
ZDgzZTlmYjE3MjY5ZDc3ODM4ZWRhZmI4NzFmMTJhOGYxZTE5NDhmNWM4MmFlOWNjNzYyNGIxZGI=
5ZTQ3NDJlYzk3NTkzNmQ4ZjZkNWEzMTI0M2RmNWE3Y2ViZTYxYmVhYWM3Y2MwMDAwNDgwMWE2ZT=
Y3MjJhZWVhZTk5YzYyZTlhMzZkNGIyMzIwNmRlYTRmM2VlY2NjZTM1MGQ3MTBjNGNiYzk4ZDFhO=
DFiZGY4YTJlOTkxNDQ4M2VlNDk1ZDNkOGRiM2FmMzYxNDk3NTM1MDdhMWMyODc0YmY4NDQzMTY5=
YWRkOGQyZDllYzg1ZGIxMDI3MzczMDIzYWI1Yjc1Nzk0YmM3NWFkZTE0YzJiYTIwYWJmN2M1Yzc=
0ODBjYTlmZDYxMGJmOGRiZTAwOTU2MjhjMzBmYTYyNTJjZjRmZGYyZGIwNTg1MjYwZjcyMDk5Yj=
Q2YWExNTc3ZGU0NGIxY2Q4Y2I0MTdkZDkwYjJmODU0ZTBjZWI4YTZkMTMzMjM5MzIyOTVmZWEzM=
mRmMzYwMmRlNzMyMDMwNWY5ZGVhMDk0ZGNiYWJjNzUwN2Y4OTkxMGU1MDQwZTAxNWVkNDYwYzUy=
YTFmNWMzYzEyMTIyODg2Zjg1ODkxNWY3NjMzNDczMmVmMjdkZGYyNzQ5NjllZjhhNTVjOGUzYmM=
1NTdlMjIzYTdmYzE3N2UxZjBmNDllMTkxMmM5N2UxODQ3MTFlYmY1M2M1ZGIyNmE4MjdlMjE3N2=
VjNTNmNTg0ZWUxNGM5ZmZlMDM5NDcwNjk1NDMzYmQ2NDk3YjA2MzBhNTM2MGQxYmU5ZGEyMDYyN=
zg5NDQyMDZhOTM0ODM=3D" style=3D"text-decoration:underline;color:#757575;fon=
t-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;font-weight:5=
00" target=3D"_blank">Unsubscribe</a> or adjust your <a href=3D"localhost:1=
333?u=3DMDYyMjQ5ZGUzMzg5NDNiNGI3NWQwYTYyOWVlMmM5Mjg1M2RhYWZlOTY4MzczZGY5Njd=
mM2JjOGY2OTk1N2QwY2RmNWMzMzczNzcxNjJhMTgyYWFhOGRhNDA5MWNmZDgwNmRjODYyMDZkMD=
dmYjg2OWRlNWVhMGU2YWEyZTAzYjFhMmIxMGU3MmYxYjA1YjI1ZTJmN2UxY2U1Y2Q0MWVlOTVmZ=
WYwZjNkNjBhMzI1Y2FlOThmZWYxOGVlYjA2ZGFkOTMwZGFmZmM4MmM0YjFjOGQ1ZTJmYTY1YTVi=
ZTAwM2EzZmQ3OWMyNWU1MTA5MWVjMTNkYjQxZGVjMmMwNTY0NmU1ZGQyMDA5NTc2N2Q5ZTQ4NjM=
0YzljYzE5YjIxMWU4NGEyZThhNzI5Y2JjZTA4YTJiMTFkMDFlNjhmOGQ4NzA1N2ZhNWZmYjI2ZW=
IyNmJmOGIxYjRiNDMxMWI0MWYzMWU1MTU5NGU2MGQxMzJjNzQwZjUxZDkwMjgwZjdiN2QzYTNiN=
mU0ZjllNjE4ZWY0OWY4Mjk3Y2I2M2E5ZWNjZTk2ODEyMTIxN2Y0MmRjNmQyNWIwODBjNGVhMTJi=
ZWQ2YWFkYTZjMTVhOWYzMGE0MWNhMjhhMDNmNDhkM2MxNjMzMTQzZDMwM2UxZmZhNTM1MjU3NTF=
hOWYxMTdiNmI4NDE0OTQzYzRkZWY1ZTI3M2U3NWE4YTc1MThkZTJhMGNmNjVhNzQ0YWVlMDIxND=
dlNGU2MGFkYjI4MmRjMDkwZTZhZTE1YzgyYTJlM2JmOWY4ZjgzYzQxZmQ1MDI3ZDc2MjRhZTFiM=
zI0MWJmMWNkMGRkZDM5Y2ZkMzE4NGFiY2Y5MzdiZDAyMDM0MDAzMTk5NTdiNjI3MDYyNjgwMjcw=
MzQ1NDhmMDAxYjk4Zjk2NzZiODM4NzA4YWNkN2I1NzcxM2U5MGI1Y2VmOGRhMzM4YzY5NWFkOWJ=
lMmZjMjM3MzNmMWUzOTQ2ZTdiMDYyMDJhY2U3NTI2ZTMwZGUwYWJlNmM5MzE4NGIyYWQ4NWM2OW=
Y3NTAwMDUyMjM3Y2Q4MzlkMWNjY2YzZDI2ODY2ZTY2NDI2NDM1MWVmMTE4MWRkYjI4MDE0YWFjZ=
WE1ZTAzNTg5MzJiZjE4NjVhZDY2YWMyYTNhOGI1ZjA2OWE3YTllZTMzNDY2" style=3D"text-=
decoration:underline;color:#757575;font-family:SuisseIntl,Helvetica,Arial,s=
ans-serif;font-size:11px;font-weight:500" target=3D"_blank">email preferenc=
es</a>.<br/><br/> </div> </td> </tr>  <tr> <td style=3D"vertical-align:top"=
> <div style=3D"color:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-s=
erif;font-size:11px;font-weight:500;line-height:16px"> Copyright =C2=A9 202=
3 Honey Science LLC (a PayPal company)<br/> All rights reserved. 963 E. 4th=
 Street, Los Angeles, CA 90013<br/><br/> <span style=3D"font-size:8px;font-=
weight:500"> CID: 4570808_10.04.2023 </span> </div> </td> </tr> <tr height=
=3D"64" style=3D"height:64px"></tr> </tbody></table> </td> <td width=3D"8" =
style=3D"min-width:8px;width:8px"></td> </tr> </tbody></table>   </td> </tr=
> </tbody></table> </td> </tr> </tbody></table></td> </tr> </tbody></table>=
=20
<img border=3D"0" width=3D"1" height=3D"1" alt=3D"" src=3D"http://links1.jo=
inhoney.com/q/E0G5IG3UAwCHCqCfNy7cAg~~/AAQ-SgA~/RgRnACCcPlcDc3BjQgplFJybHWW=
PImxMUhN5dXJpazE3NzZAZ21haWwuY29tWAQAAAAA"/>
</div> </div></div></div></div></div>




--00000000000087e04d060734e8e1--
