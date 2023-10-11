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
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK8q4aAZ6WhOFBC55Ng4LpELLeKmOdDIhYFeZgIUUUV4oJPS4=
lMlxA98DL4Z1h6_hHQ03PCqe4CwARWQOrCjJf-e4ghTvecosjHRquIbjCA33Ab60X0c9sMrbwx0=
E-iJr9atCuuCpRObftRaauIZOk7M2LJtsofL6eymdk9AaQxPaSnLvDETP0ZLJ9cvULGx6-8KCRB=
IEpi2SSEqOcGLNQSIuNPaOvM3Z6vD9pzEb7EflQ%3D%3D">

[image: PayPal Rewards] PayPal Rewards Balance
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK_xoU71Qfezzajlz0IVVxvqJWKAp7O0EJ_xLAvlJaPoXlVGY=
KUNqheOZkbtusiRaOonqx5Oy56wOmDritUQ-aRfhlE8bfNtJvJeaADS6nJRhplyTNKfhbSb_7hJ=
yR1FsWDZ-JqgnvVy0Un9Jkik0hLFGj-YTuTO-7NGsiB-YsXIQiqYZuhaw04SJOfrHhYHzwGfMBX=
OLbENFNbQDA2YZAgrOiHEM3DqTn_hetiMUDeDhPkVTTvhBPkjV-6z_l3bUh4%3D">
366 points
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK_xoU71Qfezzajlz0IVVxvqJWKAp7O0EJ_xLAvlJaPoXlVGY=
KUNqheOZkbtusiRaOonqx5Oy56wOmDritUQ-aRfhlE8bfNtJvJeaADS6nJRhn-Po1W1wT-MU2OH=
ZUJThEjI09U43PHfMxHvD_lKDYvfMiwcHohKXkRVNeZaxyjNan4oICrNvdliQJ36KgWNoWuN1VS=
I5H7ptRd7srwnUDTTYRyJl7WmUDteBUsBWw50UWlHfFtWvQ7l_SnRztAX9pk%3D">


You asked for it: PayPal Honey goes mobile.

Honey delivers again. Add Honey to your iPhone and save on the go while
you=E2=80=99re shopping.

Get Honey on mobileLearn More
<https: links.joinhoney.com=3D"" a=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70AZyU5-H0rkL1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0b=
mLdV79S_74aca8jCsxohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9=
McVcnKKh32wBP3nc545ZkqSSOMJreTdjV_Azz4391qeOZb5z9GC6QromIgry30WR5BroD4OB32K=
RGhND2D_1hemH8jJ4u5GSZ-dV-E-RAAraZl_oSFkp3FYXttIuP2Dx5aR3I0TzSskj4KgYUH0mOn=
e21r6ffxOtMfqur3Rh5WvH3Wx98w%3D%3D">

[image: Get Honey]
<https: links.joinhoney.com=3D"" a=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70AZyU5-H0rkL1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0b=
mLdV79S_74aca8jCsxohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9=
McVcnKKh32wBP3nc545ZkqSSOMJrolBi0p-vHjo44n3Pbo5YCFeR6cEJOqvjo3YYpjhD9WeJVIk=
TSw_R2XFDeUpEmuMywWVbrrxMNwmYovastYCDY-gDY66kH2x4mA5qWA85fwwIeIWMM37nMTv0Q2=
_ZEn_WR3Z3aHEPcRwlgiur0BCnxg%3D%3D">

[image: App Store]
<https: links.joinhoney.com=3D"" a=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70AZyU5-H0rkL1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0b=
mLdV79S_74aca8jCsxohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9=
McVcnKKh32wBP3nc545ZkqSSOMJrRnKZD3ge8UhUMuOcXpUlg8i3C-k0vH_RsQwHuDwbvx1XX7g=
0MuE0ZDek0jr6kWyUenEGFwH-t3-g4cMgozYuGUNqmSFnuk57kCWtuJjCb64c8vdQmEiAau6Y33=
YO18XKLboDerjtmo5Eqe3lrPcfDQ%3D%3D">

The Apple logo is a registered trademark of Apple Inc.

Learn more about Honey for mobile Safari here
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70HrF4IxD7HvYGdin44cRPngqBnm0CK24I9EtGUYKzAuP91vrWRTTCcXPyj_DVy0y4oNJv=
UUPfbd-sTHsZge6YaXzlNEI0Z6O-PfNcSt0MvdlekGkM_4oPug2xKmEVddKliuzRNX8H7hpXsN5=
dpfH0FqFLy3lbWOabMtW1kUoibwFKwo-T_JoNVKU4ta2VWEItXz5WphDJw1aJbGBi3_-LO1aDmE=
jFgOqYpe4oreXLOAuTyv2OVdXBlOe83raIiEAcpmQUVjyL2nUxWk7x8mqhqKkuu5AHKfXxBXkbr=
dKaiuCohRh-awswcC3FfO09j0iOQ%3D%3D">.




Explore
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK9DamdwWRpR2gSmHh0zA99ijpIcFEfG8c4Q6p0JoHy1HpexG=
pGG6lRcC1qMjlgfxKrB3thFjB4w-cPg4WNqxMjSMF0L39NnNQ2L3psxQ5Dy5W479ZIgoUlHUKvL=
7TwJnURtlOT9nlUSNXK1S9HVFxFd9RzCKMh-AX9pp7akAwq6qfMGSIqtSzZoNvoHzPAszvlLGrK=
_HkdxptjSKX3MDId8u45qiGIx4re2qRfrOwG6ow%3D%3D">
Droplist
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK8Udk5OI6QXB2uxgYKgB08AYCjG_hQxE5Fdes8WLh2JcH2Bj=
L30Ui3Ruv7JCAINcDw5rOW5FvFw7kR81Hu9el1yuHInI1_88p-w3cT9j0Ohk16TtT7KJjl73BuG=
pStpImKZmaG6Iwm-EJLDmR6izTG0Bk91O7TOFOkWel750rfFc5KVrITyUlH-hRrWV4Z9wiTQq3f=
YtH00bY9SvjqK6zWxJ1EG9q9zn6_kYl6K-aGqVA%3D%3D">
Rewards
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK-gEAIy5Ed17a_e_7MDOJFaL7VeLvoBwir6lAUU0aeryhWEn=
wM_Tu0fpeYo-nE-WC9UDnYynqqvg-ElbwQI3swf8AAVXx9W5gT7hjuYZ6uvQGIEov3LrSWibvF2=
5hkqixzuBOPGmZrrqzRJQ1mbP7LRTom9yCoUxsV3NJW4XIn_1FRKeESIbzywbtoS8OtnmLLtcDD=
szehsk2rk4uF6_nW-VZl8PIPKydbnWhquNlnWnHcKM7DOVqZPX-3T26oZbkM%3D">

[image: Facebook]
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70OTUD-PUbWul4mnWSepyWwn1Mo5BAzp8Z9J-T736mVlKRWLFtZDyIBo48Z8OkYPhnfntX=
nnjrPuTLjW9dkzxASxdWUcLidto33CW2AH52HQgDn-OeSIltQ0iOu1W3ZP4ytBWK0_ww4n4S9iQ=
1ocGEM2GR2yfpqjVBPdDtLPpxHDimiKn-qDZNj22Yk2VLeqCVc9CjoYiUeZQnwVTRKPv7R0y3D2=
KE_0qn7qEtmwjMJO9ezONms7s4pJjyHQLF5Y0HQ%3D%3D">
[image:
Instagram]
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70CjkDoxg64ZorltUBV6xSXEWNYrrMpVlPODrlkurZN3YAE-sY0nPF8-d8FEfOiy21YJP-=
24AgbIWHjlxadLBvXSOJOgU0Tbu7NuWIIHSU1Ep5YUd2mwaPl0YTqLElVakF408K12mk9xxmcgr=
Y2SQP3tOB7OLNchne5VRboyG8Z3i1gzoit-o127Q2_jBU8gPs8jlwas7jjhpqtcx5Gz7PaAipin=
LPny-ZFLjwPp2HiupRyte-RstmRqWc5ukO3hGkg%3D%3D">
[image:
Pinterest]
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70BN2Un3LodsGbka_iV3cygrhIZy022pbjuWw_KqZzy-tu_4oCum5j5CV_56v8-yZUYpnB=
VTTMz9M73p8J5k2H47aoZO7MKmmqlQGdJJ7MprleUm4Y47iZjPqAGmXz3TKzH9VXUNNOnkuR6Ps=
iSDW1vPPkQlTQRZZsPGuDCRxlRxaGJyLHVNGRoZgyZpix4WJq-T8vvoJix0UwrN-Edy8YLoJLLT=
Z8SmasTCePqvPFcv09N6e1u7-GQLEDDNrfo5rFA%3D%3D">
[image:
Twitter]
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70LSuLL5qFAtAl2ZvHJSEqBhdT1MQfEi9HtxXYhSVtpVhZ0FeJtI-95EP7IE36Ty-6x7HW=
ggtuhFruNB1u2UeXO7Fsqzs0e9H5B51VYwy6Ud4ZKG8cOK1lmOWRh9HnoQpr-TNtNcz3lBFtgfh=
NcMaT1nxsHi6h6rTdXqdiDsJmhuZX-Q4n7EgwuIGwnHJJd9cdSsSuzLrBn3fuoVQ89yDO5lKIuD=
_cgxJZcBIwFTb9luQQUim0XbplKU6XuGs9MrfRg%3D%3D">



