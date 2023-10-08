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

<div dir=3D"ltr">Hey, check this out<div><br></div><div><p style=3D"color:b=
lack;font-size:15px">=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=90<br a=
ria-hidden=3D"true">=E2=94=82=C2=A0<a href=3D"http://scpxth.xyz/" target=3D=
"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-style:inherit=
;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit;line-heig=
ht:inherit;font-family:inherit;font-size-adjust:inherit;font-kerning:inheri=
t;font-variant-alternates:inherit;font-variant-ligatures:inherit;font-varia=
nt-numeric:inherit;font-variant-east-asian:inherit;font-feature-settings:in=
herit;margin:0px;padding:0px;vertical-align:baseline">scpxth.xyz</a>=C2=A0=
=C2=A0=C2=A0 =E2=94=82<br aria-hidden=3D"true">=E2=94=94=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98<br aria-hidden=3D"true"=
>=E2=94=8C=E2=94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90<br aria-hidden=3D"true">=
=E2=94=82 research.cynet.online =E2=94=82<br aria-hidden=3D"true">=E2=94=82=
=C2=A0<a href=3D"http://slb.cynet.com/" target=3D"_blank" rel=3D"noopener n=
oreferrer" style=3D"border:0px;font-style:inherit;font-variant-caps:inherit=
;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inh=
erit;font-size-adjust:inherit;font-kerning:inherit;font-variant-alternates:=
inherit;font-variant-ligatures:inherit;font-variant-numeric:inherit;font-va=
riant-east-asian:inherit;font-feature-settings:inherit;margin:0px;padding:0=
px;vertical-align:baseline">slb.cynet.com</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hidden=3D"true">=E2=94=82=C2=A0<a href=
=3D"http://link.sbstck.com/" target=3D"_blank" rel=3D"noopener noreferrer" =
style=3D"border:0px;font-style:inherit;font-variant-caps:inherit;font-stret=
ch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;font-s=
ize-adjust:inherit;font-kerning:inherit;font-variant-alternates:inherit;fon=
t-variant-ligatures:inherit;font-variant-numeric:inherit;font-variant-east-=
asian:inherit;font-feature-settings:inherit;margin:0px;padding:0px;vertical=
-align:baseline">link.sbstck.com</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=E2=94=82<br aria-hidden=3D"true">=E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=98<br aria-hidden=3D"true">=E2=94=8C=E2=
=94=80dnsCache.host=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90<br aria-hid=
den=3D"true">=E2=94=82=C2=A0<a href=3D"http://act.qasimforcongress.org/" ta=
rget=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-style:=
inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit;li=
ne-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kerning=
:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;fon=
t-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-sett=
ings:inherit;margin:0px;padding:0px;vertical-align:baseline">act.qasimforco=
ngress.org</a>=C2=A0=E2=94=82</p><br class=3D"gmail-Apple-interchange-newli=
ne" style=3D"color:rgb(0,0,0)"><br class=3D"gmail-Apple-interchange-newline=
"><div><br></div><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">---------- Forwarded message ---------<br>From: <strong=
 class=3D"gmail_sendername" dir=3D"auto">Honey</strong> <span dir=3D"auto">=
