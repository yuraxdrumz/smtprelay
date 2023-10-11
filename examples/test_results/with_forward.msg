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
aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DM2ZkNTMz=
ZjBkY2JjMDhhYWIyNmViMGEyMzc4ZmI3YWNiYTU1MjlhOTEyMTU5ZWE0NGE2ZTM5ZTJkNTZhYjM=
0OTBmYjc3MTBjZmNjOTQ3MDQwY2E4MGIzN2M3MDI=3D" target=3D"_blank" rel=3D"noope=
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
lhost:1333?u=3DM2NlNWVkMDllMmJhNjBiYWJhMWNhM2UzMWE3MDE4NGUzZWM2YWIxZmE3ZWU3=
NDM3N2VjZjhiYjViZDA0ZTE4M2U2ZjA4NWEwZjk1MGRjNzIxODg3OGNiYmEwMzY1YzhhNGY=3D"=
 target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-sty=
le:inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kern=
ing:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-s=
ettings:inherit;margin:0px;padding:0px;vertical-align:baseline">slb.cynet.c=
om</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hi=
dden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DMjFhNzc0ZDg5NDB=
kNTYxZGMyMmY5NmFhMTBkMjdjOGUyOThlY2IxOGI2NmNiY2FmMzM0MWVlMGFhNWVhZjc5ZDdjNW=
E2YWJlNGI0NjgzOTA5NTVjNzEyYWI5NWFkOTU5NGQ3NmEz" target=3D"_blank" rel=3D"no=
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
=90<br aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DY=
WM1N2JkZjFiOTVjYmQyZjg2MDNlODM0MzA1MDEzMDk3ODYzZDI1NmU1MzY5OGI0Y2E0MmU2ZWIx=
MmVjYzU4M2ViMmIxNDM1MDk2MTNkMjJjNjJhM2M3MDJmMDk2YjJkOTM1ODI5Zjg0YWY5ODJhNGI=
2N2M4YWU4" target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0p=
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
t:1333?u=3DYTYyYmY4MTE3ZTExZTZkZGZhYTBmN2IyNTY2YjgzMzE0ZjJjMjMwMjA3ZmRmOTJi=
MGYyNzg2MDAxNmJkOTg3NDhlZGMwNWM0MmU3ZGIyMTdhYTgzMzFiZDI2NDA5NGY0NjhkZTcwNjA=
4ZWVkZGQ5MDZhOTAxNWQ0OWY5YWRhYWFiZWQ3NWMwNjIwOTY5YTdjMTI2ZDYxZjkyMTZjNmExNz=
liZmVlMDQyNjhiNGIxZGM0NWUyYTljYjNjMDBlMmNkMTNlZDQ4ODE5M2VmZTFmN2UwYjhkMWNhO=
TNiNTYzMzZiNmFjYTUxM2VhZWJkNTliNDIwZDFlYzdjOThmOGYwODQ1NGJiNWVjYjAwM2MyNDMz=
YThiYWQzNGI2YzQxYmIzYjQ3YjRmOGRhNTJlNzBkMDQ0YTRkNWY3NmUyMDdiY2ZlNTZkOGU3YTU=
0YjYyMGNhYjZjOTBkYzlmYmVlZjVlZDQwY2IzNGZkYjhmZTU1N2QwMzk1NjcyMWUwMWM1MWE2MD=
E5MzJmZWFmZjk4YmY1OTAyYzUyMmZiMTczYmI3ZDUxYzFlYzI2YzZhNDViNWNkNWFiMGQwZjhmY=
zQ5YTUzNDM0MWE5OTRjN2ZjOTUxNGE5OGJiNWNkZTNmYzZjNTMwNGRjZTRmNmUyOWUzMDE4N2M3=
ZjgyMWFjZjljNzIxNTA0ZWE1NGNhNDQ3ZWI1YzU2Y2JiNjAyMGI1NWE4YThkNTkyZTYxYTdhMDF=
kNjdiMWU1ODg5OWQxMjBmMDQ5OTQ5ZDMwZDVhYTE1MzI1ZjQwNmM1MTNhOThhNTNiZTJlNzE3OD=
EyMTNjM2ZlNDNhZmIwNzQyYzVlYzQwYzVhY2QwZDJmYmRkNWNlZGRhMDcwODJmMjY1ODNkNjI4M=
jVlNWMwYzM5NTE0MWNlZGYwOTE5ODcyZGY3ZDJjYTIwMzVmZWUxY2U1YTVjNjJiYzAyOTlmMjM0=
YzU3OWZmMTVjN2NjZDM5MzYzNTE3Zjc1ZGI4Zjg2YzQxZTg5NzU2NTI1ZWEzYzM3YTNmOWYyODQ=
5MGFiNmEzMDUyYmMzNmM1M2ViYmJkZWU4MzI4MTE0OWQzM2EyNGYyOGU2N2VmYWQyYjJiMTUxZj=
NiZjQ0ODJiOTI0" style=3D"text-decoration:none" target=3D"_blank"><img alt=
=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/email/PayPa=
l-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120px" width=
=3D"120"/></a></td> </tr> </tbody></table></td> <td align=3D"center" valign=
=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;padding=
-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font-size:1=
px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"right" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;c=
olor:#212121;line-height:18px"><a href=3D"localhost:1333?u=3DOGM3ZTUxNWVlMm=
U3OWM0NDQxNzdjN2Q3MmFkMWFhMGI3NzBiYTg3NWQzMWE4NmFhYWQwZTgxMDQ5YmVlMWJmNmIzY=
zM2NWZmM2NlNTJhYmJiM2JkM2FlZGU3MDMzZTdlYWEwOGIxOWUyZTg4MDZlNmRhODc0NjkxZmQx=
NzRiYzYwNjhjZjkxNDY5ZDVjN2I2ZDQ5YWE5Y2VjYmQxODdlZWQ5YzZkZTNmZjljYTY1MmYyZTM=
wOTBkZTRiMzM1ZWU2ZDFlNDJkNTUyODhjN2VjMWM5ZDczYmMwYjJjNjcwZjNiNDZlOTIyMTZkNW=
M3NGVlNmUzMWM5YjUzOWUxY2I1YjZkM2VkNTY1MmQ0ZDkxZDFlZWEwMTFlZmRkZjliMTE2NmUxO=
DIxNjJhZTRjODEzYTUxOWRiOTI0ZGY4Njk4YjM5MmRiN2Y3YzQ2OTk2MTA1MjI2MWZiMWZhZmIw=
OTQxNmFhMTJlYTdlNmYzYjAzNWFhYmI0MWEwZTY0ZWU1MzdkNDYzZmYyYzgwNGMyM2U0MTZhOGN=
hODk0MGJhNDU4MTg4YzEzNTdhMDhjNmRjZmMxMjE2N2ZmMzgyMzc2NDliMDUxYWFmNjQwMTFkYm=
U4NTJjNzAwOGFiODhmYzllOTk5MmYxNWZjZjcwM2M4OGY1ZDk5MjRjYTU5ZDdjNGM5OGIxZmEzZ=
TY2MzM2ZTcwMWY2ZGRkMTUzNjBiNDRkYzQ2YmRkOWIyMzQzMjI3MWE1ZTExMTMxMGU0ZDY4NTk1=
YWVmYTJiMWE1N2MxZGU1MTY4ZGQzZGNlMTQ3YjhkYjMyNWU2OGMzNzJmNjM5ZDgwODQzNDc5N2Z=
kNTgwNzE5Zjg2M2NmYTU3YTc2MDcyMDBjZDJkZGVjNDUzNjM0NzRmZGMxZWQwZWVmMmQzNDQ3YW=
MyMzFhMmEzYjYxNzc3NGNiN2Q0Y2QxMjBkYmM2N2VkMjRmZGY2NjkwYTA4MjdmYmIyMWMyNmE0M=
2U4YjI2MDQ5NDMzNDVhMmQzM2IwMzg0ZmIyNGExOTg4ZWQyMjQ2ZjdjOTAzZmI5NTkwOGIwOTZj=
YzZkOTMxZmJmN2RhYjQxZmM1ZjM3ZjIwNmM4ZWRmNWY4OWZiZDE1OGFlZDY3NDc5M2U0YjdhNTd=
hYzkwNzQwMzMzNjBjMzMyOWJiNTNhMzk4N2Nj" style=3D"text-decoration:none;color:=
#212121;font-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" bord=
er=3D"0" src=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/troph=
y_rewards_circle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"/>=
 PayPal Rewards Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#21212=