View this email online
<https: links.joinhoney.com=3D"" e=3D"" evib?_t=3D"70657193eb7a404887947be8=
0fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3DPQFjEIYh9v9Lo6d=
EE7nlViMJvmsjzjNHGL6_yBG4twEa7nsAhyynBoZAvto1_VJV">
.

You are receiving this message based on your Honey account settings.
Unsubscribe
<https: links.joinhoney.com=3D"" e=3D"" encryptedunsubscribe?_r=3D"70657193=
eb7a404887947be80fb10777&amp;_s=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_t=
=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4RRZ7dureRSYWwGZ0RyPFEBq=
WiCMFBgvISu_H21jEiuXGrDbw0z1eENoNsEIWOlNHHM6WW5Rbp2LQKFPde3UwVUvjZNt0TpSj8O=
AJQpBOvSG4fyH7DpyoyiFwp8%3D">
or adjust your email preferences
<https: links.joinhoney.com=3D"" u=3D"" click?_t=3D"70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70Fv_7Dx7weD4EeDHDdrEoK-vtKMB13iGzp3kf3kFFhPX0CDhelueiYwJVGCACrLGr5WaX=
68LszTz9o_XSQkC5A3-S2n0HiBv_4M6tSsLK1U23HzxVWI5-IGHWabmcvWfKLIKZl-JFZP_nsUw=
O-pq1xq3s81Klvc3uaiNiVLPXyt-V0a9YRzrraW5QmmdzSGV5ML_puh5BLbPgw_YfsS0zBj8iE2=
qVTL-W5DXuJ2qi4IIIljSPWngL6JJeIKWcd_T4tj5ZiMl6HumKi-oY09yi0M%3D">
.

Copyright =C2=A9 2023 Honey Science LLC (a PayPal company)
All rights reserved. 963 E. 4th Street, Los Angeles, CA 90013

CID: 4570808_10.04.2023

</https:></https:></https:></https:></https:></https:></https:></https:></h=
ttps:></https:></https:></https:></https:></https:></https:></https:></http=
s:></yurik1776@gmail.com></insiderdeals@my.joinhoney.com>

--00000000000087e04d060734e8e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey, check this out<div><br/></div><div><p style=3D"color:=
black;font-size:15px">=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=90<br =
aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DMjljNzIy=
ZjJmYjIyMWFjMWExOWNjODY4ZjhmMDM2YWRjN2Q3NTAzZjI2MDc5NTBlMmE1NWVkOGE0YWQ5ZWF=
lYmNjOTZlYzA3OGY5MzE3NWM3ODQ0NGZiZmJlNDc=3D" target=3D"_blank" rel=3D"noope=
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
lhost:1333?u=3DOGY1Mjg4YTY3OTQ5MDcyYmRmMjM3MjNkNGZhODUzZGMzZWY0NzgyNTNmNzQ5=
YWEwMDdmODNiYTI4NTMzOTVhNzI1N2YwODY4NzI3MTY5NzlkZTRjYWFlNDI3NDY5ODAwOWQ=3D"=
 target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-sty=
le:inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kern=
ing:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-s=
ettings:inherit;margin:0px;padding:0px;vertical-align:baseline">slb.cynet.c=
om</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hi=
dden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DM2E4NGM5MTJhOGV=
jYzUyYmE1MTUzMzc2ZTQ3NzY2M2M3MmI4YzFkZTE2MTYwMDUyODIwOTRkMDM5NzYyYjE2MjZjYj=
I2NmI3MDRlY2E1Y2RhZDM2Y2I4NmI4ZDI3MjVlZDcwMThh" target=3D"_blank" rel=3D"no=
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
DYwNDg2ZmRlODVlNDRjYzE0NGNkZmY4ODA4NGFmMTQ4OWM0OTAwZjg3OTE2YjhkM2QwYTJkMjM0=
M2M1MmE5NDU0YjEzZTQ3MjU2OGJkMmUxYTdkNGFiZWFiZGUxODI5ZmJmYTk1ZDY5Mjk0ODEzMTN=
iNjM5M2Y1" target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0p=
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
t:1333?u=3DYTIzMjIyMzBiNDUxMDVjN2QzODEwMjkwYTIzYWI3ODIzOWRjNTc5OWRmNDg4NDVj=
ZDFjNWRiN2I3YTk5NjM5ZjE1NjM2N2IwYTVkNTVhZjg0MjQ3OGMwYzlkNjNmOTc2NmY0YjhhODJ=
iMjNmNDRjYzA4MTI2MjY1ZTA2NmJmMzM5OWU3NDcyODQ2OWM0OTU0MDNkMTg0MDlkYzQxYmMzNj=
ZiZmNlYTRmNDg1NzNhYmJlZTU2ZGM4Nzg2MDE5ZDJiNTdlY2M2NDM0YzFhNGY2OTgzZjBjMjNkY=
mY2ZjU5YmQ4NGQ2NzBjNWUzNzIyODMyYWQzYzlhZWIzNDliODEyOGM4ZTBlNjVkMjc3YmI2MTUx=
ZWFhYWNiNGZhNWY0NGYxNTNiZDBhNGVjYWRjNzljNWE2NTMwOTJkODE2NDBjNjBiMDAwZjY2OTJ=
iOTk4ZmU1MjdiZTQ2NTg2ZGRhOTZkNDg2MzI2N2VjODI5OTM3Y2ZmYTE0NzBkZTg5ODlhMGJhND=
c4NjZlMGNiZTFlYmIyMzg4ODYxZDBmODI3NTRlMzBhN2Q1ZWI3ZjM5ZTIxZjQ5M2Y1ZWY2Y2Y3N=
jQ5N2UyYjFlYzMzYjA2M2JhM2EzMDRmZTg4YmI3ODc2Y2UyNmE5YTRjMTdkMzc4ZTA2ZjViMTg2=
MzNmMGU1ZWZmNjhhMjAyOTNlYzk3ZWUzNWExODYwNDY5YTExNDNkZDZmNDdkYTNiY2FiNTQ4NzA=
yZTEzMzQ2NzI0ZmNhNGQ1ZmU0YTMzMzY0Yzk1NGFkMmM4OTlhMjg1YWU2ZGY0NmJiNmVjNzQyMj=
MxOTE4MWM2OTE0MDNjNzI4ZTlkOGJkODliZjJjY2M2ODcxZDU3NmU2NjQyMTJhYzM5YjRmOTcwO=
DNmY2M2OWE5Mzc3NDNhNDQ0MzJlZmRlMzRkZGRhZGY2OTJiNGI5MWYwYTQ1NzJmNjUxNjdjMDk0=
ODI2YjYwZWNiZmU5ZTU5MmE1NjkzZGQ1MTBiMzMzNmY0ZTA4N2YxNTU0MDk1ZDQ1NDBmZmE3Yzl=
iNWUzMWIxODI2OTRlNGFhNzA2ZjFhMzRlYTJkYWRhYzk5NDhmZTUwOWZkNjEwOTljOWYzOTFhYz=
VjNmJlYmI2YmIy" style=3D"text-decoration:none" target=3D"_blank"><img alt=
=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/email/PayPa=
l-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120px" width=
=3D"120"/></a></td> </tr> </tbody></table></td> <td align=3D"center" valign=
=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;padding=
-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font-size:1=
px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"right" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;c=
olor:#212121;line-height:18px"><a href=3D"localhost:1333?u=3DZmExMThlMWIzMj=
FmMDY2ODA4YmQwNWNlMGUxNDU5YTMyODRlMWJiZTQyMzZlNzk2NDRmMWVkYWFiMGEyZWEzY2FiZ=
jJjOTk0Y2EyNWE4NzgzNDY0NWNhZTliZDM0OGM2MTYzZTRkMzViNTczMDhkMTE4ZTA1ZmIzMDI2=
OTI5NWM2ZWNmNDAyMzM2ZThiNWU3MTg3NGM0ZDJiYTNmOTljMDg1MmVjOGVmMDBmYTQ2NWI1NmE=
1ZjI4Y2ZmZDkxYTc1OTY2ODA4MWQ0ODk5ZmJlZGVhNGNlOTM1ZTc2ZGM4ZGUzYjkyMDU0Y2JhYz=
MxZTI5YTYzYWFkNWVlNjI3YmJjNzJlYTQ4ZWYxOTBlNzY5NTk1MmQxZjE1Y2NhZWU4YzM5NzE3N=
jViMzA2MWMyMzg3MTZiYmVlNTQ5NWMzZTQxYmIzMzdiMjcwMDlkYjZiYjcyZTRhNGY3MjQ4MmVk=
ZDVmNDAxODhiZDZkMmJkOGJlYzFlN2NmNTc4NzU0YWU4ZWQ3MTcwMGM1NGRmM2Y4M2M0NDQ2NDE=
5MDM1NWRmMmU5YzYxZGU2ZmNjYzhkOTE4ZmI4MWUwZWFjMDZlYWE1ZmZmOGE5MWNmMDgwNDQ1OG=
ZkNGNlM2YyYjA3YTlkY2E3NWNmNWVjNDFiNWFmYmM4M2M1ZDc5ZmI5NDEzYzUwNDg1ZmI5YzA1O=
WMwNDNlMjkyNmMxMjc0OTQyODAxYjkyZTNiMmIyYWUwOTgxYjYzMWNiNDBlMzdhZjgyY2JhNDU0=
ZDZiYjk3ZmU3NTk3YTliNTg4MjE5MzJmOWRjNzQyNjllZDVkNWNjZDkwYjZhMTNkNWFlYjcyMTY=
0MzQ0NDE1OWVhZjM2Yzk4NmU4YWUzZDkxMjJjNmJiNjQ1ZjdjY2JiNjZhOGJhYzQ1YjE3MzZhNz=
EzMDQzODFjNWYzNGFjNTc0YjM0OWQyYjQ4OWZiODg5Mzk2OTRlZDhmYzU3MzE0YjhkMzFhNjVlZ=
DkzNDRmYjBkZjM4ZjJkOWU0ZTJhMTRhM2NkMDNmZjllNzM0ZWUzMjgwMjk2MDIwNjU5NWMxZTFi=
OTczN2JiYmM1ZjFhZjdmOWZkMDVhZTllZGM1Njk3ZDQ0MDNjMTU2NWUzZjA1YTJhZmI3NjYwYzc=
wNjhkMWI4ZjFhNDg5ZDNlNjk5MTVmMzZhODM4" style=3D"text-decoration:none;color:=
#212121;font-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" bord=
er=3D"0" src=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/troph=
y_rewards_circle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"/>=
 PayPal Rewards Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#21212=