&lt;<a href=3D"mailto:insiderdeals@my.joinhoney.com">insiderdeals@my.joinho=
ney.com</a>&gt;</span><br>Date: Wed, Oct 4, 2023 at 8:06=E2=80=AFPM<br>Subj=
ect: Big News from PayPal Honey!=E2=80=AF=F0=9F=93=A3<br>To:  &lt;<a href=
=3D"mailto:yurik1776@gmail.com">yurik1776@gmail.com</a>&gt;<br></div><br><b=
r><div class=3D"msg44490807107789003"><u></u>            <div class=3D"m_44=
490807107789003em_body" style=3D"margin:0px auto;padding:0px" bgcolor=3D"#f=
fffff">
<div style=3D"color:transparent;opacity:0;font-size:0px;border:0;max-height=
:1px;width:1px;margin:0px;padding:0px;border-width:0px!important;display:no=
ne!important;line-height:0px!important"><img border=3D"0" width=3D"1" heigh=
t=3D"1" src=3D"http://links1.joinhoney.com/q/A0ngOcZbzwzT_2ngbr1B5A~~/AAQ-S=
gA~/RgRnACCcPVcDc3BjQgplFJybHWWPImxMUhN5dXJpazE3NzZAZ21haWwuY29tWAQAAAAA" a=
lt=3D""></div>
<span style=3D"color:transparent;display:none;opacity:0;height:0;width:0;fo=
nt-size:0">Honey is on=E2=80=AFyour iPhone,=E2=80=AFgrab those sweet Honey =
savings=E2=80=AFat your convenience</span><img src=3D"https://links.joinhon=
ey.com/e/eo?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a3=
9a4bcf37bdbd64e7&amp;_e=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4=
RRZ7dureRSYWwGZ0RyPFEBqWiCMFBgvISu_H_-S82oV6A8pZaHkghJDwdPJspWqt3F6Fx9ZsfNA=
Y92yIxx6hLvWXUad_X3oPnxPBA%3D%3D" style=3D"border:0;width:1px;height:1px;bo=
rder-width:0px!important;display:none!important;line-height:0!important" wi=
dth=3D"1" height=3D"1"> <span style=3D"color:transparent;display:none;heigh=
t:0;max-height:0;max-width:0;opacity:0;overflow:hidden;width:0">  =CD=8F =
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
=3D"120"> <tbody><tr> <td align=3D"left" valign=3D"top"><a href=3D"https://=
links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D=
2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4E=
eDHDdrEoK8q4aAZ6WhOFBC55Ng4LpELLeKmOdDIhYFeZgIUUUV4oJPS4lMlxA98DL4Z1h6_hHQ0=
3PCqe4CwARWQOrCjJf-e4ghTvecosjHRquIbjCA33Ab60X0c9sMrbwx0E-iJr9atCuuCpRObftR=
aauIZOk7M2LJtsofL6eymdk9AaQxPaSnLvDETP0ZLJ9cvULGx6-8KCRBIEpi2SSEqOcGLNQSIuN=
PaOvM3Z6vD9pzEb7EflQ%3D%3D" style=3D"text-decoration:none" target=3D"_blank=
"><img alt=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/e=
mail/PayPal-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120p=
x" width=3D"120"></a></td> </tr> </tbody></table></td> <td align=3D"center"=
 valign=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cell=
spacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;=
padding-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font=
-size:1px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"=
right" style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size=
:14px;color:#212121;line-height:18px"><a href=3D"https://links.joinhoney.co=
m/u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a=
4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK_xoU71Qfe=
zzajlz0IVVxvqJWKAp7O0EJ_xLAvlJaPoXlVGYKUNqheOZkbtusiRaOonqx5Oy56wOmDritUQ-a=
RfhlE8bfNtJvJeaADS6nJRhplyTNKfhbSb_7hJyR1FsWDZ-JqgnvVy0Un9Jkik0hLFGj-YTuTO-=
7NGsiB-YsXIQiqYZuhaw04SJOfrHhYHzwGfMBXOLbENFNbQDA2YZAgrOiHEM3DqTn_hetiMUDeD=
hPkVTTvhBPkjV-6z_l3bUh4%3D" style=3D"text-decoration:none;color:#212121;fon=
t-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" border=3D"0" sr=
c=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/trophy_rewards_c=
ircle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"> PayPal Rewa=
rds Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"font-family:Su=
isseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#212121;line-heigh=
t:18px"><a href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404=
887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv=
0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK_xoU71Qfezzajlz0IVVxvqJWKAp7O0EJ_xLAvlJ=
aPoXlVGYKUNqheOZkbtusiRaOonqx5Oy56wOmDritUQ-aRfhlE8bfNtJvJeaADS6nJRhn-Po1W1=
wT-MU2OHZUJThEjI09U43PHfMxHvD_lKDYvfMiwcHohKXkRVNeZaxyjNan4oICrNvdliQJ36KgW=
NoWuN1VSI5H7ptRd7srwnUDTTYRyJl7WmUDteBUsBWw50UWlHfFtWvQ7l_SnRztAX9pk%3D" st=
yle=3D"text-decoration:none;color:#212121;font-weight:bold" target=3D"_blan=
k">366 points</a></td> </tr> </tbody></table> </td> </tr> </tbody></table><=
/td> </tr> <tr> <td height=3D"10" style=3D"font-size:1px;line-height:1px;he=
ight:10px">=C2=A0</td> </tr> </tbody></table></td> </tr> </tbody></table></=
td> </tr> </tbody></table></td> </tr> </tbody></table>  <table cellpadding=
=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;border:0px"=
> <tbody><tr> <td> <table bgcolor=3D"#003381" border=3D"0" cellpadding=3D"0=
" cellspacing=3D"0" class=3D"m_44490807107789003em_full_wrap" width=3D"100%=
"> <tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"center" =
border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444908071077890=
03em_main_table" style=3D"width:600px;table-layout:fixed" width=3D"600"> <t=
body><tr> <td align=3D"center" bgcolor=3D"#003381" class=3D"m_4449080710778=
9003em_aside15" style=3D"padding:0px 20px" valign=3D"top"><table align=3D"c=
enter" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" width=3D"100%"> <tb=
ody><tr> <td class=3D"m_44490807107789003em_h20" height=3D"40" style=3D"fon=
t-size:1px;line-height:1px;height:40px">=C2=A0</td> </tr> <tr> <td align=3D=
"center" class=3D"m_44490807107789003em_defaultlink m_44490807107789003mobi=
le-font-size" style=3D"font-family:Pangea,Eina03,BlinkMacSystemFont,Segoe U=
I,Roboto,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe =
UI Symbol;font-size:50px;line-height:54px;color:#ffffff;font-weight:500;let=
ter-spacing:0px" valign=3D"top">You asked for it: PayPal Honey goes mobile.=
 </td> </tr> <tr> <td class=3D"m_44490807107789003em_hide" height=3D"20" st=
