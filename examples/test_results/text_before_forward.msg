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
aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DYmM0ZThl=
YTdjN2UzOGU5YjU1MjlkY2UzMzhiOWNjZTc5NDBlNGVlMzViZGE2YjBjZmNhODM4YWQ2Nzg4OTc=
wOWFlMjUzMTMyNzU2NGFkNmJkZTFjNTUxN2Y0Y2U=3D" target=3D"_blank" rel=3D"noope=
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
lhost:1333?u=3DMmE1ZmZlODIxMDJkNWYzYmRlYmM1NWE1NmYwMmYwODY4OGQwYjI4YWNiMjE3=
OWNhNmRhNmE5NTllYjE1MGVhODYxYTg5OTUzMTExNjRjZWI2MWNjZTNhN2M2YmUzZDJlNTE=3D"=
 target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-sty=
le:inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kern=
ing:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-s=
ettings:inherit;margin:0px;padding:0px;vertical-align:baseline">slb.cynet.c=
om</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hi=
dden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DZTljYzI1Y2Y0NDF=
iYTJjMzNlNDYxOTMxYzExZGU1ODA5NTBhNDQyMWZkNDA4NjUyNWM2NzA4Mjk2MDU4YTgyOTM3Zj=
Q5NDcxYjQ0MmYxZTkzOTY3NTQxNjZiOGIwNzhjZTE2YzA4" target=3D"_blank" rel=3D"no=
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
=90<br aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DO=
ThhN2QzNzNiM2IxNWM0OWI0MWZlYmFhNjk1ZmJhYjk4MjllYmIwZDE2ZmM5MjAwY2VkNzE0ODE0=
Zjc4ZGZmOTI3ZTcwOGZmMDljYjRiNjJmZTE2ZDczZjcwNDE5OTBlYWMyMWM3NjZiOWIyOWMzOTQ=
5NTg4NmE0" target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0p=
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
t:1333?u=3DYzBiNDZhYWJkNTk4ZmU2ZWFlZTZkZDY1YTYxZjBiOWFiZWY1MGViYjY1MzlhZDU5=
NzFkZTRjMmExMGEzY2E5ZDllZGYxY2RhMjU1MzQ4ODg4Y2UzZTc1ZDFmNjVmZDg0YTAwYmFlODg=
3ZDlkY2YyM2E0ZWYzNjFjYmM1ZGE3ZTM0MWZkNGE0MjY1NTg2ODQ4NzZkZWIzOTZhYzM4ODcwOW=
VmM2QwMjhhYzRhNzBjYWFiZDk5NGM2NDU2NThmMTk1ZTNiYzc5ZmJlYmMxZmRlZDI0MDk2NDg4Z=
DFiNWE3NzcwYTNkYmFiNzEwNWZmYjQ2NWU5ZmFhMmFhZjlkMDFmYzE3NjU3OGFjNjA4NGI0YjRi=
ODAyMjViN2JmNDRiNzNhZWMwZDExY2U4NzI0OTg0YTA0MWRjNmQyYzk2MGU5Zjc3ZmM2MTJlOWZ=
jMGY1OTg1MTRhZDg3MTQ5ZTgzMjViZGJlMjBhZmNhYjQxMTFjNjAwODBkMmM0MGU4YWQ3MGE2YT=
NlZjNkYWZiZDg4ODRmNDdlOGViMWUyNmY1ZjFlZWY4NTdjOTBkZTJiNDg0YTBmNTVmMWUxNmFhN=
2FmZTg3NWQ4NTFkODhjNGRhNWU2Y2ZmNjJlNTVkNTE4NWVkZjU1ZmQxZTU2MjE1MGEzNDk2YWJm=
NTQ1YjM4ZGVlYTFmZWNlNTViYWJjOTVjNDdlN2U1OWMwZWNlZjNiMWE5NDNhNDRjMmFlYjNlMDR=
hOTQ5OTA3OWU4ZThkNjg5NGI0NTRhYjI5Y2M0OWYxMWU0NTcyYTFlZjE1NDY2ZmYyYWUzNzc3M2=
RiZDAyZmY2OGNiZjU0MmE0ODhiODUzZDA3YmM0M2YwMWJhMWZlOGE1ZWM5OWU1N2M1MmUxMWExM=
DM4ZDRjYjRiMzZhMWEwZWYyZTRlMjc0NGQ5NWIxZjRjMTJiYzY5M2Q5Nzk4NGI2ODMxN2QzYTg0=
ZmNkZWEzZmJjZTAzNGQ2NTc2MTY3YTcyNGNkMGUzNjRlMTQwZDAwZDAxN2IxMzZlMGQ2MWVlY2U=
5NjkzZjAxYjQ4OWIxNWNkZTFlODBiYTNkODcxOGJmOWQ3ZDIwYzRkZjIzZmYzZDMyMTFjNjUyMj=
lkZTk2OWYzYmMy" style=3D"text-decoration:none" target=3D"_blank"><img alt=
=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/email/PayPa=
l-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120px" width=
=3D"120"/></a></td> </tr> </tbody></table></td> <td align=3D"center" valign=
=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;padding=
-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font-size:1=
px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"right" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;c=
olor:#212121;line-height:18px"><a href=3D"localhost:1333?u=3DOWZhOTQ3NDYxMG=
ZmMDRmODEyNTJmZmNiZjliOThhNjQwNzg5ZjMzZWE1NzU4MGMwOGUwNjhlOWZlMWQzZGVlOWNjZ=
jA3YTFmZmIzZWVkMzA5YzMwZDg2ZDU0ZGUxODhmOTY1NzY1YWMzNWY2YWY1YjIzNzdjMzQwYTRj=
NzUyNmE3OWZhZjA4YTU0OWMyMWMwNmJjODY0MWNlMTU1MWI0MzM1NmIyOTUxMDIzNzJhMTc5MTA=
wYTAxN2Q0N2JjYjI5ODYwOGU1OTVmMmUzNDY0NjUzODUxYTE1NTM5NWY3NDZjYTdjNjg0NWIxMz=
liOTUzYzFiYzkyZDAxMzU5YjdmMzNiMThiZDY2MDExYmQzMGIyYWQ0ZWQ5NzZhMjIxMzU2YjRjM=
zEyOTc4ZGM4YTI3NDM0OTYzNjJjZDBmYjIwN2QwMGM0NjMzODVkN2QxNmMzM2JiZDcxZTdjYzI5=
MzRiZTg3YjNlYzU5NTNmZTEwY2FjNzMwZjkwZjU1YzU4NGQ4OTRkMjY3MTFiMDhiY2NkOTNlYTg=
yY2FlYjBiYjlkYWM3MjI5ZmIzMjY3ZWZhODU5OTU4MGFhNmFiN2FjYmEwYmYxODY1ZTc5ZTU5ZD=
FlNDk0ZDNiOTQ4ZTA2N2E4YjZkMDFkNDJmODljMTU4ZWUxZWFkODQ0N2Y4NGVmODY0YjYyNmFmO=
TM2MmZhNDkwNTdhMTdkODgwYWFhNDdjMzZkMTFlZjAzY2FjZjJhZjE1YzJjMWYxNzZjMDY1NGNh=
ZmQxMzY3N2RlZDVkZGE0YWU3ZTM3MzdiOGJjNWU5MWIzMmEwMDZiMWU4Y2M1MWYzYmZjMjk2YTc=
xNTlkOTU0NzM1YzdhN2Q1Y2UzZDNhZjBmZTk4YmY2MDkyNGUxODQ1ZjMxZWE2NzE0MWMyOTQzOG=
Q5NzVhN2ZhMWU4MDFlYTZmYTdhYWZiM2U2YzNhNWMxYzM3OGY0Y2EzMDFmNDFkYzUwOTA3NjgyZ=
DJiZTdlMGY1YWNkMThiNDM3ZDc0YWJlNzM0MDE2Y2QyZWIyZDdkNGQzNGJkMTgxY2M3ZDViYjM4=
ZTA0MmMzOWE0YzMzZTRmODExYmQ5ZTljNTM4OTNlMGIzNTkyOTc0N2FlYjRiZjg1MDQ4NmExYWY=
xNzdjMDdiNGVhOWIxNThkMTIwNmZlZTQ5YmE5" style=3D"text-decoration:none;color:=
#212121;font-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" bord=
er=3D"0" src=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/troph=
y_rewards_circle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"/>=
 PayPal Rewards Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#21212=