1;line-height:18px"><a href=3D"localhost:1333?u=3DOTQ0M2FjZWIwMDFiMWJlNzU5N=
zkxMjU1YTUyNWE0ZjA4ZTA0ODJmOGE5NWNjMmNkNDY0YTQ1OWM1NWQ4N2QzOTI4NWViZjRiOWYz=
MzM4NWE3NDEzOGRiZmY2ODQ1NDQ1NWM2NDVjMzlmZmVkMWQ5MDk3MmEyZmI0ZGUyMjkzZmNmMWF=
kNGE5NGU1ODFjYzQyY2JmMDEzNDRkODRjYWY4MjJiNDczMGQ2Y2Y3ZjI5M2UyZWEyNzEwNWJlMj=
BlMmM5MGI0ZDhmZGEzYmUzOTI5YTQ1MDNhM2M2NzI2NWY4NDNlZTdhNTA2OTAxYWIxOTU4NDliO=
DJhOGJkMjYzYzIxYzAwZWNhNzFhMWEwMWNjODRhYTYyZjZiZjlkNmJiZGU4ZTZmZGZjNzI2MTNm=
ZDgzNGE5MDQxMGYxOTQyODZlYWI3OTNmZWRjYmUwNTM2OTkyNWE0NGE0ODg3NzZkODQ1N2M1ZDE=
3NTUyNWFkMDVhZWY2ZDI4YjFmY2M5Nzk4MmJhNDdiYTRhMjZmY2U5NDE2MTQxM2U5NTcxNTEzNm=
YzMWI5NjAzYTc2Zjk1NmYwNjk2ZTJmZTIzOGYxOGViNDM5N2Q0Njc5YWM0NjNkNmMzOWFkYjBiZ=
DU5ODE5OWM4YjRjNTAzZDhhYWQ3YTIwNTIwMDlhZThkNDI0MTgwMGU5YjdmM2VkMTVkNTFmZTdi=
YmUyNmUyOWFjMTY5NjI5YjE3Zjk4MGUxMmU3YTQzOWFiYzAyYmU0YjNjYjUxZmQ1M2M3YzM4YTI=
2N2Y4YTM0ZWMxM2UxNjAwZjliOTRjZmYxNjYxMjhlZGI4Nzg1NGJjYzBmMGNhM2JhMGNiMzQ3Zm=
Q1ZjRhYWEzYWUyODliODhiYmEwNDZjZjczY2JiOTVhYWNjNDY2YTIwYTg2MzNkMzA4NTJjNmYzN=
zNlMzYwZDJhMDQ5YjcyNTViNzI1MDM2Y2IxZTI2ODE4ZTc3MzA1OTJmNzIyY2FmNDY3YTkzNTgw=
ZmMyNDkyYWFmNTNjYTQ1YTg4YmVjNTJlNmEyOGUyNTY3NDg1NzUwMThhMGI3MzcwMDg4YTkzMzZ=
jZjdhMmRiYzliM2FkNTAxYTQ0ZjQwYjM3NjZkZDM1ZDI0Mjg5ZDk0MDM1MzdlYjYwYjAyYzQyY2=
U3NDc1ZDc0MTkxYTc4NGM2MjZi" style=3D"text-decoration:none;color:#212121;fon=
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
=3D"middle"><a href=3D"localhost:1333?u=3DZTkyNzJhZTYxNmZmN2UyOWNkZDYyYTEyY=
TFjYTgxYzA5YjA5YjY0N2I3NGFiNDNlMjU5YWViZWY3NDkzYzI4MjA1MjA1ZTIxNjE4ZmY4OTc0=
ZTlhOGMyZmE3N2VhNzQ3YTQyMGM3ZjlkNjUzNGQxZjk0ZjY4ZTIyYjNmMDg4OGQ4MmY1NmI3MzY=
xNTZkMGVhMWZlYjYzOGRhZDUxZDIwZTkzMmRmN2IwMzVhMTFhMDFjZTU5NGZjMjdkMjQ2YjdiMm=
Q0OWIwMDliNDI2NWEyNzYxOWNkOGY2YzRmZmQxMWE0MDZmZGViYjgwYjdmMjUzNTdjMGY0NzBmM=
GVmZGQyYTI5OTNiOTFiMDg1ZTZiMWFjMTUzOTE3NmVlZDhmNDZlN2YyOGIzMjJhMjUyZDY2OWM4=
MWYyNzUxMTU4ZjI3ZWM4Yjk3MDU2NmI4ODMxMDkwMzMxNjY3NTZlOTA2MjJiZjE4MTEyYzBiYjA=
wOGE4M2Y2OGQ1YjE4MDdmNmE3ZTVkMDBmMWEwNTEyNWE5ZThjYTFiMzQ4NTI0MDVmN2U4MjFkYj=
gwMTdjNDliOGM4ZDI4MjNhNzE1NjE4YjQyN2UyYzQ3YzlmNGIyMWFjMDI3NGE0ZTdkYzJkNjU4M=
WZhMWZhOTdjODc4NDdlNmQwNDI4ZmQxMjY0ODNjYTU1Y2ZmYmQ1OWJlMjViZWNkZjYzZDdmNGFk=
ZTllN2E4MmUwOWFlMjg1YjI5N2NlMzk0N2JiNmQzYTc2YWQ0NDEwOTBiZmQ4ZWFkYjVmY2I1Njh=
kMWNhYTczYzFlNGEzZjhjZjY0ZWJmMmQzOGVkZWRiMjU4M2Y5ZjJmMTRhYTA4OWFkN2M5MTliMz=
QyYjg5Yzk0ODNiNjQxMGFmYmM4ZjI0NDhlZWFiMzRiZGY2MjBkNTViYjg1ZjliZWIyYTFkNzlmN=
zVjMDY1M2Q0NWM3ZjIzODBjMGU2NDVjMzM5MTc2YmMwZjVlOWI1Y2YyNTQ2OTg5ZTUzN2Y5ZmQx=
NTlhNjk2NzA1OThmMGU0OTcwNDA5NTE3ODYyNjQxNjgwZGJkNzdkYTJiNWY3MWVjMmE1N2JiNjM=
wNjk1MzFhMjRiYmE2MjNkMzIyZGIwYTY5ZGVjZjkwMTVhNDEzMGMxZTE5ZjAxZTQ4M2NkMDAyZD=
I4Mjg0YjQ3YmIzYTU5NjdkYTAwY2E0NTlhOWRlNDA1ODQwNTIxYTVhMGYwNWMyN2E0NjViN2E2Z=
DVhMWQ4Y2YyY2Q1Y2YxMDEyNDRmOTdlNWI2NjYwZjE2NDgzNjk0YmExNGMyMmJiNjM=3D" styl=
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
90807107789003em_full_img"><a href=3D"localhost:1333?u=3DMWMzNWVhZjdlZmM1Y2=
ExMDE3NTAyYjlhOTFiZjE3NTRiMzlmZWNkYmM4NjNhMTViZDE1OWMxYWQzNzhmZTIzOWNjMzk0Y=
zM5MGQwZjhiZTNjYWY1NmE3MGNjMzJhYWIzNzkxYTkzOTIzM2ViNDY5MDk0MWY5MzlhYzdiMTVj=
ZjA3NTUyM2RlY2Q2NzY0YzAyZWE3ZDQwZjhmNzk1MzViYjhmNTNiMzc5NWUwOGIwMGUyNDU3ZDc=
2MTA5OGRhZDA2MTM3OTA5MTA1NDgxYjllYzdkMTA0YjdmOGMyMzVjMTFiNmU0MDVjNjkwZTY2NT=
ljZmM1YzM1NjVmYTc2NWE4ODgyNWJjYWI1NjkxOTFmMzExOTY0ZmVkMjA2YmQyZWE4NWUwM2VmZ=
mU1OThlZjdlNDBkM2QwZWJmODc4YjI3YzI4NTI5YzkyM2Y0MmMzMzIyMTZlNGIyMDliN2M0N2Vh=
ODc5YzYyNjA1YmI0OGI5YWExNjc4NzRkZGY3MmQxMmQ3Y2RhODE1OWRmODdmYWFhY2ZkMmU4NzQ=
zMjFiYWM3OThlOGQ1MmQ2ODZhNTk4ZTgzYjNhMGExNzNiZDc2NWE4NDBmMDBlYWM2ZTg2MmM5YT=
FkMTU0MmRiZTQzYjM2N2NjMWExMTQ3ODA0MjM1NDIxZDYzZGUwMDljYjA4MzYyMjdmZWU1NTA4O=
DQwNTZmYjRlNDgwNzNjNjAxMGVjMjU4NDY1NGEzMzcwN2RmOGM4MDVmMDdmYmE4NGYxNWU5MjI1=
ZmRiZDE5NTIwNzU3YzVjMTc3ZjA1OTRlNzdiYTg4ZDg0MTIwN2ZiYjQ5ZDU1NzQ1YTVhODdkMTh=
lMDQzZWQ2OGYwNTAzYTU0NDU4NzhlOGRmNjVlZmQzNmNmNzhiMGY0OGE5MGY3NDZhYmEyYzY0ZD=
BjNTUyZWIxMThhZjU0NDBkZGMzY2VhODZhOTQyMWMzOTBlZGQyNjhkYTFiNGU1ZWM0NzY3YmI2N=
GUyZjM0OTc3N2MyMmZmMjhhNTU2MmUwOTA3ZTljY2RlNjk4OGI0ZThhMjE0MzY2YTc4MGMyMzIz=
MWY4ZTljYjhhMzRlZjExNThjMzI2YWJkYmY0ZGRhYmZhNDg4YjViMTNjOTdjZjI4N2U3MTNhODE=
wY2Y5NGY2NjYwOWQ2YjdlMGYzOWYwZmQ0MzQyMTk2ODFjY2ZmZDRiZDg1MGRlYzUxZTM5MzAxMj=
I2Yzg0MTc2ZjY1MDFmMTg0NWFlOTM0NTZjZjNmNzFmZGVhYjhlMDI0NzFlYzEzZWQ0NjMxNDFiN=
DQ4NTU=3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get=
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
=3D"localhost:1333?u=3DMjgwYzFhMGY4Njc3YzM3MDY1NGU0ODY1MWIzMTE1NGE2Mjk0MTA1=
M2Y4NGRmZjYyMzM3OTFkYmY5OTRhMGVmNTljZDA1ODA0OTQxNWU5NDJkNGNiZjgyYTBkMTAxOTZ=
iMjIxMzhhZmVlZTRmODcxN2VjMzBlNWYwM2M1OWNlMmFkNjFjYzNmNDBkYjEzNzQ4ZDQyMzZiOT=
ZhODczOTMzY2I2MzkxNjczM2ZlZTNkZDRhZTZiNGJkYzU0ZTkxNzZjNmI3YTc2Mzg5NjkwOWRjM=
TQ3NjM1YWIxMWEyODFmZGZiODIzOTQwZWYwNWI5OGNhZWIwZjIzZDI4ZDBjNTZhMDJjYjdjYWMy=
MTllZGIxMTUxODdhMTRmZjBiMWVjZjQ3MTE3MWNlNzMyMjdkMGM2Yzc4YzE4MDM1NjAyNjIyN2Q=
3OWY3YjkxNTMxNDUxMWI1MTVhNmU5ODM5ODdlYjE5NzhmZWQwZDExMWE3MzIwNjdkODYyYTRjYT=
RkMDA5NjFhYjJmYzA1MzUxZjk1NzhiYTNmN2YzM2NjMTQ4YzY1MmY1MTIyZDA3MjQxZjNhNmY2M=
zI5NDI5ZTZjNjY4ZjY2ZDJiYjcxODc4Y2E1ZGRlOTUzM2I4NzQxYmZlZmJmMWM1NmEzNzM1NWU4=
NTlkNDFjNzMzZDBlZmI3NjI3YTZlMWExYTYxY2M0MjU1MTcwYWY0ODYzYzNmNTNjOGNlNDQwYjg=
5MDUxOWMzMjdhYzhjYTk1MGQ2NTNjYzRiNzkyOThlOTkwYjJjZWI2YzA1Y2ExZjU0MDkzZTNmNT=
Y4N2U3MDY3ODkxODc2MzE2NWU4ZGYzZmQ0NTZkODk4M2E5YTYzNWI5YjM4NzRhMDI4ODE3NTY3Y=
zVkYzg4YjIzMTllMmVmOWFlMmNmMjMxZGNhOThjZjU4NzNlZTJkNmMxY2Y4YzljZDNlMGIzYzhl=
NGQ4ZDBkZTM4YjJhMzM3ZjA5MGQwNGRmMWNiNzY2MWZkMDdlYjI1YTJiNmU5ZTAyZmY0MGFmMjQ=
xYTNjMGI5MTBlM2ZiOGI0MDI2NWRhYmZiNmYwNjkzZjE2MzFjMGRiMDljNWYzYTc1Y2Q3MjA3NG=
ZmYTk0YWM1ZmI5ZDk4MzJlNDNjYTdlMjI4ZDVmZmZmYjViNDZlY2MyZjUxYzM1YTIzMmUxNTBjN=
zZlYjlhNzg5OTUzODgwNzVhYmIzMGUxM2M5ZTUxOGZkNzgyMTk0YjQzM2VmYzcyNDJjMzJlZDYz=
NzdiYWNjMjBmMmYwNDZlZDIzY2Y3YWYwNzc3ZjFjOTQ5NDY=3D" style=3D"text-decoratio=
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
t Honey for mobile Safari <a href=3D"localhost:1333?u=3DMmU2OTA5ODM5NDAwZWQ=
1NmExZTQ2YjAyN2MzYmQ5NDlmMjZjNDM0MTRkYzQ2ZjhkMThjNTIwZjdjZDhhZTI5NTRkNDQxZj=
BjYTQ1ZjNiZTlmNWRhOTEwZGMyYTI3YWFlMjMxOTA0NzkzM2Y4MWE4NzBlNWU3N2Y1Y2U3YjU2O=
GFiNjllMWI2N2EyNzdjMGEzZjJkOTNlODdlN2M1MGMwN2MzNDgyY2ZhMTU5OWVhYjRhMGU5MDM4=
NzNiNGI1YmY4NzAwNTU3MzM4OGViNTY3M2RhMTVkNjQ5M2Y1MTY1NDZmMjMyYTdiM2E5NGZlYjF=
mYzQ2YjExOGEyMGJlZjM3YzE3NDI4OTczYzIzMWE3NmUyMWU3MmFlMjg2MWU5OTBlNDk2ZGNmMT=
AyN2I5NjZlYzI0YzQxYWRhODM0ZjAwMTcyNGMxMGY4OWE2YzkzYTI1NGYyNGMxNmI3NDRmNmE2M=
zFiNDIxZjg1ZjY2OGUxOTRhNWIzYzBhYjEwMzc1MjhlYmY1NjZhZTRkMjUzZGUwNmJmMzkyZjcw=
MjQ0NjViNjRjYjI5YjAwZGY2NjBmNDY4YjNhMDdiNjcwM2UyNTk5NjQwNjIyMWUyMWMxOTUwOWF=
jZjY5YzI3ZDUxMzY5MmE5MTQxMTI0MzIxMmNkNjU3OTRhYjU3YmM1YWQ2NWZkNTVkMTc2NTAxMz=
dhOGU4MzJiM2NmMjgyYTcwMTQ2MGMxNjc0Y2M3ZWUxMjYzMGY3NDNhMDIzYWZjYWVjMjRjNTQyN=
zU4ZGRjNzM0NThlMGI4YzRhOTgwMGJjZWI5YjdlODdhZmVlNWRhOGQ2ZDBjNDJjYjJmYmY5NDkw=
MGU0OWQ5YmU1YzUxYzQyNzE0YzliZTEwM2IyMTIxOTFlNzZlOWRlZjI3MmYyMDY2MWE4ZmJjNDh=
lZjg1M2NlYjlmMmZkNzMwNmMyMTI0MzVjYTVhZjFjYWY4YzY0MGNhMjRkY2I0OWI0ODQ2NjIzMz=
A2NDFiYjM1ODU1YjI3Njk1NTczZjY2ZDkzNmU3ZDk4MDAwODQyZDk1YWIzMjkwY2RiNDNkYjY0M=
2M2ZGJkOWU4MjJlYTBhNDdjYmE1NWIzMzM5MzdhY2RjMzkzOGZkNzEwODAxZTc4YmYyMjQ3ZGFh=
MDI5MWEyZTg4MWE0ODlmZWJhMjNkMjkyNTNjYWNlNjM2MjU1YzMxZWJiNTRhM2E3NWE5MjJlZmF=
jZjE1NWNiNGEyNThiODE2OWZiZTVkMmRiOWU3MjNmYTVhNTRiYzVmZGE1ODE2YTNiYTlhM2E0Zj=
E4Yjc=3D" style=3D"text-decoration:underline;color:#757575;font-family:Suis=
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
align=3D"top"><a href=3D"localhost:1333?u=3DZTRhYzY4YmQwNDM1ZGY3MTk5YjUxNmV=
jNDY0NzY1NmRjMGI3ZTEwMzg2ZTkzOWEwZTVmYTgwNDU3OTZkMTIwMThlYmNlYjY0OGE3ZTc5ZD=
I4NjIwM2M5ZWFmYjMwYjNiYTg0OWM4MzZlMDQyODY0Njg2MGVlNzAzOGI4Y2YyYjIyOWFiMDI5O=
TkzN2QyYWVlODU3N2MyMDA0MTM2ZGNkOTQwMzg1NDVkZWM4ZTc0NDliZDM5YzUyYThiZWJmY2Ex=
NTZmYjcwMGM5ZDA2ZDFkZTRkNzNiMWE2YjgxMWQyZjZiMDJiZjZhMjAwMjQ2MjViNDhiODBhMDc=
zYjhmZmZkOTE2ZDY4YWZjMTdkOWY1NGYzYWVkMDI4NDg5ZjU5N2NkMWQ4YTNlOGUyNTNlZWIwZD=
I4Nzg4Zjc5Y2UxZjFlZDZiZjUxYWI1MDM3NWNlYTU1YWJjZjJlOGVlZGMyYjQ5ZjQzOGJiNWI1Z=
TAwOGMzZDM4NzE4ZDE3N2EzODAyMGQxN2NhYjMzZGIxNDYyYzRmMGI1MjE4NDYwZTM3NmYyYTYy=
ZjMzNzdkZTU1NzUxNjMyM2ExYjIyMDQ0N2IwMmI5OTFlZGNmZWFjNGFkODgxMjU5MDI4ZTUzOGV=
iMDM4M2QwNDg4ZWM3ZjU2YzE0ZTdjNDI3ODI1NzIwYWRhMjBlZjNlZWVhYWZkYzE4N2Y0M2JjNT=
hiYjRkNzAyZmViY2Q4ODMyZjQzYzc1NmI4ZDM0MzQzOGY5ZjE4MmQ2YmQ3OWYyMDFiMWUxNzgwM=
zU2MWQ5Y2YyYzlkNDFlOTUyM2IyZmQ5MmVkNDA0NTFkZjExZDJhMTQ0YzBjMmIwMzE1ZmI4NTc2=
MDlhYzIyMmQwYzJlODZjOTRjMDMyNTVjMTFjNThlMjJiMDkxMDc5YmIzMzU2MDBhYmY2ZmJhNGQ=
wNTlkYjU1ZDY2MDc3OWNhNzE2NzAzZjYwZDc3NjdlODhiYTZlZDFiMGYzNzM0ZmJiMDkzNDVhZD=
I1NjhlMWNiNDBkMzg1NGNiNTAyNjdhZTkzYjlkYjFlOWQyMmM0N2EwMDUzMWUxY2QxMmQ0OTU1M=
TBkOWFiNGQ2M2UxZjdhNzRiNGZmYzcyYWRjOGQyYzQ4NTI0" style=3D"text-decoration:n=
one;color:#616161;display:block" target=3D"_blank">Explore</a></td> </tr> <=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D"hei=
ght:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table alig=
n=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444=
90807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><tr> =
<td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"height=
:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl=
,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center"=
 valign=3D"top"><a href=3D"localhost:1333?u=3DODY3NmNjNzQxMTEyZjUwODQzYTBiN=
