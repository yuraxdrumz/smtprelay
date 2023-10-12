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
aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DYTgzYjc3=
YTYyZTUzYjFiOGJhYzQ0Mjc3ZWVjODIxN2YyNWRmZjA0YTkzN2EwMmY3ZjM3ZWU1ODcyNWFkNzF=
hN2M4OTUxNjkyODhmZTJhODcwNjZiMzg3OTU3Zjc=3D" target=3D"_blank" rel=3D"noope=
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
lhost:1333?u=3DZGNjMTc0N2QxMTY4MzRhOWFkZTk0NDk4NjhkMDFkOWNjZDgyZWY5ZjQ3Yjg3=
NzViMzc1OTM5MjBiZTA2YTI4ODU1YzVmYTE2ZjAyYzFmM2JlZmFlOGZlY2M0YWE2NDM0YmU=3D"=
 target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-sty=
le:inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kern=
ing:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-s=
ettings:inherit;margin:0px;padding:0px;vertical-align:baseline">slb.cynet.c=
om</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hi=
dden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DM2ZiOGNlYWZlMDc=
0YzY3Nzc4ZDc2MDg1Y2NjMzU0N2YyNDI5NTUwYmEwYmMxM2IyYzhiNDQ5Mjk4Nzk1YWVjMGQ3NT=
g4ZTMxMGZhYzFmODY4N2EyNzA3ZjMwYjk2NDZkYTQ1ODBm" target=3D"_blank" rel=3D"no=
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
DE5YzExNjRiMjRmN2FmNDAwMTdmMDJiN2E3N2M3YWFmZjUyMDZhM2U5MjNlNTQ0NTA1ZWMxYTlk=
Y2Y0ODFlNTY3NGI0NGZkNjU2OTk3NjRmZWY2NzhmYTZhMDU5OTk5ZTY3ZWQ5OGE3Y2Y1YmQyY2I=
2NDYzYzFh" target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0p=
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
t:1333?u=3DMWJkNGYwZDJiZTgwNDIxOWIzNzI0YTU2MGVmOGNmMDJlNGI1OTEzZDU5YjBlOWQy=
MzJiNWUwYzM0NzA3YTMxN2EyYjBiZDRkMzI4MzM2MTE3ODAwNDIxYWFjM2ExYjk1MGZkZDIxNmQ=
3ZmMzNmU5MDgzM2ZiZmI3Nzc4ZDgzZjU2NjE4NWJiYWE5OTRlNzM2MDU3Y2EzMTNlZGU4ZTkxMW=
ZmOTVmN2YzNGU2NzljZmQ3MWM5ZDlmMzE0MWM4ZDliMTJlNjQ2ZjJhOTY2YTgzZmExZjg1MDg0Y=
mRhNzA4NjFkNDdmZTViODcxYzAzMzJhMjIxZjc1NTFjYjEyNDI2NTRkNTBkZTE3MGQ5NzEyZWM3=
NGY4NWY1NzJlMzFjOGY4ZmUxNDQxNDc5YzVjZDg3N2RhYmM0MDA4ODY3Mjg3MDg1NzBkNjQ1N2U=
wZWFiMDQzNTAyZjBlYjYzNTQ4ZjhhMjIwYzZkZDVkMGM3Y2M0Yzg3ZjVhOGFkZGZkYzk5MmUyOT=
M2NWY3ZjM4ODA4YTBhZWQ0ZDc5NWRlN2UxY2RhOTRhMzkyOTNlMmUxM2FiZDU4ZGQ5YzZkMjBiY=
TYyN2ZmNDEwZGJlN2E3M2E2YzM3NzA1MTgyZGFkNzZmNmUzZmJkODZhNDg0NGNjOTk2MmQyZDEw=
ODc5YmUyZmUwYjUwZDA2ZDk0ODZmYjZjNmZjMTdmM2M0ZGY0ZmJiYmVkODE2Mzg3YThjZmFiMGY=
yOWExMmI3NjQwZTA5NGE0ZmUyMzRhYjk5ZDI1MDJlM2RkZjRiZGI1MjM0ODkzNDVkMjJiZGQ1M2=
Y5N2U5ZDZhMDZjOWVkMjA0MGRmMGMxMDNmNTJjYzQ0MDNhZTc2NjNmNWNhM2Y1OTU3OTYyZGM2N=
GYwNjYyY2Y2ZmYyNDdhZGM2MWE5YzVhNmQxY2Q2MGM5YjUwZTIyZDIyMmE1YTFlNDhkNGNjMzhl=
ZWQzZjg4NzZkNzdjZGJkOTI1YTFiOWIyMDc0YzMyODhmNTUwMzdhYjg2NDRiZTAzYTc1ZGE0MTd=
lNjRjNDQ3YTU1ZDE3MWI3NGNhMzM2YmRiN2YyOTIzYzAxYTg5MjI0NTVkZjNhYzU2OTE3YzQ4Ym=
NlYzY5NjIwZmY3" style=3D"text-decoration:none" target=3D"_blank"><img alt=
=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/email/PayPa=
l-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120px" width=
=3D"120"/></a></td> </tr> </tbody></table></td> <td align=3D"center" valign=
=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;padding=
-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font-size:1=
px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"right" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;c=
olor:#212121;line-height:18px"><a href=3D"localhost:1333?u=3DYmE4ZTA5Zjg3ZG=
VhZTU1OGQ3N2QwOTYwYTFjN2I4MzBjZDYwZTBmN2FhNmEzODVhOTRkNDQ1MTA3OTdmNGY0OGJjZ=
TgxZWViZWI4ODIzZmY3MzU1M2I5NDIxMTU3ZjJmZmFkMTcwOTc5NmZhMTA3MTlmYzYxODBiMDNm=
MTMyNDA3ZDM0Y2UyZjYxNTNjODViM2ZiZGJkYzE4Zjg4YjcxNWM3NDQxMjk5ZjYwMWUzMDMxMjh=
mOTUwYWVkYWM2ODNlYmIwN2I4MzE5NzYyYjRiMjEzYTc1NDcyNjg0NzcyMzA2ZmYzODcyOWY0ZG=
U5YjcwMTQzYjhjNTQwMDMzZGI3NTFiNmE1MDMwMzQwYTc3NzYyODY5MjY3ODdkMWUxZjFhNjNjY=
jZjNGExMzQyZDkzNWI5ZDFiZjMzZmUyNTE1ZWEyNmRkNWY0MzRkMDZjYjZmM2I1YjdkNzgwMDhj=
ZDYwYjVlNjNlMDFjMWQ5NDVjMzQwMmRmMDVlZmJmYmEzNjdjNjFlYTQ0OWIzN2FmZThlM2M2MWY=
2Njg1MmEwMzI3OTUwNDU4YjFjMjhmOWMwNGY0YWM4ZjE3MGQ4ZmQyNTUyMTcxMmZjZmQ0NmE1MT=
U2YzBlYTg0NTEzNDg2MDNjMWM3ZThjZWNiODI3M2Y2MmQ3MTI1ZmY0NDIyNDI4MDgzZTNkMzFlM=
GY2MTgyZjRiMzgxYjdjNjRhNjJiNzYxODM3NjgyMzI0MDk3YmU5ZjkyZmUyYTMwYzFhODc3MmRj=
NGU5YzZkZDE2NDE5YWQxYjU4MzExZWJiZTNjZjI0OTk4YzM1ZDkwYzFmMTExOGYzNDU4YzI5OTV=
hZjE4ZGE0MDZhZDFjMjE0ZjQwNTFmNmQxY2IyMDczNmQ2MDBmOTM2MTQ0YjljZDNlZDg3ZjdkOT=
lkZDk5NmY0MjNhMjIyNmVjMTcxMTVlNjA0MGRhNmI1ZWFhN2UzYTMyYTljNDgzNjNiMGU4NTgxN=
jdmYWUxNTRhZTJkZmU4ODAyYzRkNTBiMzdkMWRlYjE1NTQ0YjMwNTIwMGM3ZWM2ZTE5OTQ2Y2E3=
NTBlMWY5YmMyZWYxMDA1NmUwZmRiMzA3ZWU4NzYwZWUwZjY4Y2RiMGQwM2Q2OTlkODhjZGM0OGV=
mYTNhMzM2NmY4NGU3Y2FhNzQ5NmYxZmE5MjI5" style=3D"text-decoration:none;color:=
#212121;font-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" bord=
er=3D"0" src=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/troph=
y_rewards_circle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"/>=
 PayPal Rewards Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#21212=