yle=3D"font-size:1px;line-height:1px;height:20px">=C2=A0</td> </tr> </tbody=
></table></td> </tr> </tbody></table></td> </tr> <tr> <td align=3D"center" =
valign=3D"top"><table align=3D"center" border=3D"0" cellpadding=3D"0" cells=
pacing=3D"0" class=3D"m_44490807107789003em_main_table" style=3D"width:600p=
x;table-layout:fixed" width=3D"600"> <tbody><tr> <td align=3D"center" bgcol=
or=3D"#003381" class=3D"m_44490807107789003em_asideall" style=3D"padding:0p=
x 80px" valign=3D"top"><table align=3D"center" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td align=3D"center" class=
=3D"m_44490807107789003em_defaultlink" style=3D"font-family:SuisseIntl,Helv=
etica,Arial,sans-serif;font-size:16px;line-height:24px;color:#ffffff" valig=
n=3D"top">Honey delivers again. Add Honey to your iPhone and save on the go=
 while you=E2=80=99re shopping. </td> </tr> <tr> <td class=3D"m_44490807107=
789003em_h20" height=3D"20" style=3D"font-size:1px;line-height:1px;height:2=
0px">=C2=A0</td> </tr> <tr align=3D"center"> <td align=3D"center"><table al=
ign=3D"center" width=3D"100%" border=3D"0" cellspacing=3D"0" cellpadding=3D=
"0"> <tbody><tr> <td><table class=3D"m_44490807107789003honey-button" align=
=3D"center" border=3D"0" cellspacing=3D"0" cellpadding=3D"0"> <tbody><tr> <=
td align=3D"center" class=3D"m_44490807107789003em_defaultlink" style=3D"bo=
rder-radius:3px" bgcolor=3D"#F26C25" valign=3D"middle"><a href=3D"https://l=
inks.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2=
d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL1Y=
WT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsxoh=
T_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc545Z=
kqSSOMJreTdjV_Azz4391qeOZb5z9GC6QromIgry30WR5BroD4OB32KRGhND2D_1hemH8jJ4u5G=
SZ-dV-E-RAAraZl_oSFkp3FYXttIuP2Dx5aR3I0TzSskj4KgYUH0mOne21r6ffxOtMfqur3Rh5W=
vH3Wx98w%3D%3D" style=3D"font-size:17px;font-family:Helvetica,Arial,sans-se=
rif;color:#ffffff;text-decoration:none;text-decoration:none;border-radius:3=
px;padding:15px 45px;border:1px solid #f26c25;display:inline-block" target=
=3D"_blank"><span class=3D"m_44490807107789003hide-desktop" style=3D"displa=
y:none">Get Honey on mobile</span><span class=3D"m_44490807107789003hide-mo=
bile" style=3D"display:block">Learn More</span></a></td> </tr> </tbody></ta=
ble></td> </tr> </tbody></table></td> </tr> </tbody></table></td> </tr> </t=
body></table></td> </tr> <tr> <td align=3D"center" valign=3D"top"><table al=
ign=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_=
44490807107789003em_main_table" style=3D"width:600px" width=3D"600"> <tbody=
><tr> <td class=3D"m_44490807107789003em_hide" height=3D"20" style=3D"font-=
size:1px;line-height:1px;height:20px">=C2=A0</td> </tr> <tr> <td align=3D"c=
enter" class=3D"m_44490807107789003em_full_img"><a href=3D"https://links.jo=
inhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f8=
2c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-H0rkL1YWT1X1AQ=
65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca8jCsxohT_MNhXg=
2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP3nc545ZkqSSOMJ=
rolBi0p-vHjo44n3Pbo5YCFeR6cEJOqvjo3YYpjhD9WeJVIkTSw_R2XFDeUpEmuMywWVbrrxMNw=
mYovastYCDY-gDY66kH2x4mA5qWA85fwwIeIWMM37nMTv0Q2_ZEn_WR3Z3aHEPcRwlgiur0BCnx=
g%3D%3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get H=
oney" src=3D"https://cdn.joinhoney.com/images/email/mobile/ios-mobile-ext/M=
SE-blue.gif" style=3D"width:600px;padding:0px;text-align:center;display:blo=
ck;line-height:50%;border:0!important;outline:none!important" width=3D"600"=
></a></td> </tr> </tbody></table></td> </tr> </tbody></table></td> </tr> </=
tbody></table> <table bgcolor=3D"#EEEEEE" border=3D"0" cellpadding=3D"0" ce=
llspacing=3D"0" class=3D"m_44490807107789003em_full_wrap" width=3D"100%"> <=
tbody><tr> <td align=3D"center" valign=3D"top"><table align=3D"center" bord=
er=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em=
_main_table" style=3D"width:600px" width=3D"600"> <tbody><tr> <td class=3D"=
m_44490807107789003em_h20" height=3D"20" style=3D"font-size:1px;line-height=
:1px;height:20px">=C2=A0</td> </tr> <tr> <td align=3D"center"><a href=3D"ht=
tps://links.joinhoney.com/a/click?_t=3D70657193eb7a404887947be80fb10777&amp=
;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70AZyU5-=
H0rkL1YWT1X1AQ65VcWvrKn1dSaFG-80LjDNibnFlMS9gHBdVYRlZ9nUSblw0bmLdV79S_74aca=
8jCsxohT_MNhXg2gtFBbrirXsXw7gVmyPgp7wIHFqggqzVCp0NxuIAsrNCTRJ9McVcnKKh32wBP=
3nc545ZkqSSOMJrRnKZD3ge8UhUMuOcXpUlg8i3C-k0vH_RsQwHuDwbvx1XX7g0MuE0ZDek0jr6=
kWyUenEGFwH-t3-g4cMgozYuGUNqmSFnuk57kCWtuJjCb64c8vdQmEiAau6Y33YO18XKLboDerj=
tmo5Eqe3lrPcfDQ%3D%3D" style=3D"text-decoration:none" target=3D"_blank"><im=
g alt=3D"App Store" src=3D"https://cdn.joinhoney.com/images/email/mobile/io=
s-mobile-ext/app_store.png" style=3D"width:180px;padding:0px;text-align:cen=
ter;display:block;line-height:50%;border:0!important;outline:none!important=
" width=3D"180"></a></td> </tr> </tbody></table></td> </tr> <tr> <td align=
=3D"center" valign=3D"top"> <table align=3D"center" border=3D"0" cellpaddin=
g=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_main_table" style=
=3D"width:600px" width=3D"600"> <tbody><tr> <td align=3D"center" style=3D"p=
adding:0px 10px" valign=3D"top"><table align=3D"center" border=3D"0" cellpa=
dding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td height=3D"10"=
 style=3D"font-size:1px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr>=
 <td align=3D"center" class=3D"m_44490807107789003em_defaultlink m_44490807=