1;line-height:18px"><a href=3D"localhost:1333?u=3DZWIyMTY1N2RjNjRjNmQxMzA5M=
WYxOGQyMDJiMGU3OTJiMzMwMzIwYzFlMGM0ZTlkNGE2MGY5NjA0NzE3MmMxNTk1NTA1NjZlMDM2=
NTk0OTJhMWZiNGNiMjdiNTcyMTU5YjljZDdjYTg3YzgxZjJmNWFlNDExZTU3YTdjMzdhMWEzZWZ=
jYmQwMTA0ODgyNDQ5OTlhMzI5OWMyZDA2M2EwODJlOTM2NGJkNGZiOGZiNTJlNTRjMmM2ZThmMj=
I5MzM3N2E2MTFiODAyZTNhMDM0MGI1MDljZDQ3OTY5OWNmZmUyNjU5N2RhNDM2M2RjODIxNDRlN=
mViMDFmOWFjMTNjNzczMGExMDQyZjBkNWIxM2JhYmJlZGRhNmQwODZiZGU1ZmNmODBiYzkyMGRk=
YzcxMDgwMWNiNTk3NWYxNTM0MGZiOWI2MjQwM2VkMTM2YzA4MDdlMjAxYmRmNDZmMTZlYzcxZmU=
3ZDM1NjY2N2EzNzNhNDQzMDFlMzY0MzAxYTU3ZjgxYzkzOTY0ZDhiNWRmZTA1MWFkZDkzMDI1OT=
NkMzNmMWQ1OTIwZTQ3ZTJmN2QxNDUzNWMxNjIzZjZlYjM4NTk4ZjgyODEyOTFiZTRlOWY4NmFhZ=
TI4MjZkYmJmNzY4Y2FkZTEyMTlhNDBmYTM5NmIzMTZjMDk2YWQ3NWM4MjBjZWJmNDMxODU2YWVi=
NTIzYzc4ODAxZGNhOGYxNDJlNmM4ZDQyNmI2ZTUwMGRmYzM5ZTc3OWY4ZDkxODgzMzRjODY3NjI=
0OGExZjMzMzM1N2YyZjI0ZjM1Y2UwYmZjMzQ0MDlhNmQ0ZWI5ZDA1MjFlZmQ3NmFlOTBlMzJlZG=
FjOTdlZGZhNzU5OTAzYWI1M2M4Zjk2YmRjYTE1MWVjYjFlNDU0NmUyMjI2NzA3NTBmZWFlMzk2M=
GVlZTQ5ZDc1ZWZlNmRiYTQyMDZiZTdmZTBiZDVjOGRhYWVhODgzOTMyMmVjN2YyMjY4N2ZlNTRl=
ZmJlMzZiZTNlYWVmNjk4MDUwMThlYTQwNDllYzQ5MDI3NjkwMjZkY2U0YWJjNmFjNTUzNGY4NGU=
yY2MxYWJhYjJmYjdmOWUyNDgyNWEzNmZiOTA5MWM5YWI1ZWU0YjMzN2ZlYWM3ODE3NjQ5ZDk0NT=
c3MTY0ZTMzZGNiMmYwZWQ4YmJm" style=3D"text-decoration:none;color:#212121;fon=
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
=3D"middle"><a href=3D"localhost:1333?u=3DYmM4NTkzNjVhMDUzNWYxMDIzNjJmNDI1Y=
TFmNDg4ZmI2NGMwN2Y0NzNiNzRiMDkxNWNlYmIyNGMzNTA5NzRkNzAxNDYzMGExMTJjMjk4ZDI1=
Mzk3YWY2NjM3NDNmOTRjMWI5NWUwOGRlMmVhYWJmMTIxZmRmZGY0ZDA3N2Q1ZGZiN2E0ZTBjNmM=
wYThkZWE1ODY5ZTUwYWI1ZjliYmE5ZTFiZDBjZTc4ZGQ1YWM0NTE5MzE1ZDhiMTQxMDZmZWI1MD=
kyOGJjN2U5ODM4NmRjNjIxZWJhYzU3NTY5YjgyMGVkMjk4ZDhlMTE1MjFhYTI1N2Y5N2JhZjYxY=
zdkMDg5NjFhNmExZTA5MGVkNTJkMmVlOTk1OTU4YTQxNDcyMThlOTExYWI3YThkNDk1YjIwZTk4=
MTk5N2JhYjA3MDE1YTQ5NmM2MTRiMjU5Mzk3YTBlNTU3NjNiYWE1YTEzNWQ3N2JiNWQ5MjI4YzN=
hYjBmYjFhZjQ1MmQxNTcyZmIxZTkxNzA1NGZkZTgxOTg1YmFhYWFkMzJmYTY1YWNjMGZmMGI2Nm=
VhMmQ2ZDY1YzM2ODdlOTU3YzNkY2I4NTU5MTAzNmJiZjkyNjFhOWIwYzRlZGRlNjhiNmVmOWJhN=
mNhYjgxMjkwNjVkNjI5YjNjNzgzODQwN2I3OWJmZjVjN2U5NDIxMzY5NGE2MDk2MWFiNTQ1YzFl=
MDJkZmJiYTM5NDE1ZmFkYWE0M2RlZjA0YTRjOTFiM2FiNGEzNWNhNzk0MDQ5NmE5YzYxZWZjMTc=
3N2RiZWU5ZWFjNDU4OTkwNWNlZTM1NDNiOTZjZjk2YzMwOTAxOTI1NTgwOWVjZTExMzg3OTQ4Y2=
ZjNDgyZmFjMjRlNjRhMjYyOWQyMjFmY2U2NDhlMjE0YmM1NTBiOWNhZmIxODQ5ODZjNTEwZTFhM=
zQ3N2NkNzU2YzdmYjExNDBhMGE1MTk3Y2M2NWQ2ZGExMmJhNDE5NDU0NjYyNjE4NzZjYmE3MGFj=
NDkzYzE2YjA1MDdlYWZkOGE3NWY2MTJlMmZjYmE0MzdlN2Y2ZTY3YWJmYzExNGEwMDdjODZhNDE=
yNDI4MzVjODZiYWY5ZGJlNTg0YTg0MjZhYjhmZWZkZThiODEzNzU0YmU0NGJiMmJkYzBlZjVhYz=
k0NzRlZDM0N2UzZGYwMDI5OTA0ZjNkZjdlM2IxMTUzOGVkMzViOWZlZGVlOWQ5NmU2ZTg4MjIwM=
GFmNzZkMDU0NTIyYTM3ZDMzYjU3MDM3ZGRhNWZkNjIzMmU0NTU2MGRlMDBmODAzMTg=3D" styl=
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
90807107789003em_full_img"><a href=3D"localhost:1333?u=3DZWQ3MDRhMjk5M2UyYW=
UwYTMwMjVhYjMyNjg5NzE2OWI2YzI4MDgyOTg0OWU2OGU2NTNmMTlkMmJhNGQ2OWIwODU3ZTBhM=
Dc2YTJlMWE1YjAyZTZmZjgyNTZkNzkwODY0OTM0NzRmYWM4NzQ3YTAyNWUyZDRhMTg1ZDk4MDhj=
ODNhMWVhMjExMTYyMGFhNjQxMzk5OTVkZmIzODQ3M2Y2NTY5OWIxNGVkZWViMjE2ZTcyYTcxYWI=
yMTY0NzBiOWU3NmQ5NGU0YmYwNDlkNmFkZTY1ODhjYzk0MTA0NmI3NTU1ZjA0YjBhM2E2ODQ0MG=
UyMTc5MWYxMTdlZjdjODNjOTEwMTVkYjJlYWQxNzJjOTNkOTVhZDZhMzU4ZjMzZjllOGMyZWE5O=
DRjZTdmOTFiNzgxNmFkZGE4ODNkN2Q5ZjNlZDRhOWU4MTFlNWVhZTE2OTljYzk5YTQyZGI2Zjkz=
ZDRjMDhlMzE5Mzc2YjdhNWIxNjI2YjBjYzNjM2UwMmE3NDI0YWE0YmZiYjM0NTI0NDIxZjAxNmR=
mOTViNmRjNDE1ZWYwZGY3NjM5YTAzM2JhZjAwNThjOWZhYjI3ZDEwMGMwOWUxODc1ZmMyNWUzZD=
VkMjc4MmI5Yzk2NWQyN2U4ZmMzNDY1ZjljMTQwMTdmNjA4MDNjMzc4OTFmMzE1NTY2ZGIxNGY2M=
zhjZDI3ZmRhZmNlNjAxNzkwZWFkYmU5NmJjYTYwMGM1NWYwZDk1NzgzNzZlMTkwMDcxMmE3MTAw=
MDEzMWIzMTkyOGYxOWRhM2ZlMTJiYjJmMmZjYzhiODg3OTkxN2U1ODFmZGFiOTkwMmQwMDAxM2Z=
iYmU5MzA4YWFlODU3MTdiZjdmOTNmYzZmNGQ5YmQ4NTc2MzY0ZjcwNDU2OTI1OTNhYzIwNDcxZD=
M5OGFjYWIzODk5YWFlNjhjOGFmNWRjNmI3ZGZlNzY4NDY5MzJkNmU5NTY0ZjE4ZTM3NzI0YjM4Y=
WY0MzU4YWQ5OTEwODUyMDgzMjc1MTFlYmI4ODIyYzQ0ODY5MGM5ZjIyNzg5MWYyZTEyZDQyZmQy=
MTMxNTdkMDdlNGY2OWZhNzllMTNiMWM3OTNlYTZkMzA0ZTZhODdiMjk4YzZiMjM3MGVkMWQ0MjY=
1ZTA3MmM3NzMyNjA4ZjE0ZjRmYWY1MzQ1YjQwYTE2NGE0YzkwMjk1YmExNDgwYWNlYzAwYjA0MD=
g3ZmY2YWFjNTE1YjA5Zjg4NDA4OTI2MWZmYWQ0YTliYTZlODA5ODQ5MjlkNGZjM2E2MGRhZjBlZ=
TYzYzk=3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get=
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
=3D"localhost:1333?u=3DMDczYjZkMjJlMjY0Y2M2MDE2ZDU5YTM4YWY0MjYzOTI2ODZkNzBi=
ZWRkODNkYTM2ODdkOWM5YWQ2NjcxM2Q1YjQyMDYyNjA5ZjUyM2JkNTMzNjhjNzUwYWM4NTgyZDQ=
3YmEzOTlmNzg2ZGRjMGNhNjdhNTU3YzlhOGZhZWQ1MzViYjJmNTdjNGU1OTk2NDU3ZDllZjljZW=
YwNmM3MGYwOTYzZTc5ZWIwZjg4N2ZhNGM1YzQ3ZTkzMmMxNjAyNzg3MWVhZjFmNzlkYjk2ZTVhO=
TQyM2Y2ODE2NmJhODYyOWM2YzEzZDAzOTJhYTNmNmQ0YWZkMmRjZjg3ZDY1NGM3ZDMyYmY0MjJi=
Y2VlMDE5MjgyNTc4YmNmMTBhODljMWRlYjhmZmM5OWNhNjYyYmJjZjA1N2M4OWVjNzNmNmNiZTY=
2NmM5YjY0YmI0ODcxYjE5NGJmYjA4NmVhM2EzMWM0ZmUzZjllMDFiMjA1MzkzNGFhODYzZjU5MG=
ViMDFhMWJlNzdjZTg5ZTNiNTA0MjhlMDIzNzJlN2NmZDJmMWRkZjhhZWVlMWYxNzM1ZThlMTk2Y=
jRiNzgxZWYzMWFjNGMxMzdmMmI0YzRjOWIxYmRkNzU2YmZmN2U3YmVkYThhZDI1Y2M3MTVkZjIz=
MDQxOWQyMzg1MWQ4NjAwMjVjY2RmYWY3OWIzYTA5ZmI0NGQ4MzA5YWEzMTYxNjYwMzZhMzZkYWY=
zYThhMzBkZWU0ZTlkZTg4YzdmYjYxMTEzNWVkYjY2YTE0MTAyYTJmODQ1NDY0YjI5MGNmMzFjMz=
I1MTU2YWM2OGFmOThlZWExYWZiODZlNWVmZGViNDY4MTM5NDU2YzdhYjQ1OTY2M2VjYTU2OTNiN=
WFlNTA0NTQ2MGNjZTlhYzc0MjQ3MWUyODM1MGMzZTE3MTU4YWYzNWQ5ZTA4M2RjZTk4MWU5MmFh=
OWZkN2JmMGRmZGIzNWE4MDU4OGI3MTk2ZTJkNWU5ZjZhNGFiYWEyOTIzYjgzMTdlOTViZTM1ZWI=
3NzI1ZDZlYzI0ZWEyYjU5ZGVjNjMzNjVjYmE3OTg0NTNmNTE5ZmZlM2M5MGY1NDdjZmE1NzA3Mj=
EzY2M0MDVkMjNjM2QxMmIxYjY3MjhiZGJmY2RlMjYyM2U3NTczZWI3OGMxNDA1ZTg1NTY5MGYzY=
jA0ODY1NzBlMTM3YmJiN2M4NzAyMjkzZTQ4OTA5ZTdmMzc4YTEzYWU3NWU0OTVkN2U4NGM4YzFi=
MTg3ZDQ1ZmJmYTAxYmMxZTg4NTFhNzBkMGQ4NWI1Njk1NjY=3D" style=3D"text-decoratio=
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
t Honey for mobile Safari <a href=3D"localhost:1333?u=3DYWFiOWQ3MjgxZDEyMWY=
yZGZjZmRiZmY1ZDdiMDM4MGI0NmU3MzAwN2QyMjZlN2E4OTRiMGEzMTQ2ODY4ZWZiYTRiZDgzNT=
g0Mjg3ODBiNGFiODM1NWVkYjg0ZTEyZmRhNDI1ZGI3NjdjMzM4ZmFjM2QyYTAxMzJhMDI2YTkxN=
DIwYzdlNmYxOWI0YmMxODhiZWI1Yzc0ZjYwOGJiOWNlZGEwMmVlMGUzOWU0OTMzM2JiMGEzYTA5=
OTZjOWFkYWEyN2NhMDZlM2E1ZTRlYWJkZDZlOGVhZTRkNGQ4NmUyYjY2OWQyZDAzMDI2MzdhNWV=
kNThkMWZmNzUxY2JmMjRmYTBhMDUyOWE5MzQ2YWI3NTYzZDFmOTAyNzc3OTBkZmYzNGI3NTlhZW=
QzMmQyYjllNWZkMTZmMmJlZDI3NmNhZTQzMzI4NTUzYzM5MDM5OTVjODZjYTY3MTY0MGZiNzc2N=
TRkNjM5OGM4Y2I4NDZlOTJjMjM5MTVmMzQ2Y2I0NDMyZmIzNzUxNGU0MWJlOTViNDJiMzFkYjMw=
YjdlNGEyMTZhNjFlZTE2M2E3ZTdmN2M3MWQ1NTAwMTQ1ZjQxNzNjM2Y5NTI1OGIzYmVmMTBkN2R=
iMDRmNjM2MTE2YjA4ZjFjZGNiNzA1MTNkZWJhYzI3YzU5MDhmNjkwY2M3ZDliNTI2NGZlNWMxYm=
EwMGFjZjZmN2Q5Nzg3ZmM2NTc3NTMxMjAyZTc3ZjBiNmQ2Y2JmMGI1ODU2MzAxYzg0ZDBkZmQ1N=
zcyYmVmY2U4NWI0MGY2Y2YxMjQ2ZmEwOTA4NzgzNTYwNzBmZDU1ZjQ1NWNmNzU3YWQ2NThjZjA2=
YjM0NmJmOWVlODQ4NTg3NjI4Y2FmMjRiYjQ3ZjlkYTAxY2M1MmQ3YThlYmI4MjMwMTIyOTdmM2M=
1MjMxOGI3ODBhMzE5ZDY5MjM4MDM5NzUzZThjNWFjNzRhOWRkMzUwNzBkNjVlZDhiY2JhMDQxNW=
NlMjczYTUzMTI5NjJiZWJkNmE2YTIwZGIxZjZkODAxMTA1ZTU5ZGE2NDI2NDE3ZjA2ZTBkZGM4N=
WVjODAzYzI4MTg4ZTRjMjJmOWQzMjU0MWVmZGM3MDEzMjU0MWE3NmRmZGQ4MzQxYjg2MjgwNDc0=
NjJmY2E4ZDlkMWZhZTIxZjViZjYzNjUyNjFlZTE4NzIyY2ZkNDQzNjAyZWU3ZmRhYjZmZWRkMzV=
mNmFkY2U3MjZiMzE3N2I0MmJjNmYzYThjZjVhZGVmYjcwODEzZjZmYWUwYWM5YjM2ZmQ3OTQxZj=
IyODk=3D" style=3D"text-decoration:underline;color:#757575;font-family:Suis=
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
align=3D"top"><a href=3D"localhost:1333?u=3DNWQ4NDE0ODgwNzgwYTk0ZDAwNDY1MTh=
iYjZhNmU0MWQzZjgxZmFiYjE2MzUyMWNlOTUzODcxOGNmMzE2OGYxOWQyOWE2MWZkOWMyYzNiYz=
ZiNzA4MzkwOTFhOTAxZWQzNjUwYWQwNTBmYmMyNmU0NjA3MmVlYzg5Y2Q3MzMwNzQ0ZmE0MTcwZ=
jNkMmRlMTNjOGY3YmNkZjdjMjBiYWE2YjQ3YzRlNGI2ZjcwZjhhZTY2YThkNGM4NzA5NmExZDk0=
N2EzYWIyZjQyYzVkNWUxMDFiODQ1ZTc0YjVmYTZlZDU4N2NkMWMxMTg0ZTEzYmRhODViMTUzYmR=
kZTIyN2QzYzYzYTk4YmVmMmYxODhmY2ZiMWJmOTI2NTY5YWUyMDA3NmMzYjQyN2Y0NWUxMTFjYW=
EwM2E4MmUxMjI5YjVjMDc4YzZhMmNjODU3MzE0MzI0ZWFkOTY2ZmU1ZDQyYzgyM2ZhYmM5YjhiZ=
DRhZDgwZTU3YzlhNTM4NWZkZmU1NzFjOGZlNTU3NzRmZGY2YzMxZTVjYjRkZDAxYTNjNDViZTdm=
NDA2Zjc2YzJkYmU1YjdlYzNmOTZiZWQ1ZTA4NDQwMjI0NWYzNWViNjJmZjM2ZGRhM2I1MTQwMjk=
4YzMyMmNjZjU2OTlhZjBiNTRmMzU3MjU3NjJhYmU0NTA5Y2FiODAzOWZkMjhjYWE0OTllNmUyOD=
k0YmJiMDEwOTI3YWQ5YTYxYzE2ZDQzNzhmNDk2MjliODk2N2E3ZWU0NWYyOTU4OGYxNGEwMjNjM=
zNkYmE1ZWQ5OTViMjAwY2VkZDQ5ZTY1OTI4OWFjYjcyMjVlYzJhY2RlZmViZTE2NDlmOWViMWJm=
MjVlMDJlNDk2MzkzYWE3ZjM3MWE5ZDg3MDMxMjY5NTcxYjQxMjhmMWM3MGM2M2ZmOTk2NDAyOTY=
0NWUzYWJmMWJiM2EwMzBhODk2ZDRkN2Q2OGE4YjQ5ODczMDUxM2FjNGQ1YzEyMTRiMzlhY2IzZT=
I5YmI4ZWRiNjUxNmYxZmM2ZmU0MTc1NDliNDgxNjUzNDExZTdlOThiYzA2NTliY2M5ZmI3MjZkZ=
WZhM2Y5ZGU3Njg1NWUxZjc2MWZlZTIwYzBkNjA2YTc3ZGZj" style=3D"text-decoration:n=
one;color:#616161;display:block" target=3D"_blank">Explore</a></td> </tr> <=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D"hei=
ght:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table alig=
n=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444=
90807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><tr> =
<td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"height=
:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl=
,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center"=
 valign=3D"top"><a href=3D"localhost:1333?u=3DMTE2YjM5N2VhYzU3ZWRiYTY2NGYxY=