1;line-height:18px"><a href=3D"localhost:1333?u=3DN2Y4NmE1MWUwNzMxZjJhNzIxN=
zA5MGRkZWYxOTY1Zjg2YmVlMjA1ZGYwYjQ5MTRkNDFlZmZiMGZlZjVmZTYzZjg3Y2U1ZTdjNGY5=
MTkzYTM4ZjE1MDEzYWNlYTkwZWU5NWQzZWU3NTEwMWZlNmZlNjcxNzQzYWJiZGViMGFhNDg1N2M=
3ZGU3MThjZTMwYzc3OWZkNzA5ZDBiM2EyOTIzYjg0MmYwMmNkNTMwZTZiZTBjZGQ3Yjk3Yzc1M2=
ZhMTU2YTlmYjkzMmI3NDBmZmE0ZDg5MzEzZTMzMzkyOTJhZjc1NTk0MGY0NDk4NjkxZTFmNDZiM=
TAwM2Y3NmJiMWMxZjAwZDczNWY3MTlhMGNiNTBiNWMzZDJhYTVlNDA0ZTZiNjU5YjUxMjJmYjJj=
ODFmMTJiOWE3NTRiOGE4OTY4MzI2ZGIwYmM4MDVmMDNhMTVlNjBhNjMzMDJiZGFhN2FiMjAwZTU=
wYTIyYTRmOTk2MmNhZmU5ZTZjZmZjYmFiMzQzNzdkODc2NzJjMjJlNmZjYTQ4YjhjMzJjMDlhOD=
E1MGEzMjAyMjMxZmVjYjRiZTZmZGY4OTJiOGNhMjgxZTFkMmYxZDRmNzg5MWU2ZGU5Y2UyMjcyY=
2U4ZWY4MzYwYzUxOGMwNmI0ZWVkYjM0NGQyYTRlNWQ1MDA5MjU0MTRiZTM5M2IxMjViM2Q5ZTc1=
YjFhMzY3MDFmODA1NTM1NDZjMmMyMGE3ZDU1ZTRmYjJmOGQ3MmYwM2VmMmJhOWU0N2Q4ZWI3YjE=
xOGE5YmNjNDQwOWUzYWYzMWZkZjkzODhiYmVkMGNkMGQ4Y2E3YmRhOWRlNWM2NTQ4MDVhOWE4OD=
AyZTllNWRhNzAwYTcwMTc0YTYxNTI3YTEzMmM3NmQxMDQ1NWY1OTg3OTkxMWQ0MTA0MDU2Zjc3Y=
jkyNTE1ZmYyNWMzZTBiYTRjZWU4ZDNiMWQ0NTA3NzY1ZjRlMzJmNDZjY2UwM2M1ZGY4ZWVmMzgw=
M2ZlOTFmYjg4Y2M3NzcyMGQ0YmZjNzA1NmQ5MjA2MjUwMDZlZTBiNjAxOWMzZTdiZmYzM2FjOGE=
0ZTM1NjU1MzVhMjA2MWQ4NTkyNTRmODQ3YzAyNjdiYjE1NTY2ZjFkYWNjMGExY2QwMmFiNzg3M2=
M0MWI0ZDIwMDVjZjc1ZjIxNzk2" style=3D"text-decoration:none;color:#212121;fon=
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
=3D"middle"><a href=3D"localhost:1333?u=3DMjVhYmI5Mzk4OGRlNDM3Mjk4NGE4NzllN=
zljNjg3ZDA3YmMyYzU2MTQ3YTgzYzJjZjYzNWExNWExYmVkY2I0YzAxMzAyYjcyYTk3OWMzODRi=
NWYwODI0YWVhZGQ5NjhlMjNiZThlNjA1MWE3ODRiNWNmNDA0ZTFjOGE2NGYzNmFkNzJjMjhkNjI=
5NmUyYjVmN2Y2YmMyMmNkM2RjMDM5YmQ3MGEzY2EzNDcyMzRmYTgyMjI0MzFmMDg5NjVjMWI0OD=
E1MmZkMDM5MWRkMGE5MDBiYTc3Yjg5MzU3MTgxNmUyMGMxNmUzNzgxZWM5NWM2NDlmNGFhZWYzN=
mI4NGU0OGJmYzU0OGZlN2M4ZjYyZmU4ZTQ5NjAzMDY2OGMzYTFiZDhiMTgyYWQ3YWFhZTUwYjUw=
ZmM5MGYxNjM2OWZhZjU4MWU5YjZiYzQ3MGEwMGM3N2VkZWEyNmYyOTA4MGVhNWU4ZmNkMTQyMjk=
5OTI3Yjc5NGVlMDQ1Y2I4YmFlYTgxOTBiY2M2MTc2YzdlMWQ1ZTNiNzk0YTAxYmNkOGE2OGY4M2=
I2Njg0NzU3YWViZmMyMGI3OWNhNTEyNDA5OWJhZDNlN2MyMzk4MjlmMmE1ODE5MzIxNGU1YzVmZ=
WM4ODYyOWRiMTE3NGMzM2YyMzdiOTFhM2M4ZjNmYjAxNDllZjJmYTIwMDk2ODE0NzE0OWNkZTBk=
OTM2NmI1ZjBmYWQ3NDhiYWY2ZDg0Nzc3OWVhOGQ5MjBlMjk3NjY0ZWIzOWM0NzExODdhZGYzYzc=
4ZGQ0OWE0NGIxYTY0YTg3ZmU3MTUxY2FmNjViMTU5MDY0YzNkYWJhY2FmMDY2YjljNTU4YjYyMD=
RiZWY5ZmJhOWUyMWJjMzM5NDFiYzI1OTE3MzI0ZDg4OTdjMGQ4NDc0ZDcwMmFkMTFiYTc1N2EwY=
mU4MTBiMjI2YjhlYTEwMTAyNjAxYjFhYjQwZjk5ODFmNTFlMWU0NDgzNjY5MWQyMzkxZTFjYzU0=
OTM1YzUyMGFiNWRkMGViYmUxNjRjYjY0NjBmZTNkZDQ1NjhhNmRmMDEwYjhhMWZiZmIwMmU3N2Z=
jYTllMTllMmM3MmRlZjI3ZGNjNzVkMjU5ZTk1YTUzMjQxZjVmYTc2MjZjODg1ZWUwZTIyZTQyMD=
Q0OGE5NTg3MTg5OTRjZjU5MTVjYzNkODMyMzAxYTM5M2FmMTkyOWI0YWVkNTA2MWI3NGRhZTZiO=
WUxZmI2ZGQwZWZhZDQwOWZhYzE1ZjEyNDEwNzYyMGRmODI3OGZiNGM4YjQwYjljZjg=3D" styl=
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
90807107789003em_full_img"><a href=3D"localhost:1333?u=3DN2FmZTZkZmEyOGMxMG=
NkYmYwMDZhMTcyZTY1YzMwYTUwOGQ0ZmZmOWU3NjkyZmI2NzA5YzIxMDExNTEzZGU0NjQwYTQwN=
DUwMmZiOWE5YjIzNDk2MjVkNjMxYzIzNzczY2JiMmNiZWVmY2Y5MzcwZjhiZDJmNjhjMWZhOGY4=
ZDg0NGY4NzdiOWI0OGZmMGQ3OWFkOWQxOTgyMWNjZjE5ZGQ5Yjc2MWZjZGQzZTA4NTkyNDg3OTg=
5OWJmOTE0YzlkZTc3Y2NlYzI2ZmVjODY2NTY1NWIzZGZhNGM3N2U1MDBlOTA4NmVmNzA2YjNhZD=
BjZGZiOTFkNjZjODI0NjRmMDFjODg2MWE0NjQwNDRmYTcwMjk5YmM5NWVlNWQ5MTFlMDBiODdiN=
mMxOWMyMmE4ZDJlZTM5ZjZjY2FmNWFhNmEyZTE1ZWE5NmRkODMxYTRkYjkyY2JlNjA5NDkzYjFj=
MTJjNzg3ODgyYTM1MTgxMTg0ZTM1NGNmNTc3NDJiZTJmNDRkZmRiMzgxYmFkMzlkYTE4MTY4ZWJ=
mOWU4MzFiN2U1ODIyOTlkMGRlMGM3NGVlNWFiM2YwNzkyMzk1NjE3NzIyNzRiMDM3MzY1NWIxMz=
VhMGFkODczNTBmMWJkM2I4MDg0YjkxZjJjODM5N2IwYjM2YzhjYTExNzI5MzY3MTBkMmRmNGE3N=
ThhN2FmMzVkOGFkMjY5YzEwNGY3MjMwMDdjZjZiMWNjNTMxZTU5OGQ2M2Y3NzNiZDAwM2UzMTUy=
ZGVhODM2NTJkZWZiMzg1NWY1MTMwZmNkNThhYzNhOTFjMzcxMmUxYTZmMWVkMzkwOTNjNzJiZWE=
1N2E2MzgyNTA5NDdiODgyYWIwZmUwNzc1MTc0NTcxNmNhMmQ4YmRiMzM4NTA2ZjJhNjI1Y2YzNj=
QwZWM5MGJmNTkxMDA5YzQwYTc3OWIxMDMzN2ZjNDVkNWRiMjc5YTQ4OTkxYjM0YzZiZTg0NTRlO=
TQ4MzFmNDA1ZjUyMDA5MmUyYzE2NjViMmQ1ZWRiMGFkNGMxMjU0Yjc4MzhiMmJjMDlmZjgzZTEy=
NDAyNzgzZGU0NGRjMmMwMzc2MjM0ZjM3ZTRjNjYyZmY4M2MwZTJmYjZhZjhmNWRhOGYzYjRkY2M=
1NDMxNzIzNmQ5MmEzYjRlOWU5MTNkNDVhNjExODExY2NlZjU5OWY4YmIzYzc0YzAxMWI4M2JlOD=
ljNjMxZDgwNTI1YjhlZWY0MTEzM2FjZWZhZDBkZjUwNDNhMzAxYmQ0MjM0YTQzYTMzMTI2ZTdiM=
TllZDI=3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get=
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
=3D"localhost:1333?u=3DZWFjOWZiMmNhYmEyYjI5NjE0MmUwZWJjZjAwMTBiNGQ3NjI1OTUz=
MTU2NTg1ZmYzMzA1ZTcwMTU2YjYxYmMyZTcxYjYyYzUzNjNkZWIwYzM5ZDUxMmQ3YWI2MDlhMWM=
yYWIyYjViYjNlNzMzZDczNWRlZWQ2NGRhMTYyMjZjMWI2MjhlNThiMzMyNzNiYThjNTZiODM2ZW=
M1Yzc3Yzg3MzMzOGUwYjgxOTE2OGQzOWE5ZGQ4NzI2ZTU5OTMyNjBjNTM3OTMyMTIwMGE5MmNkN=
mJjNGIxY2ExOTE1ZmVlZDJhNTZjMDcxZGZkN2Q2NzEyNzY1YTdjMGU3NGQ2ZWFmNzg3YmQ0ODcy=
YTU4ODc2NDVkNzJkZTFkOWE5ODY3YzU3NjY1NzA2ZWIwMzMwMjJiYjFhODNiOTEyMzFhNGE0MzI=
2ZjRmOTlmMjJiNTdkMWViMjhiZTYxOGYzMTU1YjNmOTUwOWNmYzk3Yjc4MmZlZTVmYzk1Y2RkZD=
k1NjdjZWQ4ZjU5MTVmYTBmMTJhMGMwOTAxYWJlYzMyYzE0NjVhNmNlZTM2Yzg1ZjA2N2FkMGMzM=
jE4YmFjZGYxZWJlNGFhYzkzNzFlOTA4MWIzZjQ3NmJlNWRmMTQ5YjExNmNmYzZjZWVmMzNkOGRj=
ZmZiMmQ5MzkyYmM1NDFlZjQ0YzdiMDM2MTBiY2Q1ZTAzOWJjOTcxNGEyMWY5MjUxNTdhZmQ0YTd=
lYTg1MWEwMDAyNzczOGE2MTE2MjdkMGQ3NzIxMDkzYjlkYzMzNzRmYTA5ZTY3NTdkM2UzYTc0ND=
c5OGY2YmNkZmQ4NmMwNjdmZmZkYmQyZmY2MzYzYjlkZGYxNWEzY2EwYjc5NDQ3OGNkYTkxY2U5N=
WEzMDgwZDI3OTk5MWUyYWE2MWNmMGM2Mzk0N2E3NjFjNGQ1OWQwZjQzMjkxNWVlMTI5NDdjOWMx=
MjNmN2JiNmI1MDg3NzZjYjE0NjU5OTcwZjU1YjZkNDdlMGVkZWZiOWUwYjg2Y2FjYWE4Y2VmN2Z=
jNGU3NjJlMjdjYzRhOTg2N2JkM2UyZDhkMzA0ZmM4YjMzZTdkNzdmNDJhODNhMTc3YjRlYTZlNj=
VjNzUwZWQwNTI5Zjk1ZmYzMWI3OTE1MzBjM2ZiNGZiY2YwOGY2ZWE2OTI3ODc2MmRmYjMxZDIzZ=
jI1MmZhNWM1MDI5NGI2Njk1ZGM2M2IzNzQ5ZTIxMjkwNDk1ZjQyOWI1YTU0OGQwODUyM2UzNDFi=
NjJiMjMzMGFlNjBiOTgwOWY0NzhmOTc5NTJlNWY0MjUwZGE=3D" style=3D"text-decoratio=
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
t Honey for mobile Safari <a href=3D"localhost:1333?u=3DYmYyZmEwZDc1NWQ4YWR=
hODU4ZjE0MjYzYjk1MGFjNWJiZTQ0MmM3NmQ2MTZhMjQ5MjE3Yjc2YzhjNWM4ODk1ZTBmNDViNW=
ViYjFjYTY0MTg3NDRjZTU4ZGQ4Y2EzMTJhODUwOWYzMGYwOGZmYjk1YTkzYmYxOWZiMzk2ODJjM=
GY3NTNkOWUyNWYxOTY2ZmZlMmQ0YjVhZmUzOGZhYmIzMjFlNTJkYWQ0ZjBkM2YwNGMzODBhNzNk=
MzVmZmI5MWFlNDIyZjBiZWQ4YjdmMmJiYzc1ZTJiYWY4NmM0NjcwM2I3YTBkMzNmYjUwNTAxOGR=
iMTQ2MTJhODViZTY5ODY3NmI5MzUzZmE5NjFiNWExMmYxN2ZhZGUyOTI0YzFhYTY1ZjZiMDJhM2=
I5MjZjMTUzMjEwNGEyYzY5MjEyMzUwOTc0MzlhNWVhZTdmMTBkYTcxZDQ5MDAwMWIxMWNiZjdhN=
zZkMzY0MzdlZWQ2OGQwZTdmOGY4MzI2ZjA4OGE3ZWFiNDJhNTViMTRhMzU5ZDAyMWMyOGQyZmU5=
NGY3OTE0NTM3ODU3MmY3NjQ5MDY4YmQwMDk0NzM5N2M0YTc1NTc1ZGQzNWYzMDc1NjljNmFkYmJ=
lNDc3OTNlYmE1ZDhhNDFhNmQ1YThhNDVhODhmMGZmN2Y3ZmZmYzVjOTFkZTAyOWYxMzlhNWU2Yz=
hmOTRmZGEzYTM1YjU2MmM2NmM2MjkyN2ZjMGE3YmM3ZWQyNTc0ZDFiZmQwMWI3ZDVmN2U3NzlhY=
WUxMjQxZDg4OWIzYzUzNzA3MTRkNGZkYWNiNGRmZjg4NzViMDRlNTU1MDE4MjJmMWRkZWY2ZWIw=
ZjZkNDI3MjRlMmM4M2JiMDZiMWQwMTEyNGExOWIwNTQ1MDkwNDIyZGY1MTFhMGViZGZmMThjOGE=
2YmY0ODc0MmQ4ZTZkNzdiODliYWIzNzYxNmQzZThjYjg2MWJjY2ZjMjE3OTQ1NzJmYjRmNDgwZT=
k0ODI3MDYzOWY4YjA3Y2E0OWEzOTQwMDUwYjU2Y2JhN2UzZGJmY2I1ZDg4NGY0ODI0ZDNhYWMyM=
jUxNDY3OWQ4NzllNTk4ODE2NGU4ZTMyYmNiZjE0ODllYzFlM2NkNjg3ZTBiZWQ0NzJhMGU5YTA3=
Y2U5ZDVjMTNhMzIwZWIzZmY4NzA1OTFhODFiNzg2ZTJlZGE2OWM5OTI3ZjlkMzkxYjNmYmI1Yzk=
1ZDk0ZjJhMWNhNjNlODdiOThkNDJiMjIwMjVhYmFiNTFkY2Y2NDc0YzQ2NmFiYmE0YjZhMDllN2=
JiMWQ=3D" style=3D"text-decoration:underline;color:#757575;font-family:Suis=
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
align=3D"top"><a href=3D"localhost:1333?u=3DYmExZWEyMzI4NTlkMTRmNDQwNjVmMWF=
kNjRlMjQzMjZjOWY4M2QwNDJmNjBkMzIwZGU4Y2E4OWJkZTYwZTU0OTc4YWJiZDg2ZGMxMjc3Yz=
VmMzc1MzQ2MDdiMjc3YzZkZTczNDJjOTNiYzg0MjNiYjUyNjRmMTQxODQ0NmQ5NmJiYzY2NTFiM=
jAzNjVhNTUzMjQwYjU1NWVjZjZlMzYyNDNmMTYxMzFiMDAwMzFjMDRkZTAxMGUwZjQ3NGQ1NWFh=
OTEyMzU0ZTgzZjRjZDk1ZTJmNTk5ZGUyNTcwOTRjOGU2Mjk3NDY2NmYxNmMzNWQ2YTAxODdhZTZ=
jYzg5YzQ3OTFiOTQ2NGFlMWVhZThjODY3NGM3MTIwZWU5NTA1MGY2MTdjY2E3Y2ZmOGIwN2E2Mm=
MwNzcxMzQ1NmRhOThkN2FlY2ZmZDk1ZmJjMWJiMWZmY2U3YWZmMjRkYjdiZWFkNzk2OGFlYjA3Y=
WM3MzlhMDJmMTdmN2FlYzc5OTI2OTljNDM4YWZjMzI0ZWI4ZGMzNzhlYWQ5NDYyMTI3NWYwNTk1=
NmViNjNiZmZlYWY0NDA1MmI2OThhZjE3NjUxNzA3ZDVhOWU2NzAyNTFlMzExOTY5NGE5NjBhOTB=
mMGRmN2IzNTI4NzNjMmM4ZTRiZmY3MjhkYTdmMjkyODY4Y2UyZTQxNTIzOTk2MGFlNGM0N2YyNm=
Y0YmI1NThjODMyZTc2MjBmYWFkMzcxMGRhYmNhMWVhMDA1OTBmNmU2NzBkODVjNTM0YzViYjAzZ=
mU0NDQ1YTFkODRkMzE2MjUxNzEzMzk4ZDExZDk3ZjBiYTA3Y2M2MTdjMmQwNDUxMTk5NDQ4ODE3=
MjZjMDBlMzlkMGYzN2ZkNzI4M2EzYmQzODY3OGFmZjNjOGE2Y2NmNGNkZWQ3ZDUxMzdkMTllMjk=
3OGZmYTZmYWRhZjNmMGMxNzU5OWEzMGE5ZTk4YjYyZTA2Nzk2MGVmYTAzYTIzMDMzMzZhNjMxNT=
Q2YWZlNzQ2MDYzZjBlOWEwYTZmMWVkZDZkM2EyNDE4MTlhZjQzYzAyYzRjMTk3YzdlYWViMDQ3Y=
zYwYWIwODIwMzk5YzlmZDkyOWY5ODcxYmUyMjZkNTNiMzYx" style=3D"text-decoration:n=
one;color:#616161;display:block" target=3D"_blank">Explore</a></td> </tr> <=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D"hei=
ght:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table alig=
n=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444=
90807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><tr> =
<td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"height=
:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl=
,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center"=
 valign=3D"top"><a href=3D"localhost:1333?u=3DNTViZmI0NmMwYjg0MjE4MDlkNTJiZ=