107789003em_center" style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-se=
rif;font-size:12px;line-height:16px;color:#757575;text-align:center" valign=
=3D"top">The Apple logo is a registered trademark of Apple Inc. </td> </tr>=
 <tr> <td height=3D"10" style=3D"font-size:1px;line-height:1px;height:10px"=
>=C2=A0</td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003em_center" style=3D"font-family:SuisseIntl,=
Helvetica,Arial,sans-serif;font-size:17px;line-height:24px;color:#757575;te=
xt-align:center" valign=3D"top">Learn more about Honey for mobile Safari <a=
 href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80=
fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3=
_SN70HrF4IxD7HvYGdin44cRPngqBnm0CK24I9EtGUYKzAuP91vrWRTTCcXPyj_DVy0y4oNJvUU=
Pfbd-sTHsZge6YaXzlNEI0Z6O-PfNcSt0MvdlekGkM_4oPug2xKmEVddKliuzRNX8H7hpXsN5dp=
fH0FqFLy3lbWOabMtW1kUoibwFKwo-T_JoNVKU4ta2VWEItXz5WphDJw1aJbGBi3_-LO1aDmEjF=
gOqYpe4oreXLOAuTyv2OVdXBlOe83raIiEAcpmQUVjyL2nUxWk7x8mqhqKkuu5AHKfXxBXkbrdK=
aiuCohRh-awswcC3FfO09j0iOQ%3D%3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:17px;li=
ne-height:24px" target=3D"_blank">here</a>. </td> </tr> <tr> <td class=3D"m=
_44490807107789003em_h20" height=3D"20" style=3D"font-size:1px;line-height:=
1px;height:20px">=C2=A0</td> </tr><tr> <td height=3D"1" style=3D"height:1px=
;background-color:#bdbdbd"></td> </tr> <tr> <td class=3D"m_4449080710778900=
3em_h20" height=3D"20" style=3D"font-size:1px;line-height:1px;height:20px">=
=C2=A0</td> </tr> </tbody></table></td> </tr> </tbody></table></td></tr></t=
body></table>  <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" st=
yle=3D"min-width:100%"> <tbody><tr> <td> <table bgcolor=3D"#eeeeee" border=
=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_f=
ull_wrap" width=3D"100%"> <tbody><tr> <td align=3D"center" valign=3D"top"> =
<table align=3D"center" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" cl=
ass=3D"m_44490807107789003em_main_table" style=3D"width:600px" width=3D"600=
"> <tbody><tr> <td height=3D"15" style=3D"font-size:1px;line-height:1px;hei=
ght:15px" class=3D"m_44490807107789003em_hide">=C2=A0</td> </tr>   <tr> <td=
 bgcolor=3D"#eeeeee" class=3D"m_44490807107789003em_asideall" style=3D"padd=