1;line-height:18px"><a href=3D"localhost:1333?u=3DZDEyMzQ2Y2RkYTMyNzYyNWMxM=
2UyMDNiZTFiYWMzM2IwNjQ5YTEzMzBhNDU4ZTVhYWMwNmFmZDIxMWQxY2IyMTI4NWIxOTEyMjQz=
NjRhZmQ2MGUyOWU0YjExM2M5OWIzNDE4NjdhOTA3YjI5NWIwYjAyY2Q2NzhiYjM1NGQ4YzkwNzF=
jODgyYTRmNDVlYmNiZDE4ZmIwOGRmYzFiNGJmYWNiYTRjN2EwOGE5NDBiNGE3Zjg5YTM1MjQ2NG=
M3ZjViYWYzZjFmNTM2NmVhOGY0ZjA5ZTg2Y2NkZWIyNjFiMGE1ZDczMGZlYzBlMTM5OTRhNjIzM=
DczMDViMzQ4MjBlZjE4MjQxZjNhNjRlOThhYzYzOTcwMzFkYjNkMTAwMmM1YzZhMmM3MGFkNzQ2=
NTIxZDUxNGYzYWVlMmY1NDNiNGFjZTc3NTdlZWM3MDZiZDA0NWE3NmZkOThjZGM0YWUyY2JhMmV=
jZmM1ZGU4OTk1NTcwMzBjZTI3NzVhZWIxYjE0NjE5ZWRjM2NmYjMxYmNjYjhkMWE1MWM4MzJkMG=
RmNzcxMGY5MDRiNDFmODM3NjFiYjRjZTk0MGU0ODBjZWQ1MzMyMDM2NDA4MmEzMjY3OWViMDAzM=
jE5NWNlMTA4YmJiMjZmN2U1OWJiYzVkZDA1ZmNiM2YwY2RiODBjN2U3ZDJjYWRmYjYxZDJlY2Q1=
NmE0YzcxNzViY2NiZDI2OTYyZDUzYjI0NGE4YjJiNWVhOWE1NTM5ZDk3OTI1M2U0ZTk3ODFhNDE=
xNjE4NzI0YTcxYmNmOTA4ZjAxYmRkOGY4MzgxMDQ2N2U3NGM1YTcwYzFmODU2NzY5NTI2NWVhZT=
RhNGZlNmViNzlhNGIwOGJlMzkwNzIwNDlkNDkxMDRjY2Y3NGU2YTNiMjc0NjY5MzYyZDljM2UzM=
GMwOTFmMGYxZjQ3NjFkMDUzODNiYzI0ZjNjOWEzYTFjMDAzNTEzZDI1NDNkODU5OGU0NDQxNmNh=
ZTUxNzZlZjk5ZmNjZjk1NGNjZTZkODFmNzkxMWViMWNjNDhlNzllOGE4YWZjNjZkZTg4NjY0YmY=
yMzEyOTk3YTM2MDhjOWIxZWQ3ZmY4MjhhN2JjNjMxNjM2Yjc0YTMzMDkxZGE1N2QwNTA3MTQ4Nm=
FmN2RkYTdlMWJiODY5MjVlZDM2" style=3D"text-decoration:none;color:#212121;fon=
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
=3D"middle"><a href=3D"localhost:1333?u=3DNzEyZjI2NDA2MTYxZmMxYmIwYTgwMDU4Z=
TAwOWVkZTQ4Yzk2YWE2Zjg4Zjk4ZDhkYWQzZWZiOTE0Y2Y5YjY5NzNkMzRjYTdkNGVhNTI0MmEz=
NDM3ODEyZDI4NTViMzc4Zjg3NjIyNmM5ODE0NTYwZTllMmU1ZGMxZmY2MGY5M2RmNmExMWU1MGM=
2MTNmMjBkMTVmYTQzYTMyNmFmMzA1M2U1ZDg1NGI1YTAzMjc1MjI5NDc1ZGU0YjQ2ODdlODQ5ZW=
M4ODFjYThlZmJlMWMwYzk3MjY1NWQ1ZDE4ZTRmNjM5YTM5YTNjNzJhMTRkMjhiYzNhYzM2YjIwN=
mYwZjgyMmViM2RmYmQ5NjQ4MDJjNGI5OWMzNTBmMWVlZjYyNzUxY2NiZDdhZWYyMDdjZWJhNTBh=
MDg2NGY5MmVmYzBlZjBiN2NiMDVkOGNlOWFjY2Q3MzY5YWY1ZDI0NzYyODQwNWRhYzU3YjVjNDc=
xYmViZmNlN2JjY2MxOWZiOWFiYjA3OTlkMDk5NWVjYTAwYWFkOTc1ZjNkNmJmOWRlMGQ2YTlhMD=
U1ZjI2NjY3MzBkY2Y1NGQwODEwYjBjYmZkOTYzZGFiMTY2ZWExM2IwNzI2MmQzMmYyNDAyZDNjO=
WRkYzA2ZWE5YzFiOTgzZGZkNGY0Nzk3NzgwOTE3NzEyOWNmNzkwYjUwYzE0YzU3YzY0YmY1ZjE0=
YjcwM2Q4N2Q3ZmEyOWE4N2MyM2E4NTliMDZlNjUyMzA2YzQ5MjBjZTVlZjY1NDhmYzZlMzdiYzI=
3YjU0ODI3ZDcwMDY5MGFiYWExOTczMzk1M2E1MTlkZjE2NWZjNGNmMDYwYzAzNWRjNzc4YjdhMW=
RjYTJjMDk0OGE2MjRhMjcwODc2MWQzZmI0NGNiYmJkOWQwNmE5MjUxYmYyZmEzMDczYjk4NmFkO=
TYxOGEzNTJhMzc3N2FkNDdlNzc1MmRiY2UwYzgxM2U4YTJmNTc2MjlmOGJkMjczZDE3ZGQ2YjYz=
YWZhMTE1NjAwMDRhOGM5Zjk1Zjc1ZWMxMTkwN2NiOWQ5MjQ4N2E2YzBjMzZmOWZlY2U1MGQ0OTk=
wODc4ZGZjMjZjMGZlOTY5ZWVkZmYwYzZlZWYxNzNhMjc3Y2RkZGY2NjIzZTIyYTgxNWUxMDY2NT=
NhMGY2ZTNhYTA5NDViYzRhYTk5NWQzNDdhZWZjNzdjOWQ5OTBiY2QwOTViMGU5YzExOWViYTQ4M=
GE5ODZmZTM1MmU5MmM4NzYyMGYyOTQzYmIwZDcyZDQzYzNlMTEwNTE1MDFjYjI3ZDU=3D" styl=
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
90807107789003em_full_img"><a href=3D"localhost:1333?u=3DNTAwNThiOGMyYTAzZT=
JkYWI0MDljYjMwZjAxNzUzY2IzMDVhZTM2N2U3M2UyYTliMzNkZDhmMjNhYTM0YmViNWMxNGE4Z=
jc5MmQ2NzAxNjZlNGY5OTUxODk0ZTkzOWM5NTc2MzFiMmI2YzIyMDlhZWU2MmZjYzk4MjNlYzgy=
YzNjMTUyMWEyZWVhYzIwMDcxODRlNjI0YmUwNDEyODIyNDJlZTIzMWMzYTIwNjgxZmFlYzYyODk=
2OGVhY2ZkMzNmMDllYmI4ZjMyMThhZTljZTU0MzViYjY3MzcxYjk5ZmIwMDI5YjNmYjM5NGZmZG=
ViOGMwYzEyM2UzZTNlNmU3Y2NhZjc1NDBjZTdlZmVmNGZmZDRlODI1MzVhYjhhNWVhNDVmZjBkN=
jI2ZjIxZDUzM2UyODZmYTQ4N2M5MzcwMTc4NWIwZDgyMGM2YjM4NjQ1Nzc4NmE5ZmM0NTAyNTA0=
MTRmOTIyMjRmNmY3MDI1MGUxY2Y1YzljMDQ3NTdiYTZlYjA1YjExZDFiZDBlZDNjM2JmYjU0MmU=
3OTE0ZmZiYTQ4YWNhMWJhOWM1N2UyMzFmYmYyNThkZWJmMDllODUyYzU0NzhkNTZlNDBlMDlkOT=
M4ODA2ODQxNjk3MjUzOTk2YmZhYTg1ZmNkYzFlMTJmZjhkMmMwMTU0N2Q1OTNmZWU0NDNhMjY0O=
TgxYzFhYzk1NmUwMjEwMjg2YWU1YmEzN2M0NTYzYjMyNGQ1MzE2N2U2MzEyNmMyZjM5NDQzZDEy=
YWZiZWE4ZDZjZWRlYzE0MDUzNjIxY2M3Njg5ZDgyZWNhNjM0MTNhZDU0MDUxNTk1MzQwYzQ3ZjJ=
jYWY3NzkxYzBhODQwZjM2NTQxMmUzZGFiZWUwOGQ4NDkwMjY0YjRhYjBlOTY1NGYxOTMxNDQxZj=
E3MTE1MjkwNDEwZDE5ZDI5N2Q0YzcyYzI0MjAzODE4NGI5ZjU2ZDRhNmIzNzVkMjBiYjdhOTc3Y=
zIyMzU5ZDdlNzYwNjQ0OWUwMGNjZDVlN2MxMGFlNjVhZDUwMjBjODE2YjAyODMzNzI5OTM2Zjg3=
MmQ1YjBkOTRhMTA5ZDBkYjM3Yzk0MDhjNDllYWM1MTU4OGFlODg3MmYxNGYyZjZmN2UwMDJkYWM=
wODMwYWRmYjc3MjUzNjEzZDFlZmM4YzAyN2M1YzhhMjdmOWViYjU3MGU0MTE1YWUyMTNjYWYzZT=
YzOWQ2ZDYxNDM0ZDk3MTlkMmExNmI3NDU2MzFmZjEwYjVhN2QxNDU2OWNhZDY3ODAzOWYzMTI4N=
zQ0NDk=3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get=
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
=3D"localhost:1333?u=3DYTAyNWJiOTAyNTZiMWRiOGY3MDA4MzE2ZDIzODNhYmRlZGI4MzE2=
Nzg3ZjhjNGM5NTU5MjVhMDJiNTAwNGVlNTNjMzU4YWY0NDg4OTEwNmViZWRkNzJhYzUyMzg0ZGI=
4NjQyNTYxMzBjYWEwNTdiNDVmZWQ2MzBjMWQ0ODM2MjlmYTZjMDQ3Y2UzMmI1M2FhYWZlNDE2Mm=
IyMWE0Njc5MTFmNDczMzJiM2VmZTA5NGIyZTdmYzk4MjQzYzg3NjFkODU5Yzk4OGVjODQzNmRhZ=
DJmNzk2ZGUwNjQ1ODQxNjVjNTMyMTk0YTNiMTYwZmQ4NDdiYWFjMmUxZmI4N2Y4NDBhMzU5Nzlm=
NzI0NmFiOTBmM2RlMTc5ZDBlMWVjOGM0ZTExYmE3ZWZiNjA4NTM0MTVhODRmODEzYzQ1YzUwNmV=
lOGJkNWUwN2YxYzE1NmMyMzBkZDY3ZjcyOTJiNGYyOWI5YzNlZmNkYjJlMzEwYjllYmJkMmRlMD=
NhZGNlNmQyMGY2MjE1Y2YyODdiNTU5NGM0NzFjZWEyMDI4N2VjNDlmOTA2ODRmYTMyZWU5NmRlY=
WRkNmMyOWM2NmRiZmRhZmNhYmU5YzE4YTk1NWI0OGI2ZTkzNTc4ODMwN2NiNmYxN2ZkNDE4N2Yw=
OTM5NGY3OGI2MjUxZGNiYWY2ZDU1MWNhZTViMmRmNjlmZmQ4MzI0MTI5ZDA2NDMyNjE4M2M4Mzc=
zZGE2ODBiNWU3Y2IxOTk4MDgzYWM5NjAwZWNjODc3MzRjZjZlMTc2NDhmZmM4ZmZhODk2OGYwZj=
U5MTk4ZTYyYWVmNjNmZDc1OWMzNjZhZDA4MTA5NmQ5NDNkZDY0YWZlNDJiNGJlNTNmNDkwNTQwY=
WFmOWUzYTMwOGM5NTUyODAzYzUyMjE5YmI3NzY2YjhkZDIzMzIzNDc3ZjBiNTEzNTdkMzgzNmVk=
YjBmYzQwODRhOTAwYTEyZDQ2ODUxMTM1ZGI3MTRkYWVkOTU3NzI1ODRiYmFmMmI1MWFhMTJmZjQ=
2ZGI0YzhmYmE5NGQzY2ZjMjNhYzFkYjE5ZjUyNjMwNTdkZWMwMzExOWRiMzhhODI0MWNlOWE3MD=
I5OGNiZTVmNTNhY2EwMDc0NmVmNmQxOGUzMmMwMTUzOTMwZTRjNTFiZjc0MDA2N2NiZjFjNWNlN=
zc2N2NkM2VmMGY5YjNiMDFkZjJmOTNmNGZjMmNiYjc2YzcyNjQ4YjYwZmNlNTY3NDlkMTVjMWY5=
MjVkYzA3YTY2ZDhkMmY1ODEyNGI1Zjg1NGMyNWE5NWM3M2U=3D" style=3D"text-decoratio=
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
t Honey for mobile Safari <a href=3D"localhost:1333?u=3DNDIwNGQ2NDY4YTNiNzZ=
hZmQyOWMxYjI1MjA1MGM5ZjkyNDNlODIwYjM5MTdhMWNiMTljYzY5OTBlZDEzZDBiZjc1ODY4Ym=
RlNzQwOTVlNDU5MjcxYjY2ODNjMjUwMjUxZjk5OWU0YmI0MjFlNzY0ZjRiMjQ1ZjM2YTVlYjRjN=
TFmZGE0YWViMGFmNzM5ODBmNTYxM2NhYjU0MWQ2Mjc0ODA5MTZhZWY2MWQ3MDJmODYzZDYyM2Y5=
OGMzZDY1MmIzY2JiZTIwMmM1YjVlNGUwNmY2MDczMmU4MmQ3NWQ3NDliMGZlNjVkYmUyNmIwN2M=
xYzI0MDIzMmRkMmNjZmNmMTJlYzQ1MGEyMjE5ZGQzM2E0NGIwNmVhYzNiYWY3MDZkMmJmYWE5ZW=
Q1ODI4ZDM2YmNiN2EzYTgyYmM5YjlmMzYxNzQxNTMzMzRiNWI1MzgxM2VjNTlhMzgzMTkzY2JlM=
DYyZjAxYWE5MWE1NzU5M2M3ZjViMDg0ZWZjMTMyMDlhMzBmZjdjNGQyMjA3OTU2MWE4MjQzMTdi=
M2M3MzgwZjkyYTYwMjhlYzAzMjVhYWY4ZjBlY2E0ZTBmYmJhZGI4ZGZkMTkxOTNkY2ZlOTliNzd=
hOWEyZWI2Y2I5ZjgyMjk4MzczZWIyMzNmYjQwZjZlZjUwOGY5ODUyODFiMTc2YWM0ODVmZjBmMz=
QyMmUwODZhM2RhMzhhODMyMDBjNGE5MTlkOTNiN2I5N2FhOGM3N2JmNDUwYzk4ZDE0OGZmOTgzN=
2IzZWQ4YjNhNTcyMGExY2JiNzk4ODQ4MWExMTFlZTAyMTIyMjU2MTBiNzBmMGU4NTliMTU2ZDU5=
ODA3NjU0YzcyYTNhM2MyYTU5ZDBiMjlhNjI1NzhhMWQ4MDU5N2Q1MTMwZDYyZDU1YWQ4NWNlOGU=
yNTlmYTAwNGNjZWVlMDU5NDhhNzQwOTBhOGZlYjE3YmQzMWVhYzYxMDEyNjU5NzUyNTAyNmU5YW=
I5MWI5ZjE1MGQxYmJhNDRlNmFiN2VlYTU3NzEyMTYyNDUxYTBiOTNiY2E0MzZjOWM4ZDA1NWFjY=
TU1MGJlY2VlYjhkNjc1MTA3NDQ5YTQ1YjhjZGU0MjE2ZTE0OWQzYjU2MzcwMDdmOTFlOTEwYmU1=
NWMyODMwZmU4ZWYxOWRhM2E4NWFhOTMxOTI3NzQ2OTA1YjUwMTQ5ZjI2ZmVhYzk1NjZkMmZlOGE=
yMjk3MmQzOWNkYjQxYzUwMTJiOGQyOWNlZDM0YjUwNTkxNmJlYWNmN2E2NTQ2NGIzNTM2YmRjOT=
RmMzI=3D" style=3D"text-decoration:underline;color:#757575;font-family:Suis=
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
align=3D"top"><a href=3D"localhost:1333?u=3DZWYwODE1YzIwYjVlODFmMjM3YTg0MWU=
xODg1NzJiODZmOGVhY2Y1MTM2Y2IzZmZhZWJlMTRhOTkzMTA4MzFkOWY3OTFiOGQzNzQwNWEzOD=
hiNDRjNmI3NTJmNWJjNTg0ZDgwZDdlNDc5M2FlYWY5YmNlODY5YzU1YjVlYWY5ZTU2ZWZlY2I0Y=
2Y1NTEzNDA3OGRkNDUyNjE2ZGM1YjU1MTNiZmMzODI4ZTI2MzNkZDU2NTQ2NmVkNzcyOTljMTM0=
YmFmZmE5MjkyYzcxM2I0NjljMDAxNDU2MTI5MWY4MjYzNWEzNmM3YmFhOTYxZThhYjk2ZGM2ZDI=
wMmFhNGU1YWMzODdhNDkzNDBhYmQ1YzViOWMyOTRhNDBhZjY3NjczMTk1NmZjNmRiYTNiNWZhMT=
Y0MmEzOWNmYTY4NmNhMGQzNGQ2YTBkMjJhNjQ0YjFmNDZlNTc3ZmE3YWQ2ZGUzZTgzMTcxMTJjM=
DRkY2VlN2EzYjBlNDQ2YzMyODdjMmM4YWZmMzZlMDZkNDIwYzcxNmIwYWFlMTJjMjQxNTg1ZmMw=
ZjVlNjY5MTM2NjYyYjViMGE5NDdmYTQ0MjdiYzA4Zjk5ZTNiMjI0ODMzMzFhMDFiZjVjZTU5Y2J=
iNjU1NzNkYmUwZjM2MTZhNzI1NzQ0OTM5OWJhNWY5YjNmY2M3MDEyZWI0MTUyN2M4MzNjMzZiYW=
NhYzQzZjkzNzlkMWY2NDgyZmNmYzUyODk4ZTgxNmEwZGFiOThiYmE2NjRlNTJjY2NkN2NkYzY2N=
2JkZWRmNzljNWRhYjNmNjUwMDI0NjMzOTE1NTcyYjIyZjEzZTQzNzBmYzI1NjVlZDk4NGEyNTVj=
ZDE1ZjA0N2Y3ODI5MjQ5NzM5ZDBlY2Q5NjY3NmE3ZGVhMTlmODcyMzE2ZTFmYjRjZDJhOTg5YTQ=
4OWM5ZjY4NWM3Mjc5YzY1N2I3MjlmNTUxYWJlNGIxOTI4Yjg5NDY4NGM3MWMwNTRjMDQ0NTQ2Zj=
ExOTA4MTcwNDY1MWY2ZWNlNDJlMGMyZDlkMWZiNGRlMzllMTE2ZjlkNTM4ZWYxZjgzNGU0YzRjZ=
mE3MGViMDI0ZDVmMDQ1Njg3OTM0ODA5NjdmN2I2M2I2MmU3" style=3D"text-decoration:n=
one;color:#616161;display:block" target=3D"_blank">Explore</a></td> </tr> <=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D"hei=
ght:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table alig=
n=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444=
90807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><tr> =
<td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"height=
:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl=
,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center"=
 valign=3D"top"><a href=3D"localhost:1333?u=3DM2ZmYWYyMmNmNzhkMjVlNzM4Mjg2Y=