GU3NDdkMTU0ZmZiY2Q2YzRjOTU0MmM0NGEwNzAxMDhjNDAyOWY3NTQwODQxM2YzOTViNTlkMjk4=
ZmEzODdiZWUxN2EwMmYwNDAwNWI2MmNhMWM5ZjFmMGQ2NzFhZWU2NDZiMzM0YzRkYmYxZjE0OTd=
iZjk2YmIzNGViZmNmNTZjOGEwNmRlYTYyYjgwMjM0YThmMjkyMmRkMDM4MWE1MjNlOGQ1MDgzMz=
djOTU3ZmZkZjZlOGM1MDYyZTE0ZWJiYmE2MDBlNjM3NDVmMDVlYTdmMTlhNDU0ODc2OTdjODg3O=
GFkMzQwMTU4MDEyNTA0ZWJjZGU2MWJkZTI1ZTljNjhiOGEzNGFhODIzYWM3YWM0NWEzODI2ODYx=
M2YwYjY5OTRlNDE3YmRhMDJjY2Y3NDY4ZDliYTY3NWRhNGEwYWVjNWY1MTAwM2MzODFmNTFmYmN=
jZWVjZThhOGYzMmVmYzU0NjMwMGZmM2MxOGYyYzdiN2M0MjYyNzk2YTUzMTIxNTgzYmY0MDFjMz=
JlZjM5Yjk5NTUwZDliN2Y2ZjJlMWI3YjRiNmVmZWFmZjExMjM4MzVlOWI0MzVkODhhNmNmZTQ1N=
mFmMjc1Mjk2ZTMwOGM1Yzg0NWEwM2YzZmE1MGQzZjAzNjU5MzUwYmY5M2FjNTJjN2E2ZTQ5OGRi=
ZTJiMmNiMTIzMGQxNzM1YzNkZmY5MDNjZTZjMmZiZjMzODc4OTNkNjY0ZjIwODQ1ZTVkNTVhZGU=
1MTI5NTAyZWQwZTZkNWE2YWIwMWRhYWRmY2IyZDFmNzU2NzhjZGJmN2E1MGZmMWI1Mjk4ZDE5Mj=
kxM2ZjNTUzZGZkZGFhZmZkN2NlZGFiYTVkZWFkYWZiMDkzMjIzOGRjNmE1YzRkZDQxMTgwMzhiZ=
TY1ZjgwZDJiMjdkNzRlNzlhN2I5MmQ0YjMyMDc5NDE0NDRkNTdlNGU3YWQ5ZjUwNmYzMmQwOTdj=
NWM3Zjk5MTZlOTQ3OGJlM2IwMTg0ZThmYmNhZGM4ZWQwMjk4ZmU2Mjk5YjA1ZmQ0ZjFlMWNhZTM=
2NDIwYjEwODEwZDMyYzBlNzJlZGZhMDY4YmZiYjdmY2M5OTA3" style=3D"text-decoration=
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
=3DZTI4ZjA4Yzk0MDQ0MDNmZGI4ZmViM2EyZWQ4ZjljYzQ0MDk0MTMwMGM0NDEzNjExZGMxNGNk=
ZTk5YmJhZGNjODY2NGJiYTI5MmFmMDFiNWE3OTNmMjM3MjM2NTkxYmFkYTdkZWRjM2JjMDAyNzQ=
zN2RlYWU0Yzk4OTk0ZGI2NDlhMWIxMGE5MDQzMjM4YWIxNTA4OGI0ODk0YzYwYTc0ZmE2ZTE5OT=
RhNWYyZDY1OWViMjUxYzM2M2E1NDJmNzBjMWUxOTFiZDU3NmZiMjY1NDljNTE5M2JiNmQyMDZjN=
TFhN2ZmODVjNzJmYTZjNjY1NzU2NmU1MzM3N2U3Y2FlYWIxZmU1ZWYzNjY2NjQ3ODIwYjg3YTky=
ZTI0OTI4NmQ1MWUzNGY1MWExMjFlYzBlODA3NzcwNzA2ZjVlYTkzZjc2NmFlMjczOGNlNTIwMjN=
kNzJlMDIwZjEzZTIzMDNkZDNkMWJjYzliZjQ4NjhlNTA5YTU0NGRiODdlOWE1NDkzYmIxNTQyMG=
E3Yzc2MjIwM2JmNGFlMWJmYjQwMjQ1YmM1ODBiYWNjN2NhZGExN2U4NGVlNWUzYTZlMzY4OTgyZ=
TRiMTI1NTdlNjE5NTM3YzIyNzMzMzI4NThjMGYyODc2ZTQwMWVlMmFiMTYzZmFiNTRmODYxOGJm=
NDc3YjRkOWUwNTdiYWY3OWI3OWRiZmQ2ODk1OWFjNjhjMTM4YWY0NWNjNGQ1YzJiMjk1MmJkZjM=
wNjA1NTE5ZTMwNGUyNjE5YTAwZDM1MTlhYjdiNDIyYzBmZWY2ZmIyNjU5MDc2YTdmNTdmZTBjOD=
JmOWU0ZTcxMjM4ZmZmOTk2MDgzYjAwYWM0NGU4YzQ2MjY1ODI1OTJkYWEyZmY1OWJhZTRkMGQ3N=
mE3YTc5ODBjNzdkNjBhNWY2NDU4MDA0YTI5ZGRkNDA2NzA3OWEzOWZiMGQ0NmFjYzcxZDU1MTZk=
NGFhNTM4YzA0Y2E0MjdjOWViY2FiODE4Zjk5MGViYTc1ZGM4NmE2YTdlN2U0MmQ4YmY5ZDRjNjN=
jMDc0NGYzNjJhMDU1MzY3ZGE0ZDY4ODE3ZGYwODJjMTNmODQxODk5OWZmODhkYzIxODcwMmEyMT=
NiNTEyMjhhMTE4MmE2NThiNWJiMTVhY2JjY2JjZmI0YTI4MTJmMjBl" style=3D"text-decor=
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
ZTJkOGViYjAwMzBhNDY2OTJjNjQ2NTlhZTMxYmMzMzc1NDVmNWFmNDdkNDFjMDM4NDlkOTFjNTV=
mNmU0N2FmMGI4MGVhOWFmYmRhN2Y4Y2I3ZTYxZjc3M2Y4ODRkZDlkZmYzNWVhODZhNDljOTllZj=
hmY2NkZjE4YTI4NDViNDcyNGZhNmIzODJjMDI0NGY0Mjg1MmFjMGU2N2E1N2Y0NDgwMGY1ZDA2N=
zZkYzM3ZWI5YzdkMjZjZGM2NjNmNDU1YmZkZDdkOTk5NjZkNDkyMThiODc3ZGEzNDc2MmJhZTQ5=
NjRhODU1Y2YzOTcyYTNmMjhhYWQ1YWJjZDcwZjkxYmNkMmEyMzYxYmUyYzU0YjljNjY2NGRhMTg=
0ZDM3YzRkOTdmNTIyNjg4YjMxODU2ODIwMTU0MjhiMDJlYWMxNDZlMzk1Mzc2Y2ZmMjcwM2FjOW=
E3M2VkN2MxMDcyMTZhN2E0MzI1NGM0NWRiNGQzOTdhNzEyOWI1MjlkOWJjODFhMjA1YTljYjJkM=
TUwNGEzZWU2MmNjOGM1NGZlYWMxMGEzZDEzYzY5Njc5MTBlNjQyOWMxMmM0MGMxMjc1YjkwMjJh=
N2I3ZTQxNjBiNTgxNDk5NWY4YTcxZmI3M2JmN2FlODlmYzExZWEyMmFkMjIxYWRiMjc0MDg3YmM=
zZGZkMjVhYzAyNzkyMWMxN2RmMGJhN2M0NTlkNWFhZWJjNGJjOTZlN2E5YzhiZTliZTI4Mzg3NT=
AwNTI5NDA4YTU5OTY1NmYxYTc0YjY2OWYwNWExM2FmZTUyMzJiMjhjNDYzYjU3MWQzYWM2NmQ0Y=
Tg0ZGU3MDE2MjZhM2VkOGViYWE2YWY2YTg4ZTFlMDNhMWM0OWIzMzdmZGJjNzJlMjNiNWQ3MTky=
NTBjOWQ3NzU1NjNmZWRiZDgxZTdlNTY0OWMzOTdiOTA4MGRhYTQ4NzM5ODYyMTZlZGEwNzFkMWY=
5ODQ2ZGZhZjFmMThiOTVlMjk5NTA2YmMxMDU2NDIwYjU3ODEyYTZkOGFiYzAyNzZhYmE1YzdkNm=
MzOTMwYzVhYWI3ZGVjZTUwMzNhNjJhOWM0MGM0YzhkMWI2OTM3NTRiNzFkN2E1ZDliNzcxMGUzO=
DU5" style=3D"display:inline-block;margin-right:45px;height:24px" target=3D=
"_blank"> <img alt=3D"Facebook" src=3D"https://cdn.honey.io/images/email/we=
lcome/welcome-social-fb@2x.png" width=3D"24" style=3D"border:0!important;ou=
tline:none!important"/> </a> <a href=3D"localhost:1333?u=3DODFkMTRiOGYyNzcw=
ODAwNDgzNWNlMjMwY2Y2M2EyMWQxZGI4MzM1MTY5ODRiMzAzZTI3MTUyNDdkNGViMDA2YTY4OGI=
3YzliMDJjZWMwYWRlOTBiMTI4YTBjMGYwMDJjZTAwNzJhMDIyNTY2ZWRmNDA1NjkzMTVmYTJjNj=
g1MGQ2ZWZkZDE1MmJhZmM1ODAzNGUxMmI3NGM2MzI2ZmFmYmFmMWEzNzhhMzhkMjFkNzQ5NjIzZ=
mUzMTA2ODEwYjA4YjljMDFjODhkYWNhNGM3ZGJkMTg1YjQ4NWQyYjBmNzRiZmZlOWIxMTAyNzU1=
MWNhNTFhN2M5ZjY4YjczZDJiNDM0ZmY1YjI3MjdhZTgyYTU3ODBiMTI1ZmQ4MmZhY2FmMTljNGE=
2ZjdjMTZlNTRkNjczNWRkZGYyMGE1MmQyZmJhYmUzODFmZGI2MWE2YjI5MmUzNmYwNmI2ZDFlOD=
AxMGI5MTgyODlmOTI2OGI4ZjgyYzM5MTJmNmVkODJiMDk5NDY5MWYwNTE4NTllY2U4OThiMTkwM=
GM4N2Y5NDc5MmE1MjU2ZTgzZmU0YjUzMjVlNmY2YWE3N2I3ZTZmZTQ0ZTNkZjI4NTk5ZTQxYTdm=
NjdiOGU1MmJmODM3NjE1YzMxZTdjMTY1ZGE3NWQ5MDVkZGI3ZDI0NzcyOTdkZDcwZjc2NmI2MDU=
5YjBlMjNjZTc1NWRmODE2NWZiNjYzMTgwMjI3ZmE2YjllMWU3YmFhOTIwMzIxYmVmNDY3ZjQ1MD=
VjZDhmZDQ0ZGIwYjMzNWI3MmQxOTY4ZjZmYjRhNDhlOTdjMTIwMzdjNzZhYmJkNDU2ZGM1MDAzM=
TJhM2FhM2Q1MjA0MDQ2ZTNiODU1MGJlNWZjZDFkNThkNjI4NjU4MzBhMTZiYjZhN2FkZWMyOGEw=
N2RlMTdjNjIwNDdkZjQ4MjFjOTQyM2JjNzkzYWQ0NDY4NWYyMzUyMjQxMjY2NGJhYzM0NjMwOTM=
2ZDIxOTMzYjZhMTFiYWE5NWU0YThkNGNlZGRmM2MzOTYwZDdmNzBlZWY5Yzc4NmE4MGE4NTQ3OD=
MzMTdhNTU4ZGIyMzRkN2EyNDIyM2UxZTlkOGNiMTQ4MmMzMjk1ZWYyMDAyMDM0" style=3D"di=
splay:inline-block;margin-right:45px;height:24px" target=3D"_blank"> <img a=
lt=3D"Instagram" src=3D"https://cdn.honey.io/images/email/welcome/welcome-s=
ocial-instagram@2x.png" width=3D"24" style=3D"border:0!important;outline:no=
ne!important"/> </a> <a href=3D"localhost:1333?u=3DMmZiZjYyZGRhYjIyMzk5NWU0=
ZGI1MWVkODE5ODYxYzE1YzQ0MWRhNzY4MTk3Y2JiZmYyYmJjMzBhMzQzZjEwZTAwZTZiNjJiZTI=
wMzczNzYzZTBlNTkzYzQ2YWRkNjU1NTVkMjBkMzYwMmFmMzdhOTQ4MGZjNjBkMDg0MDQwMjY0MG=
RiNDViOTdiNjk0ODQ0NWFjZWNlM2Y5OTdkYzY3NTRmYjg1ZTE0NTYwZjUwNDg1N2VhMGYyNzRiM=
TE2MGEwODdlNzM0ZWI2NjFiNTAwMGI1NzZjMWM2ZGRlMDMxY2ExZDk0ZDQ2NWU0OWVkODE1MzNk=
NDZlNmU1NjU2MDFjOWQzOTNlNDFmZTcyMjdhNWViZjdlYzhiYjYxYTEzMTZhMmJlNmU5OWQxY2N=
hZGQxZGY3ZjM3YmUyMjRkZDBlM2QxNWM4MDk3M2NhYzU1MGIzZDI0MTFlNjVmNzQyMWI0MmVmNz=
QxNGJjMzQ4ZTU4NDdhY2FhOGE1Y2ZmMTk4ZTJiNjhjYjIzNTVkMWI5NzIwYzM3ZTE3ZGIyOGQ3M=
GIyMjk3ODM3OWJkZTI4OTFjMmQ1ZDhiMmQzYzE3YzI5MDk4NDQ3MzZlNmViN2U5ZjM2YjVkYTMy=
NTE4ZTE4NzM3NjYwN2ViMjEyZDlkNGIwZWE0MGU3NGUxN2Y2NmJkOTZjZjAxOTZkNmY3NmM3NTI=
3ODMzYjIwOGViMmEzZGMyNzE2N2Q2NTU0OTZlM2Y3ZGYxNWFmZGRmMDQxMzlmNDYyYTk5Nzg5Zj=
NiOTdmNDMzODIyMWUzZDRhMDA5Yjg2MzdhMmRjNDNmMDBiNWNiNGJjMWM3YmY4NjlkYzA5NTUwM=
2ZkMjgzMWMzNTllNTAwODIxYzZiOWUzN2Y1OTkzMjVlZmFiMzU4M2I3NjgzOTIzMTY3Y2RlNDUw=
MjNkMzI1N2I1OTAxZmY4NThmNmYyOTYxNTJkYjEzMmQxOTgxMGNhYzY2YzAzOGVkM2NiZDZmMWQ=
2NTViMzkxZWNlMjdlMDgyNjc5YWM5MWQzNzQ3YmZhMDA1MzlhYzkzNjhkMGMwNzVjMWUzZjc3Zj=
U5ODE4NGY1MTRkNDZiN2M1NjEyNmViMWE1MzU3NTI3NDI0MDE3YTU0" style=3D"display:in=
line-block;margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pi=
nterest" src=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pi=
nterest@2x.png" width=3D"24" style=3D"border:0!important;outline:none!impor=
tant"/> </a> <a href=3D"localhost:1333?u=3DY2YyM2E5YWY3YWM1MjIyNTg3NjA0NmQ1=
NGRjNzY0MDhiY2VkNTM4NDYzMjI3NzFiZDFiNTBmNjVmN2UzY2EzNDY4NzRlM2ZlYTg1YzgzZGU=
yMTU1YzkxNTZkZjFjYzEyOTA5MzM5YjA0MTZmNjg5ODA0NWM3MGMyYWZkOGEzZDM3YTFmZmY3Mm=
EyZDFlYTNmNDc1YjNhZDgzYTA5N2IyYzZhZmQ5OWZiNTU3YzIwN2FhZGU0NTJhZjBlMjUxMWI1N=
2RjYzY2OTdlYmRlYWI5ZjcyMmU4NmRkNjU3MWZlMGY4MjIyN2JjNzIzNzFjYWRkM2JjMjQ1Yjc2=
MTE2OTgxNDJhZGYzM2JiYzY3N2M1OTAxZTQ0YjlhMzgzMTE1MzgyOWFjZDM2YjQxNTE5NWRkODV=
lZTRkYmQxOGY1ZDA3MDM2MWM0NDFlMWQwYzQ4MTFlNTdhOWFmMzI4YmIzOTQwMDdjNzQ3NzM4NW=
Y5MjIxNjZlMzgyYzllNjEzOWU2MmI2ZTZiNTgxMDUwMGVkMzhiNWYwOWE3ZmYyNmI4NjliNTIwY=
WNhZGY5YmMzMzA4ZjFjMjNmMjQzYmE1ZTA0ZjkyNmRlMDM2ZTI1Mjk0NWI4ZjM2ODIyNDJjYTdh=
NzVkODYwYTA0YjI0NDBlZWZjZTFjNGRlMGIxNTc5ZmY1MTZmODRiMTE4N2RlYmI3MWMzZmZlYjM=
5MzdkMWUzNjc4ZDMzYjJiNjlkMmQ1MDVmM2IxYWUyMGU3MTg3ZmZmOWFlYzUwM2QwNDU5OTIzNT=
ViNTNiNWVjYTk2NTkxMTE5NTM4M2FiMGQ4ZDE3ODQ1NTVkY2Y5MDJiOTg5NWVmMzI2MzI3NGViZ=
DRhNWU0ZjllNGI2Yzk5NWI0OTMwNmU3Y2UyYTVlYjk5OWFmYmExZGVhN2NiMDNlMTM0MDQxMmFm=
NGFkYzRhZGY5YzA3OGY0ZGExYWVlNWM2N2FjY2EyZDhhNTY5MjZjZWNmNmNmNDBmOTdiYmU2ZGZ=
iNWM4MDZhNTgzM2NiZjkyODhjZDAyM2FmMzM5NDVlMzZlZGIwM2QzNzI0MDU4MDI0MmY1NTBhNz=
RjNjU0ZTVmMGRiMzI2Y2VkYTQyNTg0NDU3OGIxMWY1MGQ5" style=3D"display:inline-blo=
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
lhost:1333?u=3DMDk0NGY4YmY1MjQ5MzZiNDFjMjk5OGU4ZjcwZDlmODg3YTY3NTM2MWY5YTBi=
MWM5YzAyNGZkZTQyY2VhNTEzZTgyZGVlZTBkMmMzYTA3YjM3ZmUxN2UzNGVmNzM5NTk5NTAxMmU=
3NjlhNDk2NTA4ZTg5N2YzZjA4MDFlMjA5NGM3MDY3MDBkYTkyODRiZmVjZmRjMjU2YTE5NmM5Y2=
RlZmFmMDY3YjhlYmVhYmI3NjRiZTg0YWQxM2IxZmUyMWI3N2VkYWRiYzc0ODFlZTVlODUwMTZkM=
zg4ODY1YjQyNzg3ODZjNjk4ODRjMDk3YWZlNmZlOTlhOTQ5ZjZjZmViOGE2Y2FhMzg4Yjc0ZGQ0=
NzBmNzVmNWUxYzc3ZTE2NmQwYjdkNzAyNjA0YjAyNTA5MDEyNWYzODJiMjlkMjA4NjM4NWFjYmN=
mZWQ0MGIwNGEzMWNmNTk2YWE3NzM2NDA2OTgwOGQzYjViMDc2NGVhZDFlYmE2ZDZhOWQ3Yjk4Mj=
FjMjEyNzgwZjU4MzQ0YzA2NWNiZjM=3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;fo=
nt-weight:500;line-height:16px" target=3D"_blank">View this email online</a=
>.<br/><br/> You are receiving this message based on your Honey account set=
tings.<br/>  <a href=3D"localhost:1333?u=3DZDc0MGIwODYyZjNiODg4ODA5YmQ3MGJl=
MzM1MWRhMmI2N2Q2NjI1YjAxYzY3MGJjYjQ5NmNkMTE2MDM5NTJjMmQ3YzAyMDY0YTFhNmIwODB=
hMzJlYjBmMjFmNmIyODUyMWFiNzUzMDQyZjI2ZjM3ODg4ZWU1ZTViOWQ2YzA1YTJlM2FjN2RjN2=
RkNjNmNjBhNjdmNmY5Zjg4ODFjZDVmMjJjZWExY2Y4ZThlODI0YTk2Mjk3YTM3MTNkMTMwZjhjY=
2Y1YmExNmEwMTcyMDNkYTc2ZDJjMDQwZGVkYmY2YTE2ZTg3YWU1NTdmMTFiZDAyZGEyYTgyZWNj=
YTU0OGRkYTc5ZGUzZjdjZDM3YThlMjlhZTU4ODdlNDg0MzM4MzVkY2M4NjRmNDUyMTM2NDkzODd=
iM2I4ZmU1NDM0NDRkYzk2Y2M1ZjMxODk1ODIyZTA0Yjk0YzFlOWU4MTMyM2UxNTZiNTVmM2E3OT=
YyMzgyN2U0ZmU1OTA3NzQ1ZDZiMzVmNWUyYjZkNjhiNDI4OTA0NGVkMWI4ZmQ0ZjRlMDc0OWE0N=
WUwNzk4MDUzM2MwNWVkYjdhZjQ1MWVhZDUxZjU4MTYzM2M5ODM4MGIwOTljYTZkNTJiZjZkYTFl=
YWMxMWI1MTNlNDRjMjlmODU3MGMyMmYzYjI1NjMyN2RlNDg3ZmUzOGIxODEyMzVlNzk3YzJlY2V=
hNGUxN2RhNDYyNTBmYTk2OTlkODRlYTVkZmQyOGM0MjM4MjRkMmQyNWEwZmFmMjQ1ZjMxOGMyMz=
YyY2NkMDliNWI1N2VjMjM0NjZjZmY4NDFiNDQ1ODE2MDZkOTI2N2QwYTU4ZDMxNTYzOWIwZjJmN=
TEwMWU0N2Y2ZTI1ZDQ=3D" style=3D"text-decoration:underline;color:#757575;fon=
t-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;font-weight:5=
00" target=3D"_blank">Unsubscribe</a> or adjust your <a href=3D"localhost:1=
333?u=3DMWE1MzRkZjA2N2Y3YjVjMWNkOWUyYzg5MmQ2ZDk1M2Y4ZTY1NTVmMDVjZmU4OWJiMTg=
1N2QxYzAxOTEyNGRmODA0ZjlmZmYyMDRlYTAyZDNiYjU4YjVlODRiYWQyMzU1NGI4ZmJiMDY5ZT=
JkZDJjOWQwM2U2ZDU5YmYzMjNlZjIzZjk3ZTM1ZTU4MjBhYTBkZDBmN2EzMDhkZGM0MjE4NGM4M=
zU1ZmQ0YzIwYzUxMWY1YzdjMzdhNGYyNzI0YjkzMjU3Yjc0ZmY1ZGUwMThhMGRjNjRhOGVlY2Ji=
Yzk0YmEyMWFlY2NkYmU3YmE0YzBkMzE0NDAwOGVjOThhYzg1NzU3Y2JmYTQyMmI1NzYyN2ZmY2R=
iYTJhYTY2MjMxY2MwNzI0YjBjOTM4NWYxNjY4YTQwMGNkYjdhMGZkOGMwM2ZiNTAxNmQwY2FkYW=
Q2M2IxYjQ2ZGZhYzM3NmVlNWQ0ZGEyYTU5NTgzM2UyYjRjOGQxODVhZTVmMzllYjJkYWNlMWExZ=
jQ5ZWY4MWNhNzNiNzZmNjgwMjQwMThkNDIwNzAyOTczODg2MjNiZTI1ODI2ZTk3MDg1OTllYjBl=
YTY0OTQ5MDMyNTU2NWY1YzlkYTZjNmQ2ZTU2YmQ5NTFlZGFmOWI0MDc5NDEwZWM4MWIxZjhmZjd=
lNmY1NGU5M2NmZDdjNGI4MTBkZWQ0M2I1ZTkxNTU2YTQ0OTY4MGY5MGVlODcwNjRmOWYwMDNiMG=
JhZThmZDlmZjEzYjY5ZWNiZTM3ZTczYWJlYjlmOGI2NjFkMTBkNDgzMDUyNGQ3N2QxMTQyNTY1Z=
mVhMjBjMDAwZDhlZDliYTUwYThmZTQ4MTdhZTY3MjFkY2M0ZGUwMzlkNWE5NjhiYWUyNTFhZmQy=
MTcwNGEyODQyY2I1YTk1Njg5ZjViMDFjMzk5YmMxYTRlOTljOTIzZmFmMzY0YjFlNTc5ZWY5NmN=
jNjAxOWQzOTUwNzY2YmE0ZjM0MDNmMDRkYjU0MTdmNjA0MDEyOTE2Yjg1Zjc4MjY2N2M5MmY3Nz=
k0YjQ3ZjMyNWQxZjk5MTJiZmUyZjMzNjAwZTk0ZDkwMmYxYWRlM2JmNWEwYzg4YjU1MGMyNzY5Y=
zA4NTMxZTA4YWI5YWE4NzUxYjdkNWNlOGQ1MjM4YTBmNjhhZmVlMTFiNTUy" style=3D"text-=
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