ing:15px 10px 0px" valign=3D"top"><table align=3D"center" border=3D"0" cell=
padding=3D"0" cellspacing=3D"0" width=3D"100%"> <tbody><tr> <td valign=3D"t=
op"><table align=3D"left" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" =
class=3D"m_44490807107789003em_wrapper" style=3D"width:380px" width=3D"380"=
> <tbody><tr> <td valign=3D"top"><table align=3D"left" border=3D"0" cellpad=
ding=3D"0" cellspacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=
=3D"width:188px" width=3D"188"> <tbody><tr> <td align=3D"center" class=3D"m=
_44490807107789003em_defaultlink m_44490807107789003footer-nav" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:16px;color:#61616=
1;text-align:center" valign=3D"top"><a href=3D"https://links.joinhoney.com/=
u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a4b=
cf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK9DamdwWRpR2=
gSmHh0zA99ijpIcFEfG8c4Q6p0JoHy1HpexGpGG6lRcC1qMjlgfxKrB3thFjB4w-cPg4WNqxMjS=
MF0L39NnNQ2L3psxQ5Dy5W479ZIgoUlHUKvL7TwJnURtlOT9nlUSNXK1S9HVFxFd9RzCKMh-AX9=
pp7akAwq6qfMGSIqtSzZoNvoHzPAszvlLGrK_HkdxptjSKX3MDId8u45qiGIx4re2qRfrOwG6ow=
%3D%3D" style=3D"text-decoration:none;color:#616161;display:block" target=
=3D"_blank">Explore</a></td> </tr> <tr> <td class=3D"m_44490807107789003hid=
e-desktop" height=3D"1" style=3D"height:1px;background-color:#bdbdbd"></td>=
 </tr> </tbody></table>  <table align=3D"right" border=3D"0" cellpadding=3D=