zEzN2VmNDUzZTViODBhMjQ3N2IxZjU3NzVjYjQzMTAxOGU4ZWY2OTQyZTA4OTViZDE1ZTc5MTZm=
NzIwNDE4MGQ0YWI3NjZjOTMzOTZkOWJhNTIyMWM2NTRkYjgxNjk5ODEyOTViY2ZmYWM0YzUwZWZ=
lYzcwMzQxOGMxMzJhNTc3MjM0OTgyYzAxOGIwNGFiZjZhNmMwMDg5OTdmMjFlZGIxZGM4ZjcwMT=
hhZmExZWRjN2I4YmI5ZGE0Mjg2OTA0YjFiZWIxMmIxZjdjZGI2OTRiMmZlMzQ4NjllMmZhMWY0Y=
2IxMTUxZjlmNzIyOWJjZjZmYTVkNTFmZjlmZWYzNjM1ZWIwYzAwMDY2ZGMxMTIyZGNmYTQ5ZWY3=
ZWE3NTFjYjJlMDI1OGY5ZjhhNWU1ZTMxZTEyZTVkZmNkYzkwYTI1Y2M4N2MwNjRiZDgyNjE0ZDk=
1ZDA2MmVmZWNmZmFmMzYzMTBjNGRhZWYxNjBmYTk2YjI5Nzc5MzU0NjE0YjZjMmFhYTllN2YzZj=
gzNDc1OTFlMGMyZTFmMWNhNDJlODk2YTE3ZTE0Mjc2ODIzNzM1ZWY5N2ZhMmRlY2RmMGY1YmM1O=
DdkMDMyYTgxNDBlZDI2OGYyZTI5YzA0MzZkYmUyNDM0YzhhODQ4MDE0MjYzOGNiYjVlMGUyMTk1=
NGViNTZjZWE0ZmI5YmE1NTYzYzE3NTg4YjdiOTg3MGI0ODNhZGNkNzk4OTFlMGVjMDcxZjJhNGE=
wMjc2MzgwYjIzZWEzZDVmNGM1YjMwMDE0NDg5ZTJkOWNiOTQ5YTk5ZmQ2YmE4NjFjMmQzOGVmZj=
M3MjBjZDA3YjEyODU2YTRiNDNkNDIxNDUxNzg4ZGU4MjZmZjNmMjdlMTU3ZDVhNTQ4YTQ3OWZlN=
mIyODI1MTE2NmExZDI4YTFmNWU4MWI4NjJiN2EyZTYxM2IwODZmNDRlYTg4ZTY3MmE5Yjc3MWQ3=
OWNhOWQxMjc4NTgzNTBmZWI5MGFhOTljM2ZmNWYxMGNjMzllYjI5NmJiMzA5YzdkYzFkNzQ0MDh=
iOGI3NTI1Y2M5YjdkZGNjYjVmMDE4NjU0Y2IyMDA2MWFhYjI1" style=3D"text-decoration=
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
=3DYTU1OTViN2MyZDdlMjI1NWVlNTZmOWQ4NjkzMTAxY2IzZDU4MTM3ZDIwYzk2NDY3Y2I3NzUz=
MDNhMmNjYWRkNWEyNGNlMjczMzBlZGRlZGExZmVkYzUwYmEyMmVlNjEwYWFlYmQzOGQ3ZDRkNmJ=
iMDVjOGVlN2M1MWE3ZjhlMjJkOGEwYWJlODQ1Yjc5MWEyM2NhOGRhMTRhMzA5MzcxMzRiODUyMD=
cyYWFmMDAzOTk4MjYwZjFhMzAxZWJhNGQzZDFmYzZkYzMzZGEzNDBjMGY2YzI0YTkwOTlmMTY5N=
zBlZTc3NTgwNTUyMDhkY2IzZjUzZDhkMDA0NzMzMmJlYzdhNTVhOTFmYzg2ZGQwZmZiOTIyYWZi=
Mzg1Y2Q2YWIzNmE0YmU0NTgxOWQ2NWE2MDk1ZTZiNjY3NmYyZjcwM2E3Y2MyYjJlOTk1YzEzMGI=
5M2M4OThkYjhjMWJkZjk5NTQxM2Q1NTUzYzkxNTZiZDVkODhmNzIxMzYyOWJmODAzZjQ5MWRjZD=
cxOWVjZGMwMjA5MGI2MmRjZmFiYTU3M2I1NzM5NTIwNWY3OGEzYmYwNGIyYmU3ZjJhOTgyMzFlO=
WU5MzRhZTA4ZGRiMGYxYmU0YTU4ODNkY2RjOGMzOWQzYjljODhhZGM4MjA0ZDhlMThiYzE1ZGIz=
ZDZiODIwYzZlOTdhMjNmZWU3NDRhZDRmZmU0NDQzYzIwM2MyMWMzZGZlM2UzYjMxYTIyYWZkZTN=
lZTJiMzYyNGVkYjVhMmRkYjM5OTI5MjQyMjZhNTJlNTMwMmJjZjk3N2RjMDMzZmRlN2JjMzQ0ZG=
Q5ODJiM2E5YTI5YmE2NWVkY2RiMjc2MGFlZDI0YTZiZGQ1YTRlNmJkMTBhYjhjNWE0OTk0OTMzZ=
mEwOTIzMmUyYTY2ZGYxMjUyZTczZWMwNjVlYmNmZGViYWYyZTIzOWFhNmM2YmVlNTcyMmJjN2Q0=
ZTg5NDg0Njc1ODA2YmI2M2QwYzVlYjMxYmFmMzY2ZDNlYWNjYjM1YTdkY2NiZWU1ODdhODM5NzY=
wNGE2NWUzYTgzYjMzYjk0ZWM4YWEzNjJlNTc2ZGQ3YzdlOWQ1NmU5ZDRmODVhNzczMjJiNzJmMG=
Y5NWIwMjc5NGYyNWVhYjU0NjQxODc3NDA5OTNjNWQyOWVlYjQwMWZm" style=3D"text-decor=
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
NmFlZjFmNGIwNWE0YTYxMzdhNDg1NGQ3MDkwOGE5MjdiYTNmOWExZGYxNzFiNWQxYTIwOTEzYjY=
yYmVkZTU2ZWU1YjY0ZTc1N2Y4YzRiYTNhZGM3MmQ4ZTRlMGZkZTk1ZWRlNTJmY2I0NzMwYmFiNW=
I5MDM4MGM4ZmU4ODgyMzhmOWJiN2MzZDc5NGNmMzhkMzhkZDcxNjBiZTg0MmNkYjg0MjA0MzAzZ=
jk0ODcyZmRlYzgxNWYyOTc4ODJhMmExYmEwZGMzNDY1MjRiN2MxNmE3NzM2MDMyYjU1NzhjMTMy=
ZTQ4YmUyNGFkZjRiOGZiYWYzNDYxNmMxYTQzMzZlNTQzM2Q5OTgxODBiNGEzZGVhOGM2NjFhNjh=
lN2Y5OWY1ZTUyYWUwZTQ3OWEzNDhmZDIyMjliY2UwYTkzMmI1ZDYzNWVjMmQ0ZDJjYzQwMzI4NT=
RmMmJhZDk5NjczMzY5ZjYwOGY0NjUwNzM1NTcwMGM5NTcxNTNlZDI3ZDBhNTRmMmNhNzU2MDUyM=
GMxMjVjNzEwMWJiNWJkZGJjZmE5ODE2NzdiMWEzMDczZDgzZThmY2MyY2NjYzYxNjU0NGE4MDJj=
MTNjMTIzNGVlNjA2MTc2NTRjMzQ3ZjgyNGIzYTg1MmEyN2I5ZDM4NDQ5YzRjZDk0NjZiYzBmYWV=
hMGM0YmVlN2FmOGEyZjExM2JhMTc5MTFjMzliMzFiZTA4NjViMmY4NTY4YzkzZjk5ZGFmMTk3Nm=
E3MjdjYzk1ZDQxNWU3NTk0Njg4YzI0NmZjZDFiZDgzOGM4ZDRhZmE5YTFlZTRmMWFiNmRjMTUwN=
WJiMGNkNTI2ZDFhZDZhYmI4YWZjYTVkZWI4MTdhMzY1NTVjZjQ5NjkyMjA2NzdmMDI1YjNhYjQ5=
MzE4MTU3YzExZTc2ZWQxZTBhODM2NjZiNGMxNmY2MTAwMGNkMDQ5NGFjYjYzZTQ0ZWM1M2NmMjk=
1OWQ4MjNmY2RiNmQ5MDlmNTE4ODAyOGY0YTJlOGNlNWE5MGU5ZGViZTFhYWEzYmUyNDk4NTdlZj=
Y4N2Y5ZmUzNzRjYTc1NmNjYTBmN2Q3ZWQ5ZTM0OTM0Mzc3NjAzZTk0YzVmMDk2NDA2MmNiYWVhM=
TZk" style=3D"display:inline-block;margin-right:45px;height:24px" target=3D=
"_blank"> <img alt=3D"Facebook" src=3D"https://cdn.honey.io/images/email/we=
lcome/welcome-social-fb@2x.png" width=3D"24" style=3D"border:0!important;ou=
tline:none!important"/> </a> <a href=3D"localhost:1333?u=3DNWM3ZmQ4NjQ0ZjRm=
NjJjY2NlMjExY2IzMmQ0M2I5ZmViMDhlNzA4YTg5YmU1ZDUxOWM1NzQ4Y2M0MDRjMjM2Y2UxNWY=
0Y2UxNzY1ZTNkZmUwZmY3M2UyMDhlZjk4NTY5OGFmM2VlMTg4MTIxYzQ3YjRjNTk4OGM0N2Q5Yz=
QyMmJiOTA0NzI0NGU5Y2I0ZTdjZTRhOTY2ZmYwNTQ0NzFjYmViZGUyY2YxZGI3MzQyZDdkOWI2N=
jY1NDcyZDkzNmU1ZWY5OGMzZmQ0ZmQyOTlkMGI0MDVkNDA2Y2MzNmVhODY1MDk1OGNkNTMwYjA3=
ZjExN2ZmZGZlNWM2OGEzZjgyMDQxYzViYjUxM2I2MDU3ZTRmZGE0NDdhZWE5M2E3MTEwMzk2MmE=
4YzM2MTcyMGIwODA0MWNmNTVmYTY3ZjQyNjViZTM0YWJlM2NlNGYwNjhiNTlmYTVmODhkNWEzYW=
MzODAxNDhlMjU4MDAzMGRlN2E1NmY1MGE5NTU1MGJmNWUzNWUyZTliYzQyZThiZTU0OGQzZWQ5N=
zNlNjE1Zjg0ZDc3M2ZhZDJmYzYyYTg3MmU0ZjJhYTJmYzBkMzc5Y2M5MDIwZDdkOWFiNTY4Mjhl=
YTYzOTg4NTRlODAwOWY5MGFjMDlkMTI4ZDg0Nzg1MDlkYTA3MTI5ZGJmNDY1NzdhZWM4MzljNjQ=
yYjRhOTMzMmI1YmFlMGY1YjY5YzI2ZTdhMDM4ODEyMDEwZWNhNzhiZGJjZWEzYzk4NDM4NzU4ND=
k0Yjg3MjQwNzk2MGIzMTRkZTBkMTNmOTU4ZmE3NmFmMGUwM2JiMzc0OTA5NzAxM2NhNTU2NDcxY=
2NjMmU3ZTUzN2Q5NDIzZTBjMTNmNzFkNzllZjk3ZjdlMmJmMjBhYWIzZmM1ZGRkMmViNDJkZWI2=
NDM4NTE0MzA2YzVkMWMxZTAzMWNkZTQxMGZjODNjMTkwNDVlNTRmMDVlZWY4ODBmNGNhMjFiNmQ=
4MDdmOGY1ZTg3ZmI3M2NjYjg1NWJkNzc2OGE3NDcyMzIwNWM0OWFjN2E0YzJjZWMxZjNmMWQ5Nz=
Y4YmE2ZjAxMDkwOWMzYWQxNjExNDg1ZjdjZmZmMTc4MjQzM2JjNzFmZWVkYWQ3" style=3D"di=
splay:inline-block;margin-right:45px;height:24px" target=3D"_blank"> <img a=
lt=3D"Instagram" src=3D"https://cdn.honey.io/images/email/welcome/welcome-s=
ocial-instagram@2x.png" width=3D"24" style=3D"border:0!important;outline:no=
ne!important"/> </a> <a href=3D"localhost:1333?u=3DNWEwMzliYTIzZmVjMmM5YjZi=
NWIxM2EyYTIxNmMyZDM3NjBkYzNmNzhjYWU3YjI5MzczZTI1NTM3ZmQ1M2EyMjU4MDJhY2Q5ZGY=
5NTFlYmE0N2U5OTVkYjJkN2U5NjEyOTA0ZWU4N2ZiZmI4ZWRkMjU2YTRhYmZhZTEzNGQ3MzZjYT=
hhYTAxMzU2NjBkN2M0ZTM5YjMyZjc2MThlMjc0OWEzYjkyNDZlYTM5NDZlZTM1NWQ3Yzg4NzA1N=
DYzM2I2ZjI1N2U3YmE1MDA0YTIwNWMwMmM3NDk4MGRmM2NjNjA1OTk1YWM5NGIzNzMxYmYxNThi=
YzZlZjcyZmNmY2Y1MmFkNDdhODI5ZjlhMjJhMjZkMjlkNmQ0NmViYjM1MGM5OTEwYTY0OWU3NjF=
lMzIwYzhiZWUwNzdmYjM1OGQ4NjI0OWM2NTU2ZDNlYWM4NDU4Nzg0NzAxYzRjMDkyZTMwNDhhMz=
VkM2JlZDBjNjEyMjI4ZThlNTJiZDUyZGRjYzVhMzE5MzZkOGY3NzVlOTNiNDY5NTY2YmEwNWEwM=
DMxY2Q0M2QxMjgyZjg1ODdlMTM0ZDU3YzhkYzMwODQyNmIyMWY2NTIxMTI1NGM4NzUzZGU2Njhk=
ZDUxMmQ5NTg1ZTZmYTgzNjY0MTYyZWRlZDIzNmQxYjIxZmVkZTdlMTJhMTg2MGE4MjAxMGVjZWI=
2OThjN2VlYjI0ZGMyYzNkZDI3MzJhMzIzN2U3MmM0MjMxYjY1OTkyNzhiODI2MTg1NWFkMDlmND=
UzOTc1ZGNhYmI5Yzg4MGIxMGMxZDJlNTI3YWE0YzA0ODI1ZTg1M2VkNmYxNjhhN2M2OWIwNmVhY=
zllN2M5ZmRhOGRiOTgzYmQ1MWNmZmI4ZmM2NWU5MDg0ZGU2NzZlYjE4MDQ3OGZmZThlZmMwMDVh=
OTc3MGE1OWM1NmQ4NzJhYWFkNWJhMmM1OTYwZjVmMjM3MGI5ODgzYTI5YWU3YzgzYThlODRlNjE=
4ODM5OTQ2MDQ2OWFhYmE1YzRkYzNmMjc5MGQwNzAxNDM2NWNhYjdhM2Q4ZThhYmJhZDBhNTBlNW=
Y2OTQ4NGQzN2IzMzNhYTY1OTEwYmM4Yjk1MTY0MmZkYzU0NWU3NWNm" style=3D"display:in=
line-block;margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pi=
nterest" src=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pi=
nterest@2x.png" width=3D"24" style=3D"border:0!important;outline:none!impor=
tant"/> </a> <a href=3D"localhost:1333?u=3DZjZkY2YxZjlhYTlkMmFlNzc4ODUzNWE3=
NDJmNzJiZGZiMTQwN2FlNzgzZWU2OTIwNDQ5MDY4MDZiY2JjZTVlNWNiNTk1MDY1YWZhZDlmMDI=
yNDU1NDQ0NDYxNzdiYWFlMjc5YzlhNTEzYzJkNTZjZjRiYmJjYWQzMmUyNjY4NDNmYmU2N2Y3ND=
JlNjhmMGQ2ZTFmMTFhZGM3NDUwNTQxMzIxYThiNmExMmNhNWQ1Y2QwMTJiMTNiNmRmMWQxYmIxM=
TEzZjE3MTBkY2Y3ODlmNjdhOTVhNmJhNzY2YzAxMzE5ZDRhMTRhZTRiYmI5ZDIyZWYzYjIwZDk2=
Mjk3MGI4N2NhY2VjMWJkNGY1MjY0ZDk0YTM4ZWRjNDk4YjVhZTE1MGVmN2Y1MzIxY2EzZmFmZjF=
iMTllNDQzNTJjZjlkZmY4YjBjM2U0MGM5ODc1ZjEzODRmZmU1YTgyYWU1NTBkOTgxNzJhNmFiMz=
FhMmQ5MWNiMzRlYTRjNTA1NDY5MTgzNDYwYzYwNzM2ZGMxYjQ1MGUwOTQ1Njc4NDJjZDJhYzAzN=
2FkNzJjZDY4YWYyMzYyMDliNjhiZWExMmQxZTVkMzkyZTdhY2YyZDBhYjg3YzE3YjdmZTRlM2E1=
ZGZhNWQ5Mzk4NDUwNzM5NzM2MWI5MTVjMmM3NGNhZGRhZTVlZDk0ZGQ5YWYyYTc5ZTQzODY4NTE=
3NWUyNjBmNWRhY2VhNWQ1MDRjYTk0YzZhMWNhMTJmMzY3ZGU4MDE3NTVkNTA2OWJkMmZjNDFjND=
g5MmY2MmY0MmI5MWE0ZDk1ZTZiZDY4OGM0MmEzOGRiYjBjMjBlNjMyMWNlODc5MWNlOWY5NWI5M=
GM5NzA2NmU0MDA3YjRkMmE0YmNiZDUyOTcxNDE0MDAxNTU4YjRlNTY2NDYzNWYxZDVjYjc1OGE1=
NGJlY2UzZmZjNjg0MmI2ZTdhMjEzNjI1YmU0ZTg0NzFhMGQ0NDAzMTdlOWI3NjQyMDQxOWQ2YTk=
5N2JhNDg1NGYzY2M0ZWRiM2E2OGYyZDQ4YWY4MGE1N2QyYmY1ZjZkNTY3YzliNjAwOTJmYzI3Mz=
I0ZDNlZmJjNmNjNDFjZjg5MjU3ZDU5M2RiMmU0NGZhODZh" style=3D"display:inline-blo=
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
lhost:1333?u=3DMTA2ZTM0ZmU2MmUyNzNlZWI4ZTdiZjMwOTVjODE4MjExNzg3ZmU2MTNjYjk0=
MTJkMTRmNTdlYmM1M2RmNjExNjQ0Yjc0NzQyMGI1NzYwODYwMmYwMjViOTA3ODU5MDhhZjA1ZTA=
0Y2Y1MDBkODMzODM5ZDEwOTA5ZWE3MzBiMGY4YTBjMzMwNWYyNmFhNDE3MDJmZjQwODExNzc3Yz=
UzOGYxZmY4MmEzYWE1ZjlhNTdhYTdiOGM3N2IwYzc5Y2JhMDRjYTA0ZjJiNjRlYmEyNDA3Y2EwM=
jgyZDZkZTNhY2YzN2E3ODQzY2VkMTQwNmViZjJiN2U4NzM0NDU3NGFiODQxNzFlNDQ0N2NhNjg1=
YWYzYTdiNGU5NDNjMTlkODM4NWVkMmY1YzE4NTRjNzU0OWZlYWIwNTM4MjFlNTA5ZTdkMDhiNTE=
zMzgxYmI1ZmJmOTM0ZTU3N2Q5YzUyNWI0N2JjODVjMWIwNGJkYWQxZjBmY2M1ZjVjNmYzYjkxMm=
FlMDEzMDJkMDU4ZjcxNDFjM2MxM2E=3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;fo=
nt-weight:500;line-height:16px" target=3D"_blank">View this email online</a=
>.<br/><br/> You are receiving this message based on your Honey account set=
tings.<br/>  <a href=3D"localhost:1333?u=3DYjU4Y2QwMGVhZmRiN2ZiNjY4YzM1NWM2=
MzAxOGU0NjdlYjkxZDg2ODg3NGI4MDNiMTc3YTE4ZDA0OTFhNGFmMjBiNzM0OTYxZDNlODAzZGY=
5ZDY1MDhjZDdkMjhiMGQwZWQ3OTk3Mjk2YzY5MDUwYjI5YTIzY2JjMWZiNmEyYjFmMzJhNDc1MT=
MzNWEyMThiOGY0MDk4YWYxMDkyNjBhODRjNDk3MzJmNTVjNzM0MjViMThiNzgzZWRmMmVhMmE5Y=
jcxMDBiNzMzOTVjNDZjNzYyNmQ3ZTBlNmY1MTU4YWMyZTI4ZDM0ZWFjNDhmYzNjNzNmMmU0MjA1=
ODE4NWZmNzY5YWE5ZjY0NzBjNDI2ODQzMmM5M2ZjYzkyN2Q5YmNiYTczMmUzZDU4ODUxNjkzODN=
jYTgzYzJiOWI1M2M4ZTBiZWQxNDQ3ZGE4NWQ5YTk5YzFhMDM4NTFjZjY0MTk3NDNkODM3MWJiNT=
g2YWRmZDNlMGM3ZWY1ZTIxMzk1NzhlMzNkN2MzNDYyOWI5YTBiNTA5ZTliYTEzMWMzODA0MDUwZ=
jg2NjljMDllMjdmYmI0NDk5NDdjYjlmYzY1YmJlZDZlYjUwMTg1NWMzMDJiNzJjMWJlMzMwNGYy=
ZjdjMGY3MzYxMmE1N2VhNjFhZmM0ODc0MDViODU2OTM3NjUyMTI5YmY0ODg3ZDZmZjc3NTM5NDN=
lOTRhNDhjZTY3OTUwMDQ0YzM0MDNhNWJmZWJkMjVjNTI1NzYwOTIzNTdmMzEwNWU1YjI1OWEwZm=
E4MGIxNzExNDc2ODkzMDlkYjA0NDUxNTU5YzI2NjFmNTQ5NTUyNTNlMjU3ODUzNGIwNjNmYjUyM=
2Y1ZGQzMmMwMDEyMDI=3D" style=3D"text-decoration:underline;color:#757575;fon=
t-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;font-weight:5=
00" target=3D"_blank">Unsubscribe</a> or adjust your <a href=3D"localhost:1=
333?u=3DOTA4NTIwMmJkZWMxMzM1YTYyY2Q1NGI1NmRjZjc5NjRkNjg1NmNlN2Y4ZDFlOGU0NzI=
xOGE3NTBkNzBlNDg0OTNiY2E3YjJmMDA0YmMyY2VkODM0YmI3ZTgwZjE1ZTAyYWRhOTc5MjQ5ND=
g4Yzc2YWEzZjg3OWIzY2VlNWMyOWEzMGJhMDM1NTk1MTBjNjEwOTA2MDhkMzkyODBlMjA3ZjY4Z=
DAzNGY0ZmIxOTk0MWViN2I1NmM3MzExNWU2NGY2MDY1YTU0ZTQyYTIxNTU0YmZkZmE2NDA1OWNi=
NDU5YjU4NjU5YjAzODM3NjA4ZTU3ZDlmZjA5ZjAyMGFhMGUyMGI2OWQ1ODJiOWFjODY0NDUyNWI=
zZDY4YmJmYWRkMGRkZTk1NWQ5MjFkNGE5NjUxMjVkZjFiYmQ3MGY3NWFlNzIwYmE5NDc1YmJjZj=
AwNWU5NTAyMjQyNDFiNDc0YWVhNzU5NTA2NTViYzMwZTZiZDc1ZjVlM2RkYmExNGMxNmQ3Y2Q1N=
jc5MTFjY2ExYmUwMTBlYWQ4Mzg0Mzk3ZTkzZjQzYzBmODc0Njk5ZWRlOWY3M2UxNGY5MDQ2YTk5=
MWNjZDRlYWM5NjcwODRmMzAxN2I5Zjc4M2Y0N2EzYWJjNDc1MWZlOWFjMGYyMGFlMzEyM2RmZGF=
jZTQ2MGMxMzY2MThhNDU5MTZhNDVjNzZmZTY4NzQ0MDc2NDMwN2M1NTFlMTFlZGNmZGMwYWNkNG=
QwNDRlZGI2YWU0MDlmYzY2YzViM2Y0NjBlY2I0YTUzYTIxNzZkMThhYzM3ZTY0ZTcwMWIxMmNhO=
GZjMjBlYzQ4ZGQzODQyYjVmMDdkOTA5ZmQyMjJiYmQxNjRhYjkzNDA2OGJhOGI4YzA5NzJhZWYz=
NGZkYmJmMDg5YTVmOTM0OWE4OGY4YTU4ZmQzYWU2YWY0NzVkZjc1N2E5Y2JkMTlkNGU3M2UzM2Q=
4OWMyOGIxNjg4YTFiODBjZjhmM2Y3ZjY1YmI3YTcxYmZhOGE4ZjFiMDhkZjBmM2M5NTAwMWU5Nz=
U3Nzg4YjM0ZTA3MjBiYjk1Nzk2NjczMmIzY2EwMWYxZjhhOWJjZDRiMmIxYzE4MzUwMzgzM2UwN=
WYyMWUxNzU0OTNmNzU4YjM4OWVkYjc1NjZiY2VmYjJlNjI5MzUwOGU0ZjU3" style=3D"text-=
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