2QzMThjNTViMGJkNGFkYzFjNWFlMjIzZGZhY2I3MTE0NzkxMjAwMWU5YTRiMWMxYWM0Yjg3MGE2=
NGYyNTBkY2Q5MTM5M2ZjZjEzNmExYWFlMmFmYWY1NTgwMmVhNzFlZjQ5ZjczMWViMGYxYjViZTk=
wZDEzNGY2NGE5NDQ5ODE2YTkxZjhiOWI5MzFhNzJlMTM0YWMwMGJhODVlMGFlZjgyMDYzMmNkZm=
Y4MzJiZGIzYmVmNDg0MTQwNDlmYzcwMzgzOTc0MGJjMmU5MDMyNTBkZmFkYTQyZjUyOGMyZGU3Z=
TU4MWEwNWE3ZjkwNmI5MmI0ZTgxMGJlOWUzZGZjNThlZTBmMDU3YzM0MTlmYTg4YjhlNWEzODA2=
NDc1YTFjYTY4ZTRiZDZjMTE4MzBhZWJmNzIyOGZiMjE1MmEzMTU2YzM5YmYxZWVjMDViMTQ0OTA=
xZGE1ZGYyZjNkMzc3MDRjNjE0YzVhMDE5NzA1YzUwZmNjZWZhMGQ2YjJkZGNiMDQ4Njc4MjQ0MD=
FkYmFiNmFiM2RkYTI1MWNmYWZjYjUyODM3MTFmZTM0MDhkMTJhYWIxOWViOTNiOGE2ZWVlODRkY=
TY3YTA2OWE0NTA4NWFmMjA1ZDUyNjQ3OWU4ZTk0ZGQ0NjZhNjhjZTZjYjU4OGY1Zjc1MDY0MTY3=
MDE1MmE0YjA4YzM1Y2FkZDI1MjI0YjQ1ODg1YTMzYzE1YWQ4M2ZiNzIyN2VmNmY5MDc2ZDM0YzI=
3NmMwZmMwYTM0MDkwZjc5MDEyOTUyNTNkMzFhMzA0ZmY0MmFlZWVlZDU4MzAwOTRjYTUwYTYyYT=
ZkMTk2NmYwMjY2MjdkZTFmZWNhZjZmOTcxMDI5MWEzMTRiNTE2Y2E2ZTFlNjg3MmJiMGQ4ODk0Z=
TAwZDZlYjE4ZDQxZDdiY2Q4OTIzYjVlYTRjNjEzNjVlMzMxYWZlY2ZhNmY2ZGVlMmFjOTM3NWQy=
MjU2YzFiMWIyYTk0YWVhNDEzY2M5NDMwZTNiNWFiZGMzZTI3ZTBlMGY2ZTlmOGEwNTVkZTMwMWV=
kODU0ZDNkMzY3NmE3MmQ3YjJmZWQwMmFlNTNlNjhlMzk1MmEz" style=3D"text-decoration=
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
=3DMzRmZjEyNTQyZDA5NDA2YjQ4OGMyZWIwMjc1YjZkNjVjNjU5YTZkOGI4MjNkYmMxNzZlNjQ5=
ZGUyYWM2MjAxZDYzYThhZWIzMmY1ZDQzZGMwMTczYjQ0MjE1YjhjMDM2NjNjYjE2ZGUyZDVlNzQ=
4M2VkMzQyOWU2MWRmODIxZTQ5YzY5MjFjMTA4MWZlZWQ1ZTczY2ZiNWZhOTU2Zjc1MjBlNjhkYz=
Y5NzdlY2JmZTkxZjllMmJhZWQ2MjEwZTc0Zjk1NDIwNTBjMmU3OGI3MWMxZmFjMGNjNWY2YjJlZ=
TExZjQ5ODVlMjMwNTcwMjMyOTI2ZWI4ZDFiZmE2YWNlNTQ4Njc0Yjg0OTk4MjBmYWJjNzM5YjBj=
N2VmNTE0NDljZWEwMWU0OGE2YTY5ZjNjODE3OGVkNDAzMTA5ZjZlOWY0YjBkZDZmNzA0NTE2YjY=
1NGE0MmNjYjMyNDFhODU1YzEzNzQxODk2NGM3MGNhZjNlNzk3NjdkNGZhMTU1ZjJlOTU0OTcyZG=
M2ODQwNDFlNTMxZDJhYWEzOTY5MmIxZGQwMTU3YzQyZjMyYWQ4ODljM2M2ODI5MzBkNmQ1ZmFiZ=
GUzODg1YTBiNWFhZmUyMzEwMjk4ZDA5ZTBkMjI5MTFlOWMzZjQ4MTMwNmJkOWQ2ZDhmMDliMjM1=
YWU4YzMzZWY4MGM5NDQyMzVlMDg0ZWM0OTVkYzAxNGVlODk0OWVkMjgyMDU2MDMzZWE0NTJmNzc=
4ODJlNzVkMTFhMzNjZDk4ZmI2OGRhNTg1OGUyMmM3YWZkMTBmYjA4ZTQ3YjdlYmU0N2QxNzFmOT=
lmOTViYjYzYTMyNTQzMWI4Mzk5MjdiNTgxOTAzMGZiYTYyYmQyNzIwZDczZGMyYzU3ZGNhNGJiZ=
jUzYzczZjJkOWMzZGViMDcxNjRmMDhlZjliYjRiMjQzZGFmMzVlZjdlNzE3YThmY2JiNDI4ZTZi=
NTI1YTM4NDQ1ODJhNTRiZDQ0YWZmYTgzOWViMDE0ZTU3ZTVkMzIyYjNhOGZmMDBjYWQzOGU0MTF=
kMjdjNDI2NjdlMGM1ZTk1NjVmMzZmNjM3ZWRlN2ViMjRkODY5NWFlZGI2MDY1NmIwNmRmNjkyYT=
dhMDk2MDgwODUyMjI4YjljYmU2YTM3NDU0MzUxOGM5MDJiZmJlMTY0" style=3D"text-decor=
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
ZTA2M2U3NWQwMTZmMzlkNjgwNmYzZDZjMGEwNmEzMzQ1MWZjMGMzYjc1ODQzZmQyZTFjMjIyYTl=
kODFhMmY5ZmI5ZmIzYTE0OGIyY2M1MDYzMmU2YjY2YWM3YzI1MmFkYWQ0ZjRhNGRlOTVjYTkwYj=
Y0ZGIwMTM0YzhjZGY3ZjQ1OGJmZTllNmY0ZjA4Y2U0OWNhMjk0OWExOGFiOWM4MmRkNTZmNDk2Z=
WY5NmFhNTQ2MDYxNGQxNmRjMzkyN2U3ODc5MzQwZWQ3NTY1OGM3NWI5MDFjN2E0MWM3OTA0ZDAw=
MjJiNjRmNjUyZjU5M2FjNzlkZThkOWNhMzBlYjRjZGMwNmQ2ZTcwZTg0ZWZhNDQ4Yzc1ZTRkMTU=
xNzdlOGU3ZTRlMTc4OGEwZTc5YTA5MDMxMDA3Yjk0YzEzZDdhOGEwN2IxZmQ1YWJhNjM2YWZkM2=
E3ZDVlYzRkYTQwNjRmN2E3NjY1YTU3NTU2ZTg1YWY2YmE1NWZjYWE2YTJhMWVmNGQ1NjExN2EwY=
mEyNTdlMjM2YmE3NmE3ZGNiOGUwMzQ1NzhjNTNhZTEwZDA4YWVmYTdiNjViMTdkZDUxNjQwZjQ1=
NTI1MDM5Y2Y0ZmY0NTE3ZGZiZDc3OTkxNzVmNTNlOWMzM2JjMzRiYTQ5ODJlYjE4ZWVkZjVmZDN=
lNTIyOTlhMmE0ZDRlOWQxZDJmZjE1MmI0OTg1MzIyMTc0ZmFmNGI0MTUyOTM0MjIzMGI3YmVmYz=
UyNTVjODBkNzk4YjRmMTYyZWQ5NzYwMzVjYTI5NWU1NjExYmMwODZjZGMwMjZiOWFhMTFmZGI4O=
TFiNWJkYWU0Y2QzMTZlOGJiYmU0MDMwYjQ0ZThhYjg2OWY5MDZhNmE1MzcwNDgwZjdjNmMxZWFm=
ODE3ZmUyZGNkYmM0MjRiNmJmMzkxOWRlMjQ2YWNlMjU5NThkNDFlOTQ1ZTk3ZWU3OTFkODhkODF=
mNmE4Mzk3NDYwMjNjN2I1NDc3MWJjYTI5ZjIwZjdlNTcxMjFhZWE5OTAwMDcyMzJjODJiODY5NG=
Y0OWE5NWQyZTE4Y2VlZThkMzU1NDUxNDZkYzljYTkzZTRhNTRhNWM5MzM2YzhjNDZlMDRlMTAzZ=
jc0" style=3D"display:inline-block;margin-right:45px;height:24px" target=3D=
"_blank"> <img alt=3D"Facebook" src=3D"https://cdn.honey.io/images/email/we=
lcome/welcome-social-fb@2x.png" width=3D"24" style=3D"border:0!important;ou=
tline:none!important"/> </a> <a href=3D"localhost:1333?u=3DNmRmY2VlMDdjY2Y1=
MDk1Y2E2MjU1MWZmNDMxOTQ3ZDQwODY5N2JlNmRjOWRlNjEyYjczNGVlN2ViODc4NTdmYjhlZTY=
xZThiOTI5NDNjZjVkMmY3YzIwMGUxNjJiYzYwNGJjOTkyMmE1NmMzYjc3YTQzZDA3YWYzZGQyYm=
VkMjY2NjhmMzczNDQyYTQ1MjE0M2FmZGUzMGQyZjEwNzNhZTViMGE0NDM2OWQxYzRmMWU2MWEwZ=
GRhYzRjODVkOTZhMTBiNDljOGEzOTVmY2MxOGM4OWUzMzY1MDNkYTliMDAxZDkyM2UyOGZmNDBi=
MjNjYjMzZjU1NzRmNTU4OWI4YTQ1MDkwMTVmNzFmZjdmOWM2NjQyMTA3NDkxY2ViZDkzZDJlMjc=
xZTFjNDc4MmI0NzkzZDJhMTA2NjRiMTViZWFlMGQxMjY1ODk1NzhiMzZmMmJjYmYyYmQ1NDcyOT=
Y1NzgzNDA4NDQ4ZjE3MWEwNDJiNzBlNzg5NjEzNjcxYTkzZDBkMWViYzQxMjRiZDhjMmNjZjFlZ=
mU1NzY0MjNhZDI5ZjA1NjRkNjgzYzhlYzkyMWNlNmY1YmQ4ZGRlOTU2OTQzMzRmMDE2ZTIxZjNm=
NGJkMWYzNTU1MDhjMTZkYzM5YWY0ODhlYTcyOTJkMDMxZmNmYzZkY2JiNmZlMDk1NjQ0ODFjNGI=
xOWFmZDRkZmI1OGJiM2E1ZGUzZGIzNTc1NGM4YjExMGJlNzc4ZGYzNmU5MTNlMWZhMGFmN2FhMj=
FjY2E1MTQyZWY0Y2Q2MmJiOTMwMjg1YzUzODI5OTc2MTYyNmU3MDczNTdmOTU2M2UyYWZlZGMzM=
DI1ZDMzNDMwYTc0MzIzMDIyMWIxMTc0NTRjMDcwN2YwN2M2MWIwNTM0NjgwZWYxZDNlMWMzOWVm=
ZDM0M2RjMzVlY2E1YWE5YzMyNTNhMmY2Zjc2ZTEwOTViMzNhNmI4MmVkMTljNjVlYTVhMDlkODU=
2MTFiMDg2OGQyOTIwZGM5ZWZmNDlhNjRkMmE0OGIwMGExMzFlNzZjNjNhZDkzNTFmZjBhOGUzZm=
FkOTM2YjgyMGIxNGIzODBmMzg0MDI0MWUzOTBhYWRhMzVjOWFkOGJkYjdjZDc5" style=3D"di=
splay:inline-block;margin-right:45px;height:24px" target=3D"_blank"> <img a=
lt=3D"Instagram" src=3D"https://cdn.honey.io/images/email/welcome/welcome-s=
ocial-instagram@2x.png" width=3D"24" style=3D"border:0!important;outline:no=
ne!important"/> </a> <a href=3D"localhost:1333?u=3DZWJhYWQ5NmJhNjA5MDE3ODFk=
MGIzYTE0N2Y1YmFmYzBlYWQ0ZmJiM2MzMTNjOTg2MjJhNGM3OTc5ZjI2OTZiYTVjMDYyYjk3OTM=
3NWFiM2VmNTk3Nzk5Yjk3NjdjMTMyMmM1YzkyMTI0MmEwZjVmOWE4N2VkNTA3ZmZjNjhkODU4OW=
JkNDRmYWU2NjcyNDZiNDg4OWM0MTc0ZjI2YzA0Yjk1OGI1MzNlMDk2OGJjZTRhOGQ5YzhiODQyM=
WU3MjI1YTA1MDA1Y2ZkODc1MWFmYWNiYTFjYjIwNDU1NWRiZTc4OWZhYzBjYWFlNDk3NTBkYzQz=
MzE2ODA3Mzg4NTU0MmMxOGM1YzkzZGYxNDNjZWIwYTI1ODc0M2QzZTZmNTZkZjFlMzg2MWQ4NTE=
2NjJiM2FhM2RmZGFjYWU3NDBiNzc0MGY2NGM0NjUyYTUwNjNiOTA5YmRlYTcyMDJjZDk0ZWVmM2=
ExZDcxMzIwMjJlZDRiZjhlOTU1MjkwMGZkZGMzMWY4NTJlZTRjYjVmNmQ3ODU5YzNmNWNiNTI3Z=
jZhMzdiNGRkMDYyZjc5YjBiOWM4OTIwYjU0MWVmZTljYzlhZWE3MWFjYmIxMzc4YzBkODhkYTRl=
MTQ2NThhOWUzMGNjOGJmMjAxNzEzMTNlOWQzM2M4YzQ0YzAyNjRkMTUxNDJkOGFmYzVhNTY2Njg=
0MWU2MWE4NTgwNWIxM2E2NGM0NjkwOGNlNGY4OThlY2Q1MGQ2ZGZmYzA1YTFlNTM0NTI3NjE4Zj=
U1MzliYjVkOThmYzIyMDMwY2E5YjlmOTUxODc0YmY1ZDVjODA4ZTBhMTM3YzUzYmU3YjMwMjEzN=
DkxOWY0NTljYTJkMmQ0YTYzMDY3MTQxMGUzOWRmMGVjYzI4ZThiYzE5MTBiZGZkZjE3ZGQyYTZh=
ZTViYjQ4Yjg0ZTNmYzAwNGZiYmY2MjdjOGJkNjcwMGI1MzU1ODg0YTdkYmRlZDM1ZGNjMzg3N2F=
iZWE1OTA0YWZjMjEwMGYxYTMwMzQ2YjYxYTQwM2I2YjdmMTdmMTgyODRmZTNjZmFlZGM4YWZjNm=
Y1OTFmMDBlNTg1ZTgxNTg1MGRlZWJmMmFkYmFhNTgxYTlkZWIzOTY4" style=3D"display:in=
line-block;margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pi=
nterest" src=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pi=
nterest@2x.png" width=3D"24" style=3D"border:0!important;outline:none!impor=
tant"/> </a> <a href=3D"localhost:1333?u=3DNWMwNjEzOWI0OGY1NzFiZmEzNzY4YzE4=
NGI2MWY3ZWIwN2VlMmNkMjQyOGNhOTUyMzM1ZDRmZmMxMzllZDJlZDFjMmE0MTNmMmNkZjE1NTA=
yMTllMjZiOGY3MTJmODQxNDBjYTU2MjVmNzNjZjQ0ZTJjYTQ0MDczYWZiOGU0YTQ1NzE2Njc1M2=
ZkN2VkYmI2NDM3NWM4M2RmOGQzMjNiNDcyMGIwZDQ1ZGFkMDgyNTVjMWI0MDE1NjM4OTk2NDBkY=
TcyMmI5ZDJjMTQyZWQ1YWQ0YTMwMWQ0Nzg5NmRlNmUwNzYxM2ExNzNmMTBjZjhmYzBjMjAzMjNl=
NjMxZDljZjlkOGVmN2U1NTkwNjVmMDc5OTNlNjg1MmRiZTVkZDQxYTI4MTRlMjA5NDc4YTk1MjU=
xNGI5YTEwMTVlN2JjNjRkZDQzZGM0OTUzNGUyNWNkYzBmYjAzZDY4NDA3Yzk4ODU5Y2IyYTY2Zj=
IzYjZiZmNjNzM0OGYwNjY3NzkxOTRkOWE4YWNmZGEzYzNiMmRlNmNmNGViZGNjMzdmMWMyNzdlM=
TIwYTY0Y2YyMmIxZmYyNWMzMDcxZWZkZDhiOGQ0ZjA5MWIzMzE0Mjc2OGQwYmE3YTVjODc0OThk=
Mzg2NzBmNDg3OTc5ZmE0ZmEyMDRkZmI2MmY5MDgzYzc3NWU1YjI4NzM4YTFkNTFmYjdjMDU5NTl=
iOGZlNGNkNjdmOWY4ZTgyYTYzZDI5MjRlNGI2MzcwM2FjNjYzMWQ5MWE4ZTg1NmM3NmEzMTUwYT=
Q2M2FjNzJkOGU2MDU3NDE0ZTBhNWQ3M2JmNDE3NzExZmFiY2IwZjFkYjNlOTIzODVjYzU3Yzc5N=
TMyY2Y4NzYwNjVhNDNkM2VmNmUxZGMzMzViZjQ0NjJjOWM1MmUxNTUxMzVlM2ZiYmM2MjkxNWU3=
NTlkN2JmMzE2NzRmYmE2YTkxMzMxYzI2NWU2M2NiNmQ2N2U5NjdmNGVjNmYyYTVkZWM0NGExMjd=
hZjM4YTIxMzk0Y2I5ZWYyZjJjOWM4N2U0ODcwYjcwYzE3ZTYyNTMzNjA4NDNjMjY4ZWFjZDEwZD=
kxYzcyNDg3MzQ5YzUyNzVhYzRkYWI4NWUzMzIwZDhhZDk2" style=3D"display:inline-blo=
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
lhost:1333?u=3DMjQ2OWIxNjJlNzE3YWE3ZmUxYTBiOTc1YzRhN2MwNTkzMzdhNjE3MjUxOTYy=
M2QxNTg4MWMxZjI1OTQ0OWU1MjUzODc3MDc5Yzc2YjljY2QzMDgzYThmOWQwYTYxNGFjOGQ0ZTE=
1ZDQ0NmQwNTVhMGQ3NjAxN2I5ZTNkMmIzMTU1MWU3MzljMWZmOTc4NjY5YjA5NmUyN2RhYTRlZj=
dmMjg4M2I4MTgzNjE0Y2VkNzAwMTcxMDQxYjI4NDQ1NTMzZWM2Yjk3MzcwMTk1MmJlMTliZGFiN=
mI2ZDYyMjA5MDk5NmZkMTAzYzc1NmZiYTk3ZmIwNmJkNDU4YzEwOTVlMDQ2NTI3ZDQzMmMzYzkz=
MTI4MWE4YWYyNDRmOTMzYmIzOGI4MzFmZmNhNmNiYWFjMTE3YTNkNTNkNDc3YzBmYzE2OTA3NGR=
jYTRhOTQ5OWZiMmY3ZGUyYjE4ZTg5MDBiMTM0NTIzMmFlMzBlNmQ2ZDk3Y2I3NWE0YmI0ZjUyMz=
BlMTNjZmRhOGYxYjkyODQyMjY2ZWM=3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;fo=
nt-weight:500;line-height:16px" target=3D"_blank">View this email online</a=
>.<br/><br/> You are receiving this message based on your Honey account set=
tings.<br/>  <a href=3D"localhost:1333?u=3DOWRiM2I1MjcyZTdmM2I0ZGI3NDMzZDdi=
ZWJlZDcyNzZmODZjOTFhNjQ3NjI4OWU0ZGE1ZGU5NmZhM2E1NzFmZTAwYTNjMWQyOWJjYjRiOTZ=
mYTcwYWVjNzViM2QwYjY1Mjk4NDUwZWVkYjMzYjcyZmMzYWU2NDg1OGFjZjk2MWZjMWVjZjJhZT=
NkMmM5MzNlMDM5MjJmNjExMDVlMmQ4ZjM2MzZlMDY0OThlMDhhMzJlZjlkMzViZDMwMzY5NDAzN=
DM4OTJlMDVhMTg0NWU3YzM4MWRlYzg3MTZmMzI1OWJlY2NjOGRiYzAzODk0NDlkOGQyODlkOWJh=
OTI4MzIzNGIyNDU1MGM3YWUxYTMzYzExZjFmZTdmMzMxNWE3OThiNWJjZjgzYjM1NDczODA3ZmU=
1ZDU0ODg0NWIyOTY2OWIxYjE4MzVkMDEyMjc0MWM1MjQxNjM3MzA2ZjFkZjg5ZjE0YTQ4YzczZm=
Q2NDRmMjA5MzdjYjczMTgyYjNlZTU2OWIyYzAwY2Y1ZTA5NTE3MDgxMDc4MGI0Njg1NWVkMGFhN=
2I4ODFhOGJlMGQ5NzNjZWE4NDlhNWNhOWViYTdhMjRkZWQwMDUyNzMyMjhlMzJmNGEwNGUyZDg4=
OWQ2YTVkNDVmYzk1M2ZjMDRjNWUwOTZjNDU2MGMzNzk3MDFmMWZiYWY4MDM0NWUyMWE3ODc1YzR=
lZTc1NmU1ODlkYzc0ZDUxOTM2NWY3OGQyMTllMTQ1NTg1NTRmZDkyZTFhNDA0NzE3ZTY0YmE2NW=
U2N2NhZjZkMjUyMjBiNzNkNmY2NTBjNWVjMzViNzM5M2RlMzg5NTU0ZmRkOTFkNDM3MTk1NWNhM=
zhiYWVhYzMxNGJkOWY=3D" style=3D"text-decoration:underline;color:#757575;fon=
t-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;font-weight:5=
00" target=3D"_blank">Unsubscribe</a> or adjust your <a href=3D"localhost:1=
333?u=3DNTVjYWExODUzNGUxYTBkMGEyMTczZGRlZDQ0MzkwM2U3ZmU3MjYxOGE4MWRjZTFlY2M=
3MWNiZTlkZDkxYzIyNTJhMTk0Y2MyODc4ZmYzZTEwZjJlN2FmNzYxZWUxMjU1ZmExZWIwZGZmMD=
llZDEzZTQ1YjdhZGUyMTBhYjY0ZmUyNGU2ZmFmMWEzMTY1ZjhhZDVhMThkMTdkOWI3NjQyODk4O=
Dg1ZGMzOTc2NjAyZGQzYjM1ZjkwOGY3NTM3MTE0MjNhY2Q2MjhiYjQ3MjgxNGEyOTFjNjg4ZDk5=
NWM5MmMzMGFhMTQxMjBmN2RkZTA1MzYzNjU0YmNmYjhmNDc5OGM5MWUwMzk5ZmEzZjc3OWU2YzN=
mZmU5N2FiMjEzOGJjN2M3YjA1NzMzYjk4OWM3MjEzNmRhODFlZGNjZWJmYjM0OWY3NDM5NTliYz=
VkNjg5MjEwM2UwZTYxYWRjYTYzOThmNTViMzNjYzQ5YWI2NGIzZDQzY2I1MmNkOWViYjNlNjg0Z=
jJlMGQxMTY3NThjMTA5OTk4ODVlZWU5NGM0Yjg3YWE3NDgzYWYyMmY2ODg1ZTQzMmY0ZjVjYTdm=
NmFmNWM1YmFmMmJhZTI3ODdiNjVkOTc4NzljZjRjYjE2ZGVhYjczMWY4NzhmYmZlNzljMjVkZWF=
mNzY5MDgwMTBkZjg2NjE3ZDhiZTI4M2YzNWI2NjdmYmU2NGFlYWUyZGZjYTc5MzliMjg4NjY3OD=
U5ZTdmOWU5Mzg4YzIxYTBlODhmODIyZjg4NmM5MjMyZjhkMTVmMTdiODNjY2U5MjhmMzI5MWYwM=
2VkOTdjNDg4NTgzNmRiZGYxNjRhZjIxZDY0MzliODRiZDAwMGMwMDExYmM2ODI3MGQ3MTZhZDVm=
YWQxMTIzNTVjZTFhMWZjNmRiMzFmNWY2YzIzMWZjNWY0YWUwMWQ4N2FkYmY5OTU0Mjk3ZGQ0ZGJ=
kMGU0ZjBjNjI4ZGE1ZmQ0ZjNhYTZhMDAwODc2ZDMwMWVmODgxOGQxODhkM2Q4YWE2YzdmNzc5OT=
BkYzEwOTUwNDFkMjhmNjhmNDdlYmMyZTg1OGQyMjg0ZjdiNzgzN2Q1MDkxMmQxNjZlYjNkMzFmO=
DFlMTBiNDUzZmE0YzUzYzc1MmUzMjIwMzNjNTYwMmY0Y2VmZmFiYjdhNTk5" style=3D"text-=
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