"0" cellspacing=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"widt=
h:188px" width=3D"188"> <tbody><tr> <td class=3D"m_44490807107789003hide-de=
sktop" height=3D"15" style=3D"height:15px"></td> </tr> <tr> <td align=3D"ce=
nter" class=3D"m_44490807107789003em_defaultlink m_44490807107789003footer-=
nav" style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:1=
6px;color:#616161;text-align:center" valign=3D"top"><a href=3D"https://link=
s.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10777&amp;_m=3D2d45=
b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHD=
drEoK8Udk5OI6QXB2uxgYKgB08AYCjG_hQxE5Fdes8WLh2JcH2BjL30Ui3Ruv7JCAINcDw5rOW5=
FvFw7kR81Hu9el1yuHInI1_88p-w3cT9j0Ohk16TtT7KJjl73BuGpStpImKZmaG6Iwm-EJLDmR6=
izTG0Bk91O7TOFOkWel750rfFc5KVrITyUlH-hRrWV4Z9wiTQq3fYtH00bY9SvjqK6zWxJ1EG9q=
9zn6_kYl6K-aGqVA%3D%3D" style=3D"text-decoration:none;color:#616161;display=
:block" target=3D"_blank">Droplist</a></td> </tr> </tbody></table></td> </t=
r> <tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D=
"height:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table =
align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m=
_44490807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"he=
ight:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_444908071077890=
03em_defaultlink m_44490807107789003footer-nav" style=3D"font-family:Suisse=
Intl,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:cen=
ter" valign=3D"top"><a href=3D"https://links.joinhoney.com/u/click?_t=3D706=
57193eb7a404887947be80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp=
;_e=3Dl_b6jv0n8rgcOuw3_SN70Fv_7Dx7weD4EeDHDdrEoK-gEAIy5Ed17a_e_7MDOJFaL7VeL=
voBwir6lAUU0aeryhWEnwM_Tu0fpeYo-nE-WC9UDnYynqqvg-ElbwQI3swf8AAVXx9W5gT7hjuY=
Z6uvQGIEov3LrSWibvF25hkqixzuBOPGmZrrqzRJQ1mbP7LRTom9yCoUxsV3NJW4XIn_1FRKeES=
IbzywbtoS8OtnmLLtcDDszehsk2rk4uF6_nW-VZl8PIPKydbnWhquNlnWnHcKM7DOVqZPX-3T26=
oZbkM%3D" style=3D"text-decoration:none;color:#616161;display:block" target=
=3D"_blank">Rewards</a></td> </tr> <tr> <td class=3D"m_44490807107789003hid=
e-desktop" height=3D"1" style=3D"height:1px;background-color:#bdbdbd"></td>=
 </tr> </tbody></table></td> </tr> </tbody></table></td> </tr>   </tbody></=
table></td> </tr> </tbody></table> </td> </tr> </tbody></table>  <table cel=
lpadding=3D"0" cellspacing=3D"0" width=3D"100%" style=3D"min-width:100%;bor=
der:10px solid #eeeeee"> <tbody><tr> <td><table cellpadding=3D"0" cellspaci=
ng=3D"0" width=3D"100%" style=3D"background-color:#eeeeee"> <tbody><tr> <td=
 height=3D"40" style=3D"font-size:1px;line-height:1px;height:40px" class=3D=
"m_44490807107789003em_h20">=C2=A0</td> </tr> <tr> <td align=3D"center"> <a=
 href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80=
fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3=
_SN70OTUD-PUbWul4mnWSepyWwn1Mo5BAzp8Z9J-T736mVlKRWLFtZDyIBo48Z8OkYPhnfntXnn=
jrPuTLjW9dkzxASxdWUcLidto33CW2AH52HQgDn-OeSIltQ0iOu1W3ZP4ytBWK0_ww4n4S9iQ1o=
cGEM2GR2yfpqjVBPdDtLPpxHDimiKn-qDZNj22Yk2VLeqCVc9CjoYiUeZQnwVTRKPv7R0y3D2KE=
_0qn7qEtmwjMJO9ezONms7s4pJjyHQLF5Y0HQ%3D%3D" style=3D"display:inline-block;=
margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Facebook" src=
=3D"https://cdn.honey.io/images/email/welcome/welcome-social-fb@2x.png" wid=
th=3D"24" style=3D"border:0!important;outline:none!important"> </a> <a href=
=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb107=
77&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN70=
CjkDoxg64ZorltUBV6xSXEWNYrrMpVlPODrlkurZN3YAE-sY0nPF8-d8FEfOiy21YJP-24AgbIW=
HjlxadLBvXSOJOgU0Tbu7NuWIIHSU1Ep5YUd2mwaPl0YTqLElVakF408K12mk9xxmcgrY2SQP3t=
OB7OLNchne5VRboyG8Z3i1gzoit-o127Q2_jBU8gPs8jlwas7jjhpqtcx5Gz7PaAipinLPny-ZF=
LjwPp2HiupRyte-RstmRqWc5ukO3hGkg%3D%3D" style=3D"display:inline-block;margi=
n-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Instagram" src=3D"=
https://cdn.honey.io/images/email/welcome/welcome-social-instagram@2x.png" =
width=3D"24" style=3D"border:0!important;outline:none!important"> </a> <a h=
ref=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb=
10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_S=
N70BN2Un3LodsGbka_iV3cygrhIZy022pbjuWw_KqZzy-tu_4oCum5j5CV_56v8-yZUYpnBVTTM=
z9M73p8J5k2H47aoZO7MKmmqlQGdJJ7MprleUm4Y47iZjPqAGmXz3TKzH9VXUNNOnkuR6PsiSDW=
1vPPkQlTQRZZsPGuDCRxlRxaGJyLHVNGRoZgyZpix4WJq-T8vvoJix0UwrN-Edy8YLoJLLTZ8Sm=
asTCePqvPFcv09N6e1u7-GQLEDDNrfo5rFA%3D%3D" style=3D"display:inline-block;ma=
rgin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pinterest" src=
=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pinterest@2x.p=
ng" width=3D"24" style=3D"border:0!important;outline:none!important"> </a> =
<a href=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be=
80fb10777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOu=
w3_SN70LSuLL5qFAtAl2ZvHJSEqBhdT1MQfEi9HtxXYhSVtpVhZ0FeJtI-95EP7IE36Ty-6x7HW=
ggtuhFruNB1u2UeXO7Fsqzs0e9H5B51VYwy6Ud4ZKG8cOK1lmOWRh9HnoQpr-TNtNcz3lBFtgfh=
NcMaT1nxsHi6h6rTdXqdiDsJmhuZX-Q4n7EgwuIGwnHJJd9cdSsSuzLrBn3fuoVQ89yDO5lKIuD=
_cgxJZcBIwFTb9luQQUim0XbplKU6XuGs9MrfRg%3D%3D" style=3D"display:inline-bloc=
k;height:24px" target=3D"_blank"> <img alt=3D"Twitter" src=3D"https://cdn.h=
oney.io/images/email/welcome/welcome-social-twitter@2x.png" width=3D"24" st=
yle=3D"border:0!important;outline:none!important"> </a> </td> </tr> <tr> <t=
d height=3D"40" style=3D"font-size:1px;line-height:1px;height:40px" class=
=3D"m_44490807107789003em_h20">=C2=A0</td> </tr> </tbody></table> </td> </t=
r> </tbody></table>   <table cellpadding=3D"0" cellspacing=3D"0" width=3D"1=
00%" style=3D"min-width:100%"> <tbody><tr> <td height=3D"40" style=3D"font-=
size:1px;line-height:1px;height:40px" class=3D"m_44490807107789003em_h20">=
=C2=A0</td> </tr> <tr> <td>   <table cellpadding=3D"0" cellspacing=3D"0" wi=
dth=3D"100%" style=3D"margin:0 auto;max-width:600px"> <tbody><tr> <td width=
=3D"8" style=3D"min-width:8px;width:8px"></td> <td> <table cellpadding=3D"0=
" cellspacing=3D"0" width=3D"100%">  <tbody><tr> <td style=3D"vertical-alig=
n:top"> <div style=3D"color:#757575;font-family:SuisseIntl,Helvetica,Arial,=
sans-serif;font-size:11px;font-weight:500;line-height:16px"><a href=3D"http=
s://links.joinhoney.com/e/evib?_t=3D70657193eb7a404887947be80fb10777&amp;_m=
=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzj=
NHGL6_yBG4twEa7nsAhyynBoZAvto1_VJV" style=3D"text-decoration:underline;colo=
r:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;=
font-weight:500;line-height:16px" target=3D"_blank">View this email online<=
/a>.<br><br> You are receiving this message based on your Honey account set=
tings.<br>  <a href=3D"https://links.joinhoney.com/e/encryptedUnsubscribe?_=
r=3D70657193eb7a404887947be80fb10777&amp;_s=3D2d45b0f82c6841a39a4bcf37bdbd6=
4e7&amp;_t=3DPQFjEIYh9v9Lo6dEE7nlViMJvmsjzjNHGL6_yBG4twG5K1c_4RRZ7dureRSYWw=
GZ0RyPFEBqWiCMFBgvISu_H21jEiuXGrDbw0z1eENoNsEIWOlNHHM6WW5Rbp2LQKFPde3UwVUvj=
ZNt0TpSj8OAJQpBOvSG4fyH7DpyoyiFwp8%3D" style=3D"text-decoration:underline;c=
olor:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11=
px;font-weight:500" target=3D"_blank">Unsubscribe</a> or adjust your <a hre=
f=3D"https://links.joinhoney.com/u/click?_t=3D70657193eb7a404887947be80fb10=
777&amp;_m=3D2d45b0f82c6841a39a4bcf37bdbd64e7&amp;_e=3Dl_b6jv0n8rgcOuw3_SN7=
0Fv_7Dx7weD4EeDHDdrEoK-vtKMB13iGzp3kf3kFFhPX0CDhelueiYwJVGCACrLGr5WaX68LszT=
z9o_XSQkC5A3-S2n0HiBv_4M6tSsLK1U23HzxVWI5-IGHWabmcvWfKLIKZl-JFZP_nsUwO-pq1x=
q3s81Klvc3uaiNiVLPXyt-V0a9YRzrraW5QmmdzSGV5ML_puh5BLbPgw_YfsS0zBj8iE2qVTL-W=
5DXuJ2qi4IIIljSPWngL6JJeIKWcd_T4tj5ZiMl6HumKi-oY09yi0M%3D" style=3D"text-de=
coration:underline;color:#757575;font-family:SuisseIntl,Helvetica,Arial,san=
s-serif;font-size:11px;font-weight:500" target=3D"_blank">email preferences=
</a>.<br><br> </div> </td> </tr>  <tr> <td style=3D"vertical-align:top"> <d=
iv style=3D"color:#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif=
;font-size:11px;font-weight:500;line-height:16px"> Copyright =C2=A9 2023 Ho=
ney Science LLC (a PayPal company)<br> All rights reserved. 963 E. 4th Stre=
et, Los Angeles, CA 90013<br><br> <span style=3D"font-size:8px;font-weight:=
500"> CID: 4570808_10.04.2023 </span> </div> </td> </tr> <tr height=3D"64" =
style=3D"height:64px"></tr> </tbody></table> </td> <td width=3D"8" style=3D=
"min-width:8px;width:8px"></td> </tr> </tbody></table>   </td> </tr> </tbod=
y></table> </td> </tr> </tbody></table></td> </tr> </tbody></table>=20
<img border=3D"0" width=3D"1" height=3D"1" alt=3D"" src=3D"http://links1.jo=
inhoney.com/q/E0G5IG3UAwCHCqCfNy7cAg~~/AAQ-SgA~/RgRnACCcPlcDc3BjQgplFJybHWW=
PImxMUhN5dXJpazE3NzZAZ21haWwuY29tWAQAAAAA">
</div> </div></div></div></div></div>

--00000000000087e04d060734e8e1--