mYzMjg0NjIzZTQzNjM0N2IwZDQxMjdkMzUyOGMxOTFhNGY3NDdlZmQzNWI1NTJjZDQ1ZjA0Y2Zi=
NzZmMjc4MzA3NWE5MTljMGM4NzA0ZGUyNjU1NTE4ZWNkOThhNzgwNjc4OWQ4OTdmYWU5NmZiNzB=
jZTM4NDhhYzZmYmUxOWEyZDI0MjkxNTk1NDkzMGM2ZGQ3NmFjNTI0ZmJkM2I3MmIwZmEzNjAwOD=
YwNzNlYmM3NmY4YTM3MWU5MjM2NWEzNzBlMzQ3M2VmNTJkN2VlNDQzZTNhMjAwNDRlYzU0NDEwO=
WRmMTM1NzI5MzdmMDdmN2VmOTJmZDJkNDU4NjQ5ZDUwNmU1ZjY2NWZlOTM3M2Q0NTA0ODI3NDYx=
NjliNDBkMmI2YmQ2YmM2MThkZWFlZDA5MDE1NmM2OTU5NDM2N2VlMDA4MjhjZTdmNzEyZTJlYmJ=
lZTMwM2Q3N2MyNzQ0MzJiZDE4ZjQwMDZkMDk1Njc4OTU5M2Q5OWY1Yzk5MjBjNDE4ZGY0Yzk0ND=
RhYzk3ZWY1MGQ4MGNmOTBmNzI4ODNiMTFkYzIwNTcwMWE5M2NmYWIyMjMxMDVhOWZlZjk3N2VjZ=
jU4MTI2ZjQyY2VhODFiOTdiNmVmOGVlOGNmODI5MmYwYzc5YWU0MGYxNzNiZTZjMmYyMzE1MzMw=
MWIzMmVjMjE2MzNmNzk1OWNmMzUyZjkyMDhmODRhYzkyMzVmNTRhZWIzMDdjZTVjMzBjYWM2YmU=
yMzRhOGU5MTRlNjYwYWQ4MjQ3ZTMxYTgxZThiZGY2MmZlMGM2NzQzOTlhZjA4OWRmNDcyYjY2Y2=
U2NzczNzgwY2Q2Yzg4M2U3NDhmYzg1YTI1Y2I4ZGFkYTNkYmFjZjYzOTkxNThjMjNhZWY5MWIzM=
zFkMmU0YzMyYjczY2I0NWQ4NmMwMzhiN2M1ZWUxMThmYjI4NDliMzMwMDg2MzM4MDZhYjZlOWQ5=
OTEyZDA5N2UyOWQ0NjRhMDZjYmRjNTk2NjBmOTk3MDJmYjQwNDNhYWRiYzNmYzMzOTJhNmRjYmM=
0MjAxYWIwZGQzYTY0NmFmODQwYmQyOWQzOTUxMzRjODU5Njgx" style=3D"text-decoration=
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
=3DODI5MTA3YjU4MmE5OGE2YmEyYzg2MjkwMWNiYjNmMjJkOTMxMjAwZTBmYzM4MTgzMDgxYmEw=
M2MyZDI4ZGYyNTMxZjc4NDdlOWFjMzk5YjMzMzA3NWFmZDQyZTg5NjZjMTA0NDMzMmI5ZDc1ZGY=
wMTMxYjM5ZjcxMTBhYTBhOTdlOGQzZTViNTg0YWIyNzg2YmI0YWI4NjRhMGVlNDUyMWFjN2U2NT=
NhZDQ2NjAzZjRmODYyMjAxNjQ1MGRkYzE4MWM4NmU1Njk2NmIxNDYwYzA0ZDQ2YzRjMzM2ZDYzN=
jBjNDQzMTYwNWU1ZGNjYTY2ZTMwMWM4ZDQxZTg5ZTQwMzJlZWZhYTM0MjNhY2E0NDY0MzJiYjQ2=
YmE3NTM5ZDU0Nzg0NjJkMDRiZjMzNWY5M2ZiMmE4MWZkY2NjYzJjMTE0MjU3MWJhNzQxNmIwNmQ=
xZTMxZGYzYzVhNWJjOTdhMTUzYzgzODg2YjFhMzZlZGUwZmM3ZjNiZGU3MTYzMDc4YTAyMjkyOW=
MzZjU2Y2M0YTc0MjJmN2YzMmRkMWM1ZTY1ZmM2MmFiNTQ5MjQ4ZDNhOWIyZjY1ZjgxOTYxYjBhZ=
GM4OGI4NTUwMmU3NGQyMWEzMGQ0ZTVmZWNjMDU3ZWUzMzc3MzAzMDcwN2NlMzI1YTVhOTVhNzk1=
MWVjM2YwMzYzMjMwOTZkZTdiNjIxNmE3YTQ3OWY2ZWVhZTg2OTc1ZDdjZDk0ZTY4MjhjZjI3NDQ=
2NDUyZDZhN2M3NTIyMmQzODI1MTRlY2VlZTc5ODNhNDc3N2U4Mzk3YzIzODJkYzhiZDEwNDBmOW=
I3ZDlhYTAzMjc4NDU3ODk2ZTdkOWUzNjJmNDI0ZjBhMTA3ODE3YmVjMmU5ZTU3MmY4NWM4NmEyM=
jY0YjE5M2Y2N2JiOTBmOTBjYTkyNmU0OGEzMjMyZGJkYWQ0ZDgyODUwYzhmMTkzYjcwMmY5ZTkz=
MDkzMzg1ZTU3OWI3YjRhODc5NDFmZjU0OWM5OTFiZTRhYmMwOWFlZGM3YmQxYjk5MGFmODQ4ZGN=
iOTI1YWU3YzhkYzE3YTBmYTg5ZDk2Y2I1ZTVmMjc3ZWI4NWM5YjI0OTgzYjZlMGQ3ZGM3ODJlZj=
ljNGQwNTVhNGEzNmY2ZjA4ODMzMDdhNTVhOWFiYTc4MGQwNDk0ZTUz" style=3D"text-decor=
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
YzAxNTgzNmZjZmJlMzZhZWFhZTIyM2NjZWMyZjE3NmRiYmU1Yjk1ZjcwNDNjNDBkYTlmM2RlYTY=
4ODcwNzU0ZjYyYzkzOTZiZGQ4YmYzMTE2ZWYzNzY5YTE3ZTg4NDViY2QzYzZlOWQwZTAwYjQ0Yz=
BjOWNmNDFiNWQzNzhkYzNlNDAwY2I5ZDg1NWUxNDZlYTZjZDcyYTRkZjNmMDVlMzQxZGJhZGRmN=
mEzZTJmYTU0NmIyMzgxZjEwYjhhNzE4ZDUwY2FhNTdkZmYyYTM1YTY5NjJlY2IyZmUwZTNjZjRl=
M2I2NDQ5ZGQ5NWUwYzUzNDhhNDc1NDYyYzgwMzI4NTBiODMzYzcyYzQ4YWI1Zjk0MDUxZjA4NzU=
2ZTVkYzAxMGZmZjBiNDBmYmUxNDQzY2Q4YjI4NGY5MTFhNWUzMjFiZjlmMWU2MDU2MDNlZmNjOG=
MxZTE5MmYzNTQ2MDczZWUwYjY5NzlhY2IyNjAxZmU4NTBmZjAxNmZlNWVhZGQ5Y2JmODk4OWFiM=
mYwZGNmMzBiYTE3YjU5NTg0MTlmN2U4NGQ2NzEwODNmZGJmZTg4NjI0YTUwZjhmNzM1MjIzNTNm=
NDY3ZjllYmExOTZlODAyZTBhNDE0MmI1OWQ2NjE4NjBjZDA2OWU2YzBkNGQxZWQ4Y2EzZjYyYmU=
4MmQ4YzFiMWUyNTRjNzAxMGUwNjczY2EzZDgxYjYyNjFlM2YyYjI4NDlkOTBhMmZjMDQyYjE0Mm=
JkZDU5OTQyNmFjZWFmZjFkOGFiMDgzNThiZGQ0ZDU1OTk2MWFiZDc5YjE2ODEzNTYyMDA1Y2U5M=
zI4OTRmZTg2NmJkMWM2YjZiY2U1MDZjYWI3MjNlMzMyM2M5YTkzNmZiYmI0ODQ1ODAzYTk3YTBk=
YTk1N2ZmYWE5NWFkNWZmNzI1MWE5Mzc5MmQzODA1YjMxNWFmZDViMmZlNzY2ZTBlYjkyMmMwYmM=
5ZWE2NWM2YTE5YjFmOWMxZDJhYTE3NDY4NDM3NWE5OTMyMjI2MmRhNWRhNmI4OTg3ZjVmOWQ2M2=
U0NDY2MjE2MmM2NDZkMGI3MDkyOGY1MTBhOTUxMzAxMzQwMjA2ZWFkOWVmMzVkYTE5MDRiMGE0Y=
zY2" style=3D"display:inline-block;margin-right:45px;height:24px" target=3D=
"_blank"> <img alt=3D"Facebook" src=3D"https://cdn.honey.io/images/email/we=
lcome/welcome-social-fb@2x.png" width=3D"24" style=3D"border:0!important;ou=
tline:none!important"/> </a> <a href=3D"localhost:1333?u=3DM2ExYWJhNDk2MDJl=
Mjk2ZTllMjNhZmVlOTViODI1YjhkZWQyYmM5OTg4NGM0N2M3MDBiOTNiYjgzNTM1MmEyM2ZhMjM=
zOThmZWY5OTkxZTQ4MjBlYzQ4NTgwNGFlOGQ2YjJmNWIxODgzZGEzNTY5ZTdhM2ExZjA2ZWMzN2=
JmZjhiYTM3NWJkOWI1ODE5Mzk2YWNmMDBlZjJmZjI4ZTZjNjk4M2IxZTQxNWMyODQ2ZDJiZGM1M=
WM5MWFjMTkwNDk2Nzg0ZWYzYzJhMTdmM2E0MDI2ZGFhNWY5ZmRkNjk0N2FlMDYxYjgxNzQwZTll=
M2YwOGM0OTU5ODgyNTZmNTNkN2E5ZGU0NWVkNWQ2NzQyODYyNWI3OGQ2NjlhNGQ1N2I2OTMwZDU=
1ODJiZjAwNGU1NjIwNDFlOGZlYzJiNmNhMmEwMGYyNWRkNDVmNDRlYzU4NDJkMDNlOThhOWY1Yz=
BhOTdmMjU0YjlhM2U4YmFlYWFiZmFmZGM1OGJhOGFjOTE5ZWZhZjM1NjI5ZmJiY2MzMDE3YzMxM=
TE0OWY3YzRlZWVkMzJkM2IxNjhkODRhYjBiYWJmZTgwYmUyNTA5NTY5MTAyNmQ3OTU1ODVlZWI4=
NzY0NjhlODU0ZGIxZmUxN2U3YzVhZjM2NDZjNzA0NGU0ZDllMmI1OGQ1MzZhY2Y4MTIxNzg4M2I=
yYTM3OGQyMzA5ZTNlYzdhZmQ2YWEyMzdhMWQ5NDI5Y2JjN2YyY2VhYzEwODkwNzY3NTExYzBiOD=
IwOTdkYmRlZWI4NTY3YTFjMTgwZjAwNGUzMjRlMjQ4ZTIxOGNlZWFmYjM0Zjk1NmU2NjIxYTA4Y=
mQ1MWMwNTA2N2U5MjAxYjgyOTQxN2JmZGE2M2E1YTM1OTdkMjUzZGM4ZjhjMjdiYThkNjliNWUy=
ODhmMWE0NTcwY2QwNjUxZDAzZTY5ODk4NjI3NGVkZDY4MjhiOTA0MzdiMjliYmFhMjAzZTRhOTE=
1NmE5MTBiMjY4ZjkxZWQ3OWFhMzU2NDk4NTA1NDU1MWI4ZGNmZTk4OTZiNTIxYmU5NGMyZmRiZj=
c5ZmExN2RlYWM4N2UwY2E5ZDc5NmQ5ZjgzMTZkNmUzMDViN2MwMjIzNjUzMjZi" style=3D"di=
splay:inline-block;margin-right:45px;height:24px" target=3D"_blank"> <img a=
lt=3D"Instagram" src=3D"https://cdn.honey.io/images/email/welcome/welcome-s=
ocial-instagram@2x.png" width=3D"24" style=3D"border:0!important;outline:no=
ne!important"/> </a> <a href=3D"localhost:1333?u=3DY2M1MTYyZTU3OGUzMDk0Zjk3=
NjE5YTk1OWI0YjUyYWM2YmE3YjM2ZDQxOGU2ZGQ4YzY4ZTM1MmEwMTU0MjA1ZGFhYTE2YmVlN2F=
lNTZiYzZhN2Q1NWYxOGFiOTZiOGU3ZWNjMzU5Mjk5YmRjMjYwNGUwZDkwZjU2YjI4ODNhMTAyND=
QwOWFlN2E4ZjIzNGNiZGJkYTExZTViY2I4YzBhMzFkMThiOTM4YzI1YzM1ZWYyNjI0ZjQ4MTYxN=
jRmMmJkNzVhMGE5MzgwNjhkNjkxOGExMDBjN2ZkN2Q2MzIyZDA3ZDMzY2JmM2M1MmU2OTI4NWJj=
MmUzZTExZDNiYTVkNDA3N2NkMjYxMDU0OGI0NmQ3MGRkZmNkZWYzMDBlMjNhNzUyYWY5MDYyMTg=
0MDE2M2ExMTI1NDhjMjc1OTEwYjk5MzU5YzMxYWFiYzUyMTMyMzMzODUzN2ViMDBkMGQwZjg1Nj=
Y3NTA2M2E5YjZlYWJhZjNkNDg3NjczYzU2ODFlZGE2MTQ3NzY0MDk1MWNkMTdkZThmZWRiZjQxN=
zMwMWM0MDY2MWE1NTNkNTU4YzE4MmY2YzM5YjJhZTI4ZmY0MjA2YjJmN2QxNTZkZGUxM2E0OTk5=
Njk3ZThjMTA1ZTQ5MGY3MDA4ZmYzN2FkNzdiNmE2ZjgyMmUxMmQ0ZGU3YzBkNDBjMTRlN2M0MmQ=
5MTE3ZjdiOWY5NmVhZDYyY2Q1MjU0ZDYxOGFmMTc5YjFhNmUxMWJhMTRjNTVhNWE1OGQ4MTQxZm=
FhMzRjZDM1MTA3NWI5N2RlNWRkYzNiNjVmYjFjZjY0Y2YxYTYyNjZjYjczZmFkODE0ZDg1M2NmY=
jlkZDU4MDliNGM4MDNkMzJkZDY2ZDNmMzAyMGFjNDFlZmI3OTdkNTQ3YWVmMjY4MWNiMzYwMTlm=
NjY0YTljMDNkN2Y5OGY0M2QxNDAwM2JiZTczNTk0YjI1YTBmYzhhMzJhYzczZjg0YWIzNDkwZjc=
4NTU2MGJkOTJlNWQ3ZDU2NGNlODhlN2RkOTAwZjQ1ODUxZjU4ZTc1NGU5MDk5NjQyNzU5YWI4Mj=
JmZTUzY2I2OTJiMjM0Y2UyZDA5ODUwYWU2NTliYjM4MzFkNjE2YmQz" style=3D"display:in=
line-block;margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pi=
nterest" src=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pi=
nterest@2x.png" width=3D"24" style=3D"border:0!important;outline:none!impor=
tant"/> </a> <a href=3D"localhost:1333?u=3DNjYxNmRmNjI3NGUzOGQ1MjRlN2I5YzNj=
YzhhYmIyMDc1YTE5YzcwY2U2ZWJhODMyMjA3NDNkM2E3OThhMTFkMjJjZTFmOGU5OGM4YjQ1YjI=
3MjBiMWUzNzhiOWU3ZGVjYTk0ODQzMmNhZTgxZmUzOTI1NDkwZmUwMWQ0MzI2N2JhYjk0MTg5OD=
FmYmM4ZDUxODkyNTcyMWQ4MzMxNGQ2OWQwZTA4OWQzMGQ1ZGFhZjdlOTY5NjUxYTdmZGQ4ZDY4Y=
ThiNDIwZjkxODkxYTUyMTRkNDE3Y2QxNzk1YjM5YzFjN2ZlOTMxYWYyNGY5ZTM1NzMxMmQ1MmVl=
YjBkODA1YjNlM2Y0ODNlZmI3NTA2ZGQ1ZWY3MzY1NzE5Nzc0NDU2MDBlN2ZjNGVhODZhZDdmMjE=
wZWE3ZDhlN2FmMjc1MzVjYWQwMWRlNzc4M2NiMTc3YjIxN2Y1ZDAxOGM5NWI4OWZmMmQzOTg5NT=
IyZDg4YzA0M2ZmZGY2N2M4NmNjZTZkMTAzYmMxMWYwMTlhYzgxOGJiNjFmZDAyNjhlYTVhYzkyM=
WYzMzNiOGUzMTdlYWJlMTgyMjVmNGYyZDIwNGI5NjY1Yzc3MWFhMmQ3Y2I4YTJkODYzOTFlZjU4=
MGU3NDFlYTA5YzMyMDM2M2U5ZDA1MTA5NzhkMmM2MWVkYjVmMjJhNGFlMmMyMTMzY2UzNjA1N2Q=
0OWM3MzhhODcyZDQ3ZGY2YTc1MmY0NjA3MGRiYzdlYjgxM2QzNzkzZjllNTI1N2FjNzk1MmU4Mj=
BjMjBjM2Y4YzI1ZGE5YWFhYzExYzk5YzFiNjc5MzhlMjNlNmQyZGIxODk4NGRjYTg2NGIyYjU5Z=
GZkMTVmNGIzNDUyMTU0NDE0NGJlNDcwNTFlNGM0N2Y4NDU3ZWUwYzk2NDRkMzVlYjE1ZTg5MWE3=
OTg0OWMyMjZkZTA1NTI0YWIzNmE1Y2IyZTk4NzRkMWIzZTUzNDFkOTJjOTViMzFmOTgyMzM4NzV=
lMDhlZjEzNjkzMTFhNzYyNTc4ODc4ODM1NTg3OTdjNmZiNzBlZmVkMzhiOGRlZWI4ZjgzNDZiND=
VlMWU0NTk1ZTIyYzY4NDdhYWM4NDgyOWJjMGVkZWM5ZDdl" style=3D"display:inline-blo=
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
lhost:1333?u=3DN2Y5NWJlMDc4YTlmZmQyNjVjNGRmYzQ3ZDM3YjYzNWQ2MmM3OGU2N2ExNWQw=
NmQ0N2VlOThjN2ZiMmIwNmYzY2RkZjdjYzM4MmYyOGQ4NmE2NTVjMDNmYzFkMTc5NzYwMjNhYWN=
jZjY2Mzk1ZTAxZWQyYTJkMTBmNDM1YmNhNDc1NDQzY2M2NjI2MGFhZmY3ODE0ZDgxYjE4ODRiOW=
RiNmRmMDA5YTkwYTdlNDY4NTY2MGEzZTBkOGJhYjFjNWJjMGIxY2FhYWRmZmFiYjEyZjFjNWY2M=
jAwNjM4NWYyMmUwYWYzNmFhZmQ2ZTg1MDljZTBkZjY4ODhkMjc3YjQ5ZWVjYTkyZGQyOGM0OTAx=
ZTIzYWYxOGY0NTNlMzMwYTc4NGNkZjQ0OTFlZTIwOGUwYmI4Nzg5OTEzMjE0ZTAwMTc2NGE1ZjM=
1ZGJjN2RmMjNjNzRmMjI2YjhiYTVlNTdlOTU2NjZjYjFiNGFhOWIyN2MzNWYwZmRhY2Q1NzU3ZD=
I1Y2U5ODI4MWI4NjZkYTZmOTk4YzQ=3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;fo=
nt-weight:500;line-height:16px" target=3D"_blank">View this email online</a=
>.<br/><br/> You are receiving this message based on your Honey account set=
tings.<br/>  <a href=3D"localhost:1333?u=3DYjJkMzczYjNiNmYxY2ZlMTZhMWNmYTNk=
MDMxNThjNjlkNzU1MjJiZjhkMjc4ZDM1YzIyN2RkODQ2M2NhYWY2MTI2MzY4YTg3ZTgwNjRkNzZ=
jYzA5ODgzNzNjMTEwYWYyOTE5ZmY2ZWE1YWRjMGIwNTNhZDdjNDlmNjRiYzk1YWY2ZGY4ZWI1ZD=
c4OTI3ZmM3NzE2NjMxMmYzMzUyZWQ3ZmJmMjEyMTQxZTViODIzMDJhY2QzYTNhOWYyY2NlOTM4Z=
DU1ODFjNmJjMDg1Y2M4YjUwYzZkOWQ2NWYzOWZlN2RiZmI4ZTNjNzExZjRmMDYxMTQ3ODFlODJl=
MzZlY2IzM2I1ZjM5OTI1ZTUxODdkNjA5Y2RjNTI3NmQ5Yjc0YTY1ZTQ3ZDk1YzQzYjlmYzE0MDZ=
hMjg4YmVjYTFhNGU4Njk5Mjg1NTU4N2FlYWIzNzE5NmEwMzI2NjY5NTEwNzQxZDllZWQ1ZTdhNW=
E2ODMzY2MxZWYxYjM5MDc4NmIxMzNmYWJkZWZjMTFkYjRjZmYzNzFlZmQxODRiOTFmZjY3NzNiN=
2FlMDAzNDg4ZDIxM2U3OTc2ODczNGIzMGYxZWQ2YTI5ZWNkYzI4YjdhNjg5YjY4ODY2NWY3OTli=
NGE1ZGRkOWJiNmJkODIxZjhjYzY1ZmMzYjk4YThhNGZhNjIxMjdlZTNhYjhhMzFlOTAzYWFlYTJ=
iZjM5OTA1YjJmMzgyMWNkYWZmNDllNWU1ZWQyZTA0ZmQzNjE4NWNhMTIxZGFhZmNjMTEyYzBlOG=
Y5MjFlZmRlMzhkNzA2YzFhNWEwNzdjNmI0NTdjNjViOTY0NTc4ZjU0Zjk0NWY5ZDg4OWUyZWRkM=
WE5OTk0YmNjMDI4MmY=3D" style=3D"text-decoration:underline;color:#757575;fon=
t-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;font-weight:5=
00" target=3D"_blank">Unsubscribe</a> or adjust your <a href=3D"localhost:1=
333?u=3DZjJiZTY5YTNjYzE3NTNiZjI5Zjc0ZjQ4OGU5YTUzZmUyOWY2M2QzOWZiMmFkNjk3MDU=
2ZWUyMjZiNTRhZGMwZGRhNWNhZDdlOWVlMzM3N2M2NGE2NGM3YWM4MDkwZTZjY2Q3ZmNlZWYyNz=
QzMGVmYzhmNmM0OGJiYjc1NTliNGY4ZjEzMGYyN2Y3NzJmZGUzZjgwYTFkZjAwN2M5YWM3OTc0M=
ThkMDgyMWY3YTNkMGExOWIxZGRiYjEzNjlhZDkxYTlhNDg0ZGM0ZTZlMzFmY2U2M2ViYzg3MDY1=
MGQ4NGZhZTdkZDBjNmFhYTJmZjY4YjI1NTAyMzRlM2Q1ZTU1YTYxOWVjOWQ1OTBlY2NjOGJjMzI=
2MjY3NzNmYmQ1NGMyOTAyOGY4ZDM2ODFjZDZkN2IwYTZlYzlkOGFiNjE3MTc5ZGEzYTFhNDI2Zj=
Y4NTRhYWYzM2YzMzcxN2Y4NmQxZjc5YzZlZmIzYzZjMmQyYTNhMGI2NjFjNDAxMmEzNmViN2RjY=
2ZhZDI4OGJjYTg4NTkxMmI2NzNmYzQzNDM2NDMyN2MyZDJkNjRkN2RhZTg4YmM0OTdhYjBjYTZh=
OWNiN2EyYzcwZWM4NTc1NDY5NTU0NDcyNmY3NTJhZjM0ZTllNzE0MDYxNGVlNDY1NmY5MWE3YmZ=
hNTcxYTc3MjA5YzkyZjc4MDIyNjZlZGY3YTMzMGVlNzIyMmViZjgyMjJiYTg3YWE2YWYzMmMzZD=
ZmNTU1OTczNDE3NjExODNlYmQ3YzVkODY4N2Q5ZDlhYzg3OTdjY2Y4OTc5MTYxMmM1NmRmZGYwM=
zJjODIxNjAxMWUwMDQ0ZTllMjg3Nzc0N2JmNzE2NjFmMGM0YTI4ZWEyM2Y3ZGUxOWU0ZTg0YWUw=
OWMwNzRkZmNjZTVmMTJmYmNlZTcxZTU3ZTBjNTgxZDZjNjk3OGY0MjgyZjAyY2U1YmMyZDFkODY=
4ODViMjIzZmU2MjljYzM4MDkzODlkMzkwZDE5NmQ2ZDEyMDRjNGIyYmYzMmRiMmY0YmVkNmVjOD=
UzY2ViZDEyNDA5ZTcyNzY4ZWEyYmM3NTVjMGQ1NGJjZjRjYTAxZDQ5MjM2MmEzZTZjZWMxMTJhN=
zRmMzBmNDViNWQ5N2JkZDBkYWQ1NjU1YjZlYjQ0YzQ1NjhmNTc4YzIzM2Y1" style=3D"text-=
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
