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
aria-hidden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DZTA0MTZh=
OTAyOGQyNDY2YjE0MjQzMTczMjU0Y2RjZTZjYmFlM2FhMTMzMzRiOTc0MTY3YWY1NThmNTY0ZDE=
0ZDQwNTRjNDA0ZjI3NTdkZGY3ODM5MTQ1MjA1OGE=3D" target=3D"_blank" rel=3D"noope=
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
lhost:1333?u=3DYzkxMDg3NTEyMzE3MzY0M2M3ZTg1MTFjZmZjYjdjMTczNzRlMGE5ZjFiMmRm=
MGNlYTEwN2Y3OGE2YzBhNjE5YjYzYWU2ZGNhZWE5MDVmYzBmMDI5MmQ2NWJjZmYxZGJkZmE=3D"=
 target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0px;font-sty=
le:inherit;font-variant-caps:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;font-size-adjust:inherit;font-kern=
ing:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-s=
ettings:inherit;margin:0px;padding:0px;vertical-align:baseline">slb.cynet.c=
om</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=82<br aria-hi=
dden=3D"true"/>=E2=94=82=C2=A0<a href=3D"localhost:1333?u=3DNmI2ZWZlZmZmZGE=
2YzUyOTk4NjQwZGYxMTMwYTY5MGViYWY4NzA0ZjhkYmI4YTgyNzUzNzdlOTA4MGY2NGU2NGQwZD=
lmZmM0YzcwMDY4ZDYwYWE1MjQyZmYzNzk2ZGE3YTg4NGVl" target=3D"_blank" rel=3D"no=
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
jZiMDQ4YWI1MjZiMTA3MWNhOTZkYTAxNzUxNzY3MzYyMjkxZTljNzA4Y2RiY2JmZjhkZGRmMGI0=
Mzk3YmRkMWJmMDEyMzQ5MDYzNmEwMzcxOWYzNzJmYmE4ZGMxYzIyNDdjYTg0YzVlMDEzOTlkYWR=
mMTQwYjI1" target=3D"_blank" rel=3D"noopener noreferrer" style=3D"border:0p=
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
t:1333?u=3DNThhZjJkZDQ5OWY5MzUwMzQwMjkyMDBkMjk0ZGI5ZTA2NTFmYWZjZjAxNGNhNGFm=
YzNmMGQwY2QyNjFjNmZiMGMyZTIwMTViYzhiNTYwNTBmYmExMzMzZjkwMmI5MWVmYzhhN2Y0ZjU=
5NjU3MDM0MWUwMzkxNTIzMGNiMWI5MGY5MTY2YmUwZmQxNThkNDZjMzg0Y2QyZDNhMDVlMDVhOW=
U4NjVmY2YzMWQxYjlhN2QxODY3NzhhZGZhZDJiYTk3ODlmNjlhNThhODA5NzU5ODkwOWIyNTFlM=
zM2OTBhODE0NmU3NWM5NTI5YTRhZDFlNzQxYWQ4N2Y0NTkzOGU3ZGE0MjU5M2Q1N2RmMTQyYzU0=
ZmQ1OGQ5MTU4OWMzMzdlZDc1NTQ0NzdmMjk1NTdjZWE3NDVlZTU2MTc4MTUyOTM1Njc4ZTZlMGQ=
5ODk2MjAwNGYxNDBjYTdiODgzOTNlNjU5MWZlMmJiMTQ4ZDA2M2U0NDlkZjM2NTQ0OWY5OGQzZW=
IyMWM3YmYwZTNiMDkxY2Y1MDlhNTlkNzk3MDRmZDY4MThkNDBmZmRhODg1YmUxNmRkMzU3ZjQ1M=
zg2MmNiYTFhOTZmNGJmMTcyNjliYTNhYzE3NWQwYTJjMGM2NzhjOWI1ZGUxOGZlZTViZjlhNGZi=
Mjk0MGU4Njc0MWQzZjIxMDQ4OWJhYmQzZmM2MzI2Yjc3MGM5YWE3ODNlYTYzMzVjYjExYmI4ZGM=
5NTc5MjYzZDBlMjFhODJhMDRhYjM5MmU4M2I4MjJiZTAwYTk0NzEyYmE2NTQ1MWQ4M2NmODUxYj=
I2MjI5M2JlOWM3ZmRlZTFkNmYyNzJhN2M2N2JjZWNmMDZhMTc5N2MzMWZmMWIyYjM5OWMwYzdiY=
jUxZjhhYjIzZTRhNzAwNmExMTQzYzgxMDJhM2IyZjFjZGQxNmE3YmFhMTNkNjc3MjBmNGUxMWFi=
YjA3MTBjMjNlNjMwMjk3ODY4ODdkOTE1ZDA1YjliZTQ0ODJkMjk4NTgwNDVkNzM1ZmUyMGI2NmM=
4MTkxODVlNmQwNWJkOWQwNDcxYThjN2E3ZGY3YmEzMWJiM2E0MGUwMmQzOTc3MzYyNzc2N2RjND=
g0MTZlYzc2ZmNk" style=3D"text-decoration:none" target=3D"_blank"><img alt=
=3D"Honey" border=3D"0" src=3D"https://cdn.joinhoney.com/images/email/PayPa=
l-Honey-Logo-FullColor.jpg" style=3D"display:block;max-width:120px" width=
=3D"120"/></a></td> </tr> </tbody></table></td> <td align=3D"center" valign=
=3D"top"> <table align=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=
=3D"0" class=3D"m_44490807107789003em_wrapper" style=3D"width:480px;padding=
-top:0px" width=3D"480"> <tbody><tr> <td height=3D"10" style=3D"font-size:1=
px;line-height:1px;height:10px">=C2=A0</td> </tr> <tr> <td align=3D"right" =
style=3D"font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;c=
olor:#212121;line-height:18px"><a href=3D"localhost:1333?u=3DZjA2NTVhZDk0Nj=
ZhMTlmY2FhMjc0NmVlMDlhZmMzMjEzMDFkZTczNWY2NDdmMWI2MzBhZmE2ZjcyZGVjNDcwNjIyM=
jE5MDNlMDMzNTg3ZjNlYTQzNTZjYmVmMWFjYjUzNGU4Njc2NDYyMTg5OTFhYWE4ZmI2YzNlZjg4=
YjBlY2IwNDkyNDhmNmNlYTM1Y2E1MzUzMzM3Zjc5ODBiYzc1ZjRlZjIwMjZhMTU4ZjRmZjczOTE=
5YWY3Njk3YzJmNTI4NjQ5ZDQ2YzViYjIxZTJkZmRiOGY2Mzg4ZjlmNTdiNmIyYzBjNzJmYmY1Zj=
AyYzczMGFiNTY5MzY4N2VhOWEyMjZjYjRiNTc1ZTQzMjUxNTFmZTM2ODY5OGIzZTI0N2RkZDIyN=
jg5OTAyMTUzZmRjNmE4NzIwMTdiYWNkZGQ1NDAzOGRlMmYyZGYzMmZhNThiOTA5OTE1N2YwNTkx=
ZjFkNzE5ZWMyNDUyOGQ0MjlhNTA2NTM0ZmNmNDRiZmQ2NTAyMjc5NmYyZTE1M2U5OTczZTU2OWV=
jNjMzYTdlMDg1ODk4OWQzOTcwOTNhMzQyM2IwMWE4Zjc0NzAzODlkODkyMjA2MmI5YTk4MjY4ZD=
gwMDRkODk4ODEwMmNhNzM4NDg0ZTM2MmVkN2U5ZjhiMDg5MWI1MDZkNjY4MzQ2MWEzNjYxOTIyO=
DA4MjM1MWQyMjQ0YmY3Mjg4ZWVmNjY5NDZiYjAwOTE3ZDM2YmU2NjFiZWRlOTQ2ZDM5YTA2NmFm=
Yzk1NjNhZmE2NmJmNjQ2ZmU3MDI0NThhMzQxOGQ4ZTdiYjQxNDNkOThlNDlhNzY0ZjE2ODRlYzQ=
5NjQwNWI4OTVhYmRlYTZmNzUwOTQ0NDVmZjBkMzE5ZTg4YjE4ZTEwYzVjNzlhOGIyYmM1M2ZmZG=
VjN2VkY2JkZTcxNGQ1MmU3YTU2ZjRlYzZlNzhjYTA0YTU5ZGNkMzUzMDhhZDJiNDFlZjU1NzUxM=
2ViMmMzYjBkZWUwYTI5Nzc5ZjcyMDYwY2ZkMWE3ZTUyNmI0YTI0ZTIxZTRjYTBmNmZlZjYyZTc1=
ZjBiYmYzZmJlOGUxNmVhZjg1ODMxMTIwZTMzOTQyYzlhNTEwNmZlNzYyMmIwMGVjZTM5MTFkZTJ=
kNmEzNGVkZWU5YjIzNWVjZDZmZGFkMjE4NjQw" style=3D"text-decoration:none;color:=
#212121;font-weight:500" target=3D"_blank"><img alt=3D"PayPal Rewards" bord=
er=3D"0" src=3D"https://cdn.joinhoney.com/images/email/paypal-rewards/troph=
y_rewards_circle.png" style=3D"max-width:15px" width=3D"15" align=3D"top"/>=
 PayPal Rewards Balance</a></td> </tr> <tr> <td align=3D"right" style=3D"fo=
nt-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:14px;color:#21212=
1;line-height:18px"><a href=3D"localhost:1333?u=3DMjdiNDUwYTg3MDA2NGI2YjlmM=
jU0NmUxZDk3MmRjNWI3ZWQ2Yzk1ZDhmNjA5YzM0ZThiN2MzNjk0MmE0YjQ1MjA3NGVmNjYyM2I3=
Mzk0ODBlYWE2MDk0ZjM3YTQyOWEyMmRjZjEwZmFmMGEwYWRiOGI5MjM5YmJiYjVjN2RjNjUzMWI=
zMDc4YjE4YjFjZDM1ODc3NmJhNWRlNmQ4NjBhYTYzMjI5Y2M1Yjc5MDQ5YWNhMzk0OTI5MDRjMT=
ExODg1YjJiMDcxZWI0MjhkOTY0ZWYxNzc0MzVkNjAyN2M5ZTgyZDhiMmIwZWE5MjJjMjIwZjVlN=
TNmN2Q0MWI1MDU1Zjk0MWEzMmQ3YTc4MTg3MGRlOTU0MDI0NDA5ZWZkNWRmYjg5NGJhYzYwZjg0=
ODA0NjQ0ZTdjYTAyODkzZDgwODViN2MxNzI0NjE3ZDE5ZjIwZDZkNWUwNTNjZjYxMzUyNDBlYmE=
5MTA1ZWM4YzUwZDViYzBmZTc0ZjgxYzQ1YjdhNDNkYTcxMWJlNTE0NTRmNGRkYWM4YTdkOWU3OG=
MzNGQ0MTk5YzI1ZTE4YTg1M2EyZDdmNjVmOWQ0OTc3NTU3MDRjZTM3MDQ5ZWI2ZjFkYWJmYjkwY=
zMzM2JhNjU2YzhhZjQyNDgyOWU5MTY5MTY2YWM5NDIwMzJlMGE1YWY0MGQwYTY0OTk5M2I3MWI3=
NTNlZTEyMDY5NDljMjk1Yjg1OWQxZDhkY2M2NzFlODJkOGRjMTM2MTI4ZWRkMjE1MzM5YzJiMTU=
yMjE5ZDYwZTkzZTgwMjg2M2Y5MjFjN2RmY2ZlZmMzNWMyNDdiZDBjOGRhMDA4Y2Y3ZThkOGJiYT=
gxNmQ1Y2RmYjBhMjBmMzA1MjliMThmYThhOWU3ZjdkZmFjMmFjYzBiMjc3YzIzYTNlOGFmOTQxN=
WVlM2M3ZjNmZGM1YzczZmU2ZWZmMzUwNzFjNWUxM2Y4NmM1ZDU4Y2Y0OTE5OWJkMTJiNmEyNmJi=
ZjcyZWVjMGI4Nzg2MGQ5NWJmNjk0NDkwZjcwZTQwZWE4MjY3MTM5NjBkYTYzZjAwZGI1ZmRjYWU=
xMDI1NDE4YWJkZDcyNWEzM2Y5ZDZiMDJiOGUzODMzNjRjZTUzNWY2NzI5YTk4ZDdmMTA3YWY0Ym=
ZiYzgxYzExMzVhOTk3YTZiYmQ3" style=3D"text-decoration:none;color:#212121;fon=
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
=3D"middle"><a href=3D"localhost:1333?u=3DNjg3NWUzNWM5ZWRiMTM5NzFjMTczZDYwM=
jYyZGYxNDNhZTVjZDIzNWZlNjVjMjYxYzVlNjIyZTVhMTU5NzVjMDQzOTM0Y2MyOGUwYjdkNmNm=
NzQ5MWRmZDkwMTY5MTA4MzdiNzIxMTE5YzYzYjg1MWJkNDk1Y2JkYTFhNTk2Yzk2ZWUxM2M0NTZ=
iNTNhYTVhYWEzMzY5YWRlNzI2OTY4ZTk3ZmEyYjlmYTVmNGIxOTdmYjE4YjgxMmQ5MGE3ZjRkZT=
diYWQ4NTE5ZDVjNjY1Zjc1YTQ5MmZlMjg5MDZiMzRjODlmZTA4ZmRkOGI1NWFkODg1MWY0ZWEyN=
jU3ZmQ2YzQ0Yzk4NjgzZWZhYmEyNjM3ZDMzYWZmOWNlNzlkNzZmY2RjY2MzZTAwMDFkNWNjM2Y3=
ZGJiZDUwZTkxMTIxOTBjOThiZjcyMDFjYWI3Mjk4MzAzN2I1ZjU1ZGVjNTY1ZTA4NDYzZGMzN2U=
wZDA0NjI3MTM0ZGMxMDkxMzUzMDE5ODdmOGE0YTJkYTgyNGYxYmY2ZWE3ZGY2OWUzYTc4YzJhYT=
I3NTY1NmMzYWNhNTdkMDYwY2MyYTY1YmQ0MDZkNDkxN2RiZWE5MDUyMzI1MWFkZTNhZGQ5Y2JlN=
DYyYTA0ZjhmYjkxYTM1YWI3YThhNGE1ZjdkNzVlZGQyNTM4ODU3NWU1NDg3ZWMyN2UzNGZkM2Fj=
NDhlZDQ2YjMyMmM4ZWVkNWNkZGEyMzJlYTg0MDEwZjMwMzFjMzY1NGExMWRlNDQwOTlhM2ViMmE=
zOWI2YTAwYzRiODUzYzVlNjE2NDA5M2E0NGM4MWQxY2MzN2ZmMjY0ZjU1NWQ0M2YyODExNTFmZT=
RkZTVjZmJmNDNlNTU0MzlmMjAyNmU1MjZlY2EzNzA2ZDc3YjE5OTU0ODZlOGM0MjJhOTYzYjc2Y=
jI5ZmY5ZTY2OGUxNTQxOWFlNTIyYWEzZTAwMjExYjFhZDdmMWMzYzYwNzYxYTI3NmM3N2QyZGI1=
MzA1YmE2NjRiOThhYzVhNDA0YmQxY2UwZDc4YWNhMGY1MGRhYzQxNDljNjMxZGEwOWFiZDJlNTA=
3OWUwYjM2MjNhNTI1MGNkMGJkN2Y0OGJjNzAyN2E5MzNkNjhhZjExZmRmNTJjNTEyMDZiYzExOT=
BhMmQxNzc1ZmU4NTFlNTQyMzA5ZTNkZmIwN2YzODcyZDBkMTU3ODMwNzdlMmI0ODI3Mzg2YzQzY=
zRlYTZmYTJiOWRiYTlmYTVhOThhNTlkODhmNmM0ZDhmMTNlNmJiYjVjNDA5YzQ3NDM=3D" styl=
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
90807107789003em_full_img"><a href=3D"localhost:1333?u=3DMWM5MTUyYjlkMDNmMm=
M2MjI0MzUzMjI5NTQ1MDFmN2M4ZmVkMzIzMjEyZTM5YzIzMmQxMDAzN2Q0NDY2NmI1ZTBmNzBhN=
DM0ZDFkZjEwN2ZjZTNiODg3MDdjN2YzMzRiODE1MzU4YTI5YjgyZjM4M2FiNWFiYmFmOGRiOTc5=
YjNlNTYwNmM3ZjRhYWIxYTBjYTQxZjJhOWYyMDdmYTIyNjM1YmIyYmY1ZjFhZGQ3NjljZDhlYmY=
zYTg2NGI3ZDg5Y2VhMzZmMTZkNmJmMDhmNDdjZjRkMGRhZWJjYzgwMDBiNWU2MWNlODMxMzZhNm=
I4NmNkYzVmNmE1MDAyZGU4YzA5MjZlMzZhZmIwYTZkNWFmYjA1YjYwYzYzOTg1YmQ2OTI0Zjk4Y=
mQ1ZGUwMzlhNjkzODE4YTFjYjZjZTY3YTMyMjcwODBiYjc0NzgwMjYxMmRiOGM5YmZmYThjMmUw=
ZGI1YzlkMzQ5ZjI5MGEwZDM4ZjkxZDIzYTI2ZDQ3ZDcwZGNlNjliOTljNTc4MmYyODM1ZWRlZTZ=
iYmMxZWE1NzRmNGY0MjkzZTNkNmZhNGJmNTFmOTk3M2ZiNTU4NmMyZTY4YTIxNDY2YWZlMGIxMm=
U2MzdlN2UyYzNhYjhjYTRiNTFiODE0ZDgyYTc5N2RlOWVmMjJlYzRhMDQyM2U4ZmRiZDUzM2U1O=
DVmODEwNTBkMDE1NzBlZjc0YjRjMGRmNWQ1MDIyMDMxYjljZjU5ZDYwZGVlZGI2ODQ5NmI2ZTM1=
M2U0NDY3YmY2MzkzNjU2NzlhZWE3NjBhOWMzYjY3NzYzNTMzYmI1YTkyZWM0MzU2OGMzODhkYjB=
iZTdhOTg4NTE1NGU3MmM2YmZlZjljZDQ0YWZlMzViN2EwNzVmNGMwMTM0YTgzOTZkOGM5N2I0Mz=
g1MGM4YjQ0YjI5NGY0NjZkN2ZiNWNlMDBmMjMwYWY4YzJmZmUwNzVjOGU5ZjI3ZWUwODhkZmZjY=
zVmN2EwNGFhNzQ1M2Q1MjcwZWI2OTBjNjI5OGUzMGY2N2VhMjIwMmQ5NmRmZTU3NTliY2QzNDQw=
NTQ0MDFhNDYxYzUxYmVmZWNmMzQ0YThmMTMwMGIyZDRiNDU0NTY5ZjgxOGJhZmMwMTI1ZTE4ZmF=
hMmYwYTc0ZjE2ODEwMThjNjVlOGU1YTcxMDRmODMxOWJlMTk0MjExMDQ3M2Q0ZTMyYjUzZWE3ZW=
E4ZWEwMWI1NTgxYjE5NWQ5ZjdmY2Y3YTE5NDZjNTkxMWNhNWFmMWE3YmM2YTk0MGFiZGIxNjk4M=
TcxZTM=3D" style=3D"text-decoration:none" target=3D"_blank"><img alt=3D"Get=
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
=3D"localhost:1333?u=3DYmExNDI1YWZhYjUzZTY0ZmU3MGViNGNlZmI4ZTdkMzBhNzNmM2Qz=
Yjk0MzFmYzZjODY5ZmM4YjJlMjNmOWY2YzE5NGMxNDg4NzJhM2FlNjM4NTQyZmRjNTI5N2U4MjA=
wOWRlYjMwYmFmYzRhY2FjNDZmYmYzNzkzNTYxYTY2NjE1ZmVmODNlNmI2MWRlMzBjNWUwM2NiOT=
E0ODU3MDhkNDMwYTlkMjQ1ZDUzMWY3ZTZlNGM1ODRkZDQ1YjY3OGU5NWY4YzFlY2E5YmVmZWFlM=
2FkZjRmMzQyZmZkNjAxYWYwMzMyMDEzNDdkODljNDllZWM1OGQ4MmU2OTA0Mzc2MTVjMmM3ZjIy=
MDdmZTg3OTEwYzExMGZjYzRjODk5NjRkZTY4YmY3NDM0NDBlNjBlNTEyNmY2YTc0YTRiYmJkOWZ=
jMzFkYzM4NjRhYmQ5OTc5Yjg4MWVjOTM4YWE1NTY1MjhiN2NjNWUzNWJlMDY4NTkyZmYxODBhMm=
MxMTdiNDVkNDFkZmIxNTRkYTIwM2YyZGRmYzdkZmUwNjVmOTExYWY5NmU2ZjY2OWQwYWJkNDg4O=
Dc2ZjIwN2RiM2RiNzExYTQ3ZWQzNTRmMzAxNmUzOThkNGNjMDllOTYwZTZkMTJiYzljNjc4ZmEw=
NGY3ZjAwYmEyNDgzNDI4MWNiNzg4NTcyY2IyYjEwZjEwMGY3MzcwYjIxZmRiZjI2OTI1MWJkNzN=
iM2U3NGMwMTRlYmRmODM2ZmRkNzc1YzllN2U4NTFlNGJjMGVjNTllNWM5ZjY2MTM1MmQ1YWRiYT=
MxYzQ3Njg1ZGE5OTBiOTI0MGVmOTgxMjUxNmY4NTdjNjViYmFlZjJkNjI4MmE1YmIxZGYzMzM1N=
TIxYmMwZjRlZjYyMDA3ZTM3NGRiMzRlYjM4NmM1NDA3NzBmNDAxMjY0YjJiYzJiYTI1YWYxMWVl=
YzBjY2UyNTRkZGFhMzU2MmNlMzliMmIyZmUxNWE5MzA4NTY1YWQzMTg1YjliZWM1ZDJlZTNkZDB=
hMjkxMTBiNGZjYjMyZTVjMjMyMjU4YzNiYjhmMTFmODcyZmY1MjI1N2RiOTVjYjNjOGNhODA4ND=
cxNWQ5ZWJjODEwZTc0MmQyNmFjYWUyNDk1MDQ2MTVhMGE0NzJjZGY0MzkwMTUyNWQ5MzM0MDFiM=
DVhMDgxZWU0NzA3NDI5N2FlYjFmOGViYTQ1YzE5ODVmMmIyYzA0MTgyNTMwNTkwMTMyYjI0YzEw=
MjJhNDg4NjJlMDZlOGE1YWJjZWM0MWFlY2VjNDc1ODIyYzI=3D" style=3D"text-decoratio=
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
t Honey for mobile Safari <a href=3D"localhost:1333?u=3DYzZlNzFiMzJkYzI5YzI=
4MWNjYTQwMTllYTAyNDI3OWNkZmUwOWI1ZGEzMzM5MTJhMzJiNDYxZGU5MmRiM2EwMmUwYmM1YT=
MzYWUwOTIzZDllNmQ3NDgwN2ZjMjM5ZTEyMmEwZDJlOGFkN2FmNjVmYTVjZDg0NjkzYTIxNjU1Z=
Dk3NzMxYTZkMjA0NzFiNjlhNGRkNTMzZDU4Zjg0ZjBiYWVjNzQ2NjM2ZTA3OThkN2U5NjY1ZjI3=
OWU5NDRiNjZlYjFlZDgxZTllNGM1ZmVlNDc1NzEwNGQ5Yzk2MjFhNzViNjc1MWExYTM3YTRmZDY=
5YzUyYjVjMjllNTk2MjBmN2Y5N2E5ODQ3ZjY1Yjc2Y2Y1ZmVjMjFjZjE4NTMxYjc3NTlkMjcxZG=
YxNTU1MTUwYjhkNTcwZjYxZTJmOWJjYWVhNmYwNDFlOWZhMjMyNTZkZjA2MzgwMGU1OTg2YzlkY=
WM0MDIyZGYyY2Y1ZDYwZTQ5YjNmYjM2YWJiOTgwYjc3N2QwMDFiNjA2MWM0NmU4YmE2ZTA5MTdi=
NTE2NGRlMWNkMWNlZDQ4ZWYxZDJiZDAxZjI3NTZiYTNmZjAzOTIyN2I2NTcwM2I5ZWU5MTIzNjA=
xYWFkZmNkN2U2OTM2MWJmNjA1YjE1NjhjMjdkZmU2ZGRlZmY5MjcxODRhZTczNjFhYTRkNDkyOT=
YzOGFmMWRjMmI5MjIyYWU0NDU4M2FkZjgzZGI2OWVjNDRiZjU4NDUxZjBkNDhjZTFhMjJhNDFlN=
jNlOTEyMmIyYTZhMTJiZTNkNzI5OWIyMmQ1MzRhNTFjN2E0NDE4N2ZhMWZiYWM1ZmIzYmRkNjUw=
ZDAxMzNhNmIyYTAxNzViYTExNjIwNTJhMmQ0NTVlYWNhMTgxMGQxZTBhMDU2MjMzNWM3YmY2N2Y=
0YWEzMzExODhkYzU3NTJkYWQyOTRhZGIyN2I3MzkwZjVkMTBiYzA3MTgxNzJkM2Q3YjYyNDBkNW=
EwZmZlNmY5OWE4ZTQyNjdhZjQwODEwM2QyMjJmOTMxYmUzMGZmZWQxMTBiMzRkYzFkZjM4M2Q2Y=
zg0YzljZGUwNjFiZjQ0OGZiNzY1ZjZkMmU4YTU5ZDRhNTFkNTU3MGU2NzA4ZDljNTMzM2UyY2Q3=
YmU0MGVmOGY0ZGU0YjhiNDUyNzE4NDkyOGZlMWNlMTUzNDc2NjMwYTc0ZGEyYjFiM2ExZDE1NWI=
1OGM1OWM0YWIxMzVlMzY5MGI2MjQ0ZWIyODI0MGJlMTA0MDNlYWZkMTk3NTVlMjEzNmNmZDZkYm=
EyYWI=3D" style=3D"text-decoration:underline;color:#757575;font-family:Suis=
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
align=3D"top"><a href=3D"localhost:1333?u=3DOTAyNjJkNjgzNDZiZDM1NzkyOGMyZDQ=
wMmQ3YmUwZjJhODc2OWRiYjRiYTQ0ZmRkMjFhM2M2M2Q3NDNhODdhMTRjMDEwZjQzMDc2Nzg0NG=
U1OWZlN2Y3ZTA5ODkyOTlkNjNhODJjZGZiZjQ4ZGI1YzM4Mzg4MzEwYmNiNGFlNTViZWQzMTZjM=
jMxYzg5ZjFlODdhZGViODVlNjAzMmIxZDk0ZTAyOTI2ZDIxMzQyYTBhNGZjYjRhMDdjNWJkYTQw=
YWQ3ZGI5MDg0MGM3ZGVmNTk3Njk3YTMwOWZkOTJiZTc3ZDEyZTJjYWE3NGYzYTcxOGNiODU4MmE=
3NzgxYjhmNDdkZjUwNGM5ZjIwMzBjZDdmYWM0Mzc1NjVjNjNmNTZjNDRhNmE3YzRjYjliNzYyYT=
IzMDMwYjU0NjgwYWM5ZGM1MTY2YjY5ODYyMGIyOTU0YTVlN2QxYjE0NGJlMmJkZWEzYzViNDU5Z=
jU2NmFlNmRmOWJiN2QwMzAyNTNhNGY2NTJhOTBkOTZjMDFmMzYyY2JlYjY5MDcyMDQ5OTBhMmEw=
MDExZGZhNDRmYTZmZjIxOTBkY2ZiNTMyNTZiYjQ3MjYyNTJmYzkzODY1Mzc3NjVmZmZjNGI4Mzh=
jNTgwZWI0MjViNTMxMGE4NWM2MWZkZGZjNTViODViNWE5NDAxYTAwNjljNmQwOGMyMjFkODQyYW=
JmNTQxMzY4OGIwZDgzODc4Zjk1NGYxMDRjMTgxY2JkZDBjYzFiM2Q0NGFjZWFjNmE3ZDE3NGVmO=
TE1YjFiYTA2NzE3OTUxNWIwZjIwYmYzYWFkMmMxMjliYjZiODgzYjdjNTRiMTM5NWZjNjE1MDYw=
Y2ExYWM4NTAxMGQxY2U3NTcyOWUzMjhmMmNhOGEzNzNmZDNiMDI1NmIzYTZmMTZiMDMyYmY0YzY=
zMGU0MTEyYzFiNTIyNTdmYzUxZjU1NjM1NmEzMjkyNzE0NWM5YjY3YWY0MDJiODNmOTQ0YzZjOT=
k0Y2FlOGY3MjMyZDU0NDhmNTU2YzU1NzQyZjkxYjcxMzI4MjE2OWY1OTBhMjVkNzFjZWRhNjA3N=
2NhMDI2OWJjNGI2ZjM2Y2VjYTY0YzBmMzczYzg3ZmQ4MzAz" style=3D"text-decoration:n=
one;color:#616161;display:block" target=3D"_blank">Explore</a></td> </tr> <=
tr> <td class=3D"m_44490807107789003hide-desktop" height=3D"1" style=3D"hei=
ght:1px;background-color:#bdbdbd"></td> </tr> </tbody></table>  <table alig=
n=3D"right" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" class=3D"m_444=
90807107789003em_wrapper" style=3D"width:188px" width=3D"188"> <tbody><tr> =
<td class=3D"m_44490807107789003hide-desktop" height=3D"15" style=3D"height=
:15px"></td> </tr> <tr> <td align=3D"center" class=3D"m_44490807107789003em=
_defaultlink m_44490807107789003footer-nav" style=3D"font-family:SuisseIntl=
,Helvetica,Arial,sans-serif;font-size:16px;color:#616161;text-align:center"=
 valign=3D"top"><a href=3D"localhost:1333?u=3DZjhkYjNlZDUxNmVhNDgzY2FiNTYyM=
2UzNmJjMjk3ZWI1NTAyNWIyZjk0OWY3NGM4ZWQwYTI3YWNmMzkzMDM2ZjEwZTM2MTJhZTllNGE3=
MGM4NDIzNjJlNWExNGMxMDEwYzBkY2M4MDg4YTkyMDI4OWUxOGNkMzBmYmEyOGJkZTllNTdmMTl=
kYzgyM2JiM2JlNTE0MmM5OGU4ZTZlNjU0ZDNlMGRjYzdiOWE5OTViYTcwOTVjOTFmMzEzZjY5Nj=
dkNTI1Yjc0ZTQ5OTU5MTU0ZjY0MDA3MmVlOWM3ZGQ5OTQ5NzhhODU4NzNhZTgyYTI4NDc3YmE2Y=
2YzZGU0MzI3YjFjN2Y5MDhjOTVkZmFlMzcyNmQyNzhlNDMxOTc4NWEwM2YxOTQwNGJjNzgzNWYz=
NDY2Mjg0MGU4OGRlNDJkZjc0NjM4NGI3Y2UzNTcyYjU5Njk4ZjJlZGQ5M2E1ZTI2YTZiMTc3YTM=
wYzcxMDYzOGQ1ZmMwNjdiZGVjZjZmZDRhMWE5MDAyMDMzMWM3Mjk4MDEyMzIwZjg2NmFmMmNjN2=
Q4MmJhZTAwYmVlMGE2MzVmYWUxZDQ0ZTU4NzY5NTRmMTg5NTc4ZTAyNzU5MDRjOTM2MTQ4MWVhZ=
jk5ZmY3NmQyNjlkZDg2NzZjMzM5NWQyMzUwOGQ1ZjY3ZDY3ZTU5NjkyNGJkYTVjNmVlY2M1NWZk=
NjE2NmNhYWUyMzRmNDMyNDU4YTMwYmIzMjg1NmMzMDJmMmRiZDlhZTU4ODNlNTUwOWVlYTBhYjF=
hYjNjODdiZDU3NmY5OTRjMDVjYWU4OTJjMmUwNWFhY2U1OWJhOTk0NTIxZGRmZGU3Yjc3OGMzZT=
E4Y2M4YjUwM2MyMmE5NmNmOGM4M2MzODQ2NTJlNmFlNTY1NTg0N2QzZGY3NDQyODBkMmQyNzZjY=
mExZGFlNWI1MGRjYmQwOGJiNDg3OWMwN2I4OTUyZDE2MTNlNGI1Y2Y1MWM4NDhmNzg3MTBjYTc1=
MTE5YzZjZDQ2ZThjZmQ2NTUzYWVlNGFkODBiZTRlNWYzYTZiMzc1NDUxZDUwMjNiMTA0OWIyNmZ=
iM2VkYWY2MDA3ZDQ2M2ZiZTI4MGZmNjZjYzMxN2M2MjdlYTNh" style=3D"text-decoration=
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
=3DMGIyZjNlMTY0MDk1NTNmYjVkZjYwNTlmNTE3Y2ExNGZlMjk4ZDE5YjZkMTQ4NDU1NTliYjU1=
ZjNkYjM1NTYzNmUzYjg0MjRiZDMwOWFlNzk4NGU2NWViMzM2ZTM4MTNlNDc3Zjc4OGY3NzA1ZGZ=
hMTI3OGNiZWNkYWVlMzU3MzFkZDVhZDNhYjAzZWQxNzBmZmQ2Y2NlODJmNTQyOGYyMzk3ZDZkMj=
ZiM2Q3ODNlOTA1OGVjOTVlYzhiODBiNzc3YTY0NGVkMWJmOTk4NGI3NTBkZWViN2U0NjI4MTRiN=
DBiYjY5YTA2N2M0NDQ3ZGVmYTI4MDgwM2M0ZTM4NzQ1ZWViMDI5ODg2NDFkNWY0NTE1MWM3ZmYx=
ODg5NGM4OTZiZTI1NzczODgxZTViODg4NjMzYWNhM2QxYTdjMTdmOTc1OGEzOTI1NjdkNDAyNjN=
lMDEyOTk1ZTZmZGFjMmEzZTVlNzNlYWJhZDE1ZTM3NmJmOTQ2YmJlNTU4NDg5MzI5Yjc4YzdhMz=
gyYzg2YmFkODViNTQ3NDhhODI2NmVlOTZlMzkwMTRlYTVmOGM1NWY3MWE4Y2YyYjMwZDA0N2I1Z=
TkzYzM1ZDdjNTFmOWRmZjk0OWQ2MzU4N2ZlNGY0YzYwZTY0YWM3NzJhZGZjNTM1ZDg3YmUxZTgz=
ZTNlOTI0NWY5MGIwNTdjOTMzNjg2OTQ4MGIzNDEzMDhkMzBlMjQ2YmRjZDhiMmM3OWNiYmZiOGY=
0MTViNWYxMWYyNWUyNmI1YzU5MDUwYWE2YTc2ZTg5NGMyODlhYzU0Yjc0YWIxZGI5MzUxYzQ0Nm=
ViM2M0MjhmYjA0YzEwYWZhMGQ3ZjlhOGY3ZjFhZjliMzU0OTEzZjlkOWM2OTJmN2E0Mzk4N2RkN=
GVkZGUxYTgyZmFjMzExNmZjYTdhMmEwOGVjZTliYTU3Mjk3N2I5MjUzNWYzZjMwZTAzZThiZTgx=
ZDYyM2ZmMGUzMGQxYzQ0MWI2ZDE4ZDg2OTQzYzNhYTVlNjVmZDQ1NmE5YmFjMGQ4ZDM1NDExMTl=
lMWZiMmFmZWExMjRiNGJhOTgwNzgwMzIyNWU1ZjFhMzViYjI0YmM3OWYxMTIxYmRhM2Q2YjVhNz=
E3ODJjZDRiNjE3ODhjNmFhNWZmYTEwZjFkOTY3NzY5NGY2MjU3OWNl" style=3D"text-decor=
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
NTY3YWU1ZWY3OTRkODQ1NmVjNzBmMDkyOWJmMjFlOGM4ZTYxOTU5NzE4NWFmZjUzYTY0MGVkODR=
iM2ZkNzliNTJlMGMwNmY1MmExZmIxOGQ3ZTU2YWExNGM5NWJkNGVjOTMxYzMxNzU4ZjRlYWQ1NG=
IwMjYxOGM1NzZhNDhkYjMxNDQ4ZDg4MmJmOWY1MTBkMDYxMjRiZDM4ZWZlOWM5YzRmZmQ5ZTkzY=
mY0MmM1MzQ5N2I5NmRkMjIxNzNkNGY4NDA2OTkwNTJiZDIxNTI5Y2ZiNzRhNGMxZDdmZDMxZTk3=
OWNhOGE1ZmFmNGFlMGJiNWE4YjYxNThjOWE2Mjc5YmM5NWM2ZTNkZTkwYTA1NzRmYTM1ODAwOTY=
yMmRkZGM0MmZhY2NhOTEyNGM5MzUzNDk3NmQzODQ4MTkzYjIzNTJkYmVmOGNiN2ZmZTUzYWYzNG=
JhYjA1N2E1M2U2ZjUwNWQ1NjExYmVjNmJhMDE5YTAyZTY2MDdmMmVhY2JjZWIzNjc2MmMyOWQxY=
jMxZDA4YzZjY2E5ZDIyMDVkZWQzNWVhMzdiYTlkNmIzODAwYjgyMmFjNzY0NjZhM2JkYmZhOTY3=
N2IzYTY5ZTQ4ODAyZDc3Mjc4Zjc5ZWNlNzU1MDlhZWU4MmQ4ZGI3YmJmZmE5ZTc3ZGFhYzFlYzN=
lMDgyMDQ3N2M2MzRjY2RhYTUwMzVhM2U1MWMzOGRjZDQxMzVmZTc1ZTNlZDRhZGY2YjFlMWUyYW=
Q1OTA5NjNiMjg1MjgyY2NlYjI1YzFiZGI3OTExMDAyMWRiYjUyZTZlMWEzZjI3MjE0NTY3Y2EzM=
WFkMGQ1N2I4OTM2ODE5YTM1ODI2YmUyZmY0MDJlZjQ4ODE2NmY3YjM0YWQ1MzgzZDM2MjI5MThm=
YTU2MmMwYTY4NWU4MTBiMzI5NTdjNjRjN2MxNDZhY2RmODUzOGEzZDI5NDVhNTY2ZWM4NDAwNjN=
lNzRiNDExM2IzYTYyZDU4NzYzM2RjNGExYTMyMTVhYmEzZTYxZTRlYTNmNDdhNzU4YjU2ZmM4Zj=
FkNjZmYzc2NTAwMjZjMjkyY2VkMTFmM2RiZWMxMmQ4Mjk3MjczYjVkMGU0NTg0YWE1MDQ5ZDAwY=
TI5" style=3D"display:inline-block;margin-right:45px;height:24px" target=3D=
"_blank"> <img alt=3D"Facebook" src=3D"https://cdn.honey.io/images/email/we=
lcome/welcome-social-fb@2x.png" width=3D"24" style=3D"border:0!important;ou=
tline:none!important"/> </a> <a href=3D"localhost:1333?u=3DM2I2MjVkNTk3MzNj=
ODQ4NjE4NDBiNThlMWQ3NWQ5YzA3ZmZkYWQ5YTkzYjc2MTc3OTRmYmRiMjllZTQzMWM3NzA1NjY=
xN2M1ZDg3ZWY0MGI0OTc4M2YzNDQ3NGVkYTMwMGE3Nzg5ZDk0ZjEwZGMwNDM3MzNiODdmNWQzZT=
FmOTYxNzFmYTJmYWY5MDgxNDNmOGJiZWE1MmQ3ZWMzODBkZjM2OWVhZjJlYjY5OTFlZGYzNWRkY=
ThiN2UxYTBiODhhMTBkN2JjOGJjYzcwMTIzNzljYzcwYWJhNjg0YjBkMDY2OTU2NjBiMDUzM2Vk=
ZDZjMGI3OGIwNTVhNTEzZTIyZGI2MGMzOWMwYjFjZWQ3YTM1NjZhZmQ2ODg0ODQwYjdlOTNmMTB=
mOGRmMGI1NTFhMGUxOTU0NzMyNzVkNGViNDYwYmY2YmEyM2U1NTBiZTIwOGI0YjgyNDgwYjY0OD=
c0M2U3MzQ1NThhMTkzNDk0ZjRjYmQ0NDE2YTlkODJjM2M3NGZlY2NmNjE2MzY0NTNhYTFkODA1M=
GQ0NTczMzg1OTRhMWQyNTllODlkMGIyNzM5NDg2ZDQ4MzU2NDI4M2QwYmJlMDIwMDJkMWE3Y2Ew=
MzJmODRmMjk0MTc0MmJmMTAyZDcwZDI5MmU5MmEwYWM2MDhmMmU3NWI0YWQyNjg1ZjA2ZGE5Yjc=
0NDZjYjY0MWMyN2FmYTA0NmY4YWZkNWYwMjQ5MTExNDk1YmQ0Mzk3YzIyZWVhYzViOWQ1MDc3NT=
VmOTE0Njc5NzdmZWU2NTQxYTExMmZiMWQwNzM1NTQ2MzZkMzlhNDM2Mjg5MThhZTMzZTE0OWYyN=
TkwOGZkYWNhODhmMDIzMzBhOGM4NWU2NmVlZGJjNTdjOTBiODg3NjcyMjIzNTMwMWEzOTBiZGMw=
OGQ3ZmRhYTI3ZmYwZDRiOWZmNDkxNDg2ODZmNWVhMWIzZTlmMWI5MzhhODkxYjAwOTIwZmNmMmR=
kMzcyMDE5NzE5NWY4OWQ5OGQwNzRjYjZkM2FhNjM5NjczZTFjMGNiN2M1YmEzZDBkZTVkZmQ4MG=
Q3NTJiMjhkZTA5MzhiZDc0MjQxNjQ4ODdmYWIzNGU5M2Y0ZDkwOGJmNjk4NjIz" style=3D"di=
splay:inline-block;margin-right:45px;height:24px" target=3D"_blank"> <img a=
lt=3D"Instagram" src=3D"https://cdn.honey.io/images/email/welcome/welcome-s=
ocial-instagram@2x.png" width=3D"24" style=3D"border:0!important;outline:no=
ne!important"/> </a> <a href=3D"localhost:1333?u=3DYzBlMTI3MDNiMTZkNTU2YmNm=
YmQ1MDdhYjkwYWJmNTU4NjUwNTRhOGRjYjIwNWIzZGZkNWIyMGQyZGI3MDdjM2NmZDJjMGRkZWN=
lNWFmZDAxZWRjMzgwMzA0OTRjMjQ1ZDljN2VmM2M0YmFmNzIxOTk2OGY3MjRmYTE5ZTI4NTA0Ym=
FmYWU2ZDM2ZmNmYzdmOWI1MzNhYTM1NGEwZGFiYTQ5OTMyNjlkOWQ0OWI4ODI0ZTQwYjMxMDI2O=
WJlODBjY2U5OGIwYWQ0NDM0OTFhZWM5ZjJhOGRlMzdlYmQwMDg1MDZjZDVjYzAyNjI3ODk0YzYx=
MWFkYTEwMjZmNzE1MjJhYzFiMjJlMjVmYWNlMTdhMTcwZmFmM2FkYzc2OTAyYjBiMzdlODE0ZDc=
0YjY0ODNjMzUyMzU2OWIzOTM1NDlmOWI4YmY3ZmRiMzZmYzc1OTJkZWMxZDcxNjA1NmQwMmU4Mz=
diZTI2ZGQzZDlmNDFlMDY1Njk1OWYzMWMyMzAzMTNiMzc2MzYxMTU4ZmJhYjY5YjdjNWQzMWE2N=
GFjYTViMWVmZDUxM2Q3YjU0ZTE5MTM1YzM2YWY0ZjlmMTE3NWNiMjhkYjUzOTM3MmNmNzNhMzM3=
NjgyNGQ2Mzg2MDk5ZmQ1MDQ5MTIxMTdhYTUzM2E2YTlkOTMwMmRkZTQwOTE0ODQyODk0YzlkYWJ=
mM2ZlZWI4YTQyZDE0ZjkzYmIwMDU2NjRlZjBhNjgwYTdlMTNhMzVmNmUzNmI3ZDMwYjlkZTBjMD=
ZmN2M4YThiMTFhZWQxNzc2MzUzZWExMWQzYmRhNzU3NWRmZWNlZWE0ODNiZTkyNGFjNTlmNDE1N=
mRlMDMwYjdkYTczMmVmYTY4MzBiZTk0YzA0OTFhOGJmOGI4Y2UwNzI5ZTQ2ZjlkYzI4Nzg3YmQz=
NjllNmEwODczODQzMDY1YzA0ZDljY2ZhMjFkZTUyM2YyMDUyOGYwMDUwNmUyYjllNDNjYWYyOTN=
hNTVmNjIwMzkzZjhlNzViMmJlODQxZjBkNDUwYWQ3ZmFjYzY3MDA5N2M0OWJhZjYyNDNiMTRhYz=
AyOTcyODQwNzAxZWNkYjIxOTBlYWQzZTRkYzEwOTY3NTJjYzBjMWRm" style=3D"display:in=
line-block;margin-right:45px;height:24px" target=3D"_blank"> <img alt=3D"Pi=
nterest" src=3D"https://cdn.honey.io/images/email/welcome/welcome-social-pi=
nterest@2x.png" width=3D"24" style=3D"border:0!important;outline:none!impor=
tant"/> </a> <a href=3D"localhost:1333?u=3DMjM3MGE4MDEwNjgyYWYxYjlhMGZmYjU3=
ODExZGEyNzIzODUzYzJhYWE5MzQxMjhlY2U4NmE0ODQ1MmI3ZTdiYjc4NDI4ODJmZDI3NmQxMmE=
4NjQ4NTY3OWRiMTRjY2UwOGRjNmJiM2U5NTk4NGQxOTIwMjY1NzM0MjIxMmE4NWI1Y2YyMjc1YT=
k5Y2ExODdlZjA4M2Q4YzQ5NDcwN2JlY2RkNzVjYTJkZmIyNmY5MGE3M2VjYzY4ODk2MmFjZDIzO=
WFhYWQxZmIzNTVjMDYyN2UyZDNlOGM0Njk2NTZlODIzNTViZjQ5NDQ4NGViNTYxYzU4ZWJiODEz=
NWNjZDNkNTI4NTZkODRiOTFjMTU1Y2E2MTYxODlhN2EzMGIzZmIzZTU4N2IxNzMyZGI1ODNjYjV=
hOTk0NGIyNjA2NDBmYzBkMTE2ZjczY2NmZjk3NzQwYWRlZGQ0NTIyNmEzNjlkOGZkOGMyNDVhZW=
M1MWU3NjM4MGE2ZjA4MTJiZjNhZDEzMzU3ZjFkYTIwZTNkNTkwZDg5MDA0NzEwMzA0ZjA5NmIyO=
GNjZmViZjc0ZDQyOTZhMTZjMTc3MWViZTc5ZDYyZWMyNTFmZGUwZDdhM2UzOTZiMjI5NmY3NzFh=
ODliYjQ3OTVkZWNiNjJkMjVmNjRmZGFjMGJlM2E4NTIxYmFjODExYTA1ZGU4OTc5NTYxYzQ5MDI=
1YmQxM2IzYmI2OGI2NWU2MzIzNTNhM2JhYWI2MzY0OWVlYWNlMGJlYjJkZmFmOTYwYzcxYzMyMT=
QyY2QwYWZiNzE2ODM1MDM2ZjAyNjg1NmUyYjAyMDIwOTBiM2I1NjdkNGQzZjhiNjJiN2RhN2QxM=
mUwMmM3MTRiZDNlODljMzFkMzdkM2RiYmRkNWY4YWFhNDFiYTY2YmI1Mzk1NmIxZGE1MWUwYzcy=
ZmNhODFkMjkxN2NlMzUwZWZkZjU2NGY1NWYxM2IzZGYzNTk2NjM1ZTZmNWQyMjE0MTk0NTU2NmM=
zMTAyNzc1ODg2ZmIxYWFlMDY4N2U0NjZmZGY0ZTllMzIzM2I5YjdkN2FhNjdiYWI0MTY5MTE4Yz=
Y3NWEwNDUzMGIyNDlkZGFmNzBlZDE2NWNhYzEzYTFiNGMw" style=3D"display:inline-blo=
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
lhost:1333?u=3DYjA1MGZkMWQ0MDNmNGE2N2Q0NTVlMTc3Nzk1MWQwZWRiMDMxZjQwOTRkMDQ4=
YmI5M2QzMTQ1OWVmNWY1ZjU3Zjc3MTY3MTUyOGQ3ZDcyNmEzYTQ5OTMyYTRkN2U4MjVjMzgyNmQ=
zMDQxOWQwZGRkM2Q0YTEzYWM1OTExNzcxYTA2NTYyNDMwZThlMDEwZWNiMDdlOWEyMDIzMTAyOT=
VhYmJhOGNiOTg1YzUyYWEzNzA0YThlZWYwZjllNTVjYTAxNTQzZWE3ZWM1N2UzNTM3ZWJlNjhhN=
jljNDcxMzlkM2RiZjA4NTE4N2E1YTE5MDdiNGEzYmYzNjJjNzI5NGFhOTM1MmRlOWY3OTJkZjc2=
YjAwODk4NzU1YmVlMzZkZGE4NjE0NzdkNDhiMzM3Yzg1ODc0MGUyZWZiZjAxNGZlNDFkMDMzMTl=
lOWVkMDVkYWU3ZTk3N2FlNzJiZjczNDFjOTkzZWM3M2EzZTU1NTQzZjU3OGVhYjMwZTI4MjAwOG=
EyMjZkYWI5OGE0NGE5NTkzMmY0NjI=3D" style=3D"text-decoration:underline;color:=
#757575;font-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;fo=
nt-weight:500;line-height:16px" target=3D"_blank">View this email online</a=
>.<br/><br/> You are receiving this message based on your Honey account set=
tings.<br/>  <a href=3D"localhost:1333?u=3DNmI5ZTNlNWZkOWQzMGIxOGE3YjhjNDRk=
Nzc5NzEzOWUzMzE2NjMxZWRkMzZiNjFiZGRjYzdhZGY3ODQ1MDk1ZWFkYjE4NDJhZmYyODc4Yzl=
mMGY4ZDU3Zjk2Y2Y1ZDk4Y2IwZWVlY2Y3MTNmOTk1ODQ3MTJmNGEyMTI0NTQxODM0MThmNDM3OD=
MwZGM3NWE1ZjYxM2VjMWQ4ZGFlZjdjMDlhZDE3NmIzZWViODU3MDgzNmQxMGU2ZTU3YjBiNGI4Y=
jU2MDBmNjViMzUwMGU2MDIzODE1ODhkMjM5NDdjMmYzMjkwMGI5ZGQxMTlmN2NjOThkMjZlNDY4=
YjMzNjI1MDJiMTQ4OTM5Mzc0OWMxZGZmZjU4MzE2MWQ3YjFjNTkyN2FjYTcwOWYyZTI2N2Q0ODV=
jY2MwY2RiODdjOWNiYjVkZGI5YThjYWNiMzQ1OWEyZWFkZjFlZTA1ZDMxZTRmYjIzOWVjZmU5Nj=
EwMWYxYmJiZDIyMTkzYjRiYjlkYzFhOTI5ZGJiNzYzNzEwNzkzMzA5OGJlMzFhZWIwNjU3ODZkN=
2M1OWFkMTRhNWFlOWE4MWY4OTY2OTAyOGNlMzMyODU5MzI4MWE2YjJmN2IxMGQzOThlYjAzNWI5=
YjlhNjc2NmQxZGRkNmVlOGJmM2Y2MTY5YjJmM2ZlYjU2ZDYxNDk2NjBmZjI5NzRhYWU3M2Q1MDI=
1NDEzNzZlZTk3YjI3YTcxMzFjNWYxOTFlYmM3NmM5NjMwYzkxZTNkODY5ZmY3YWNhMDE1MmNiZj=
YwNzQ1MGQzZjc5Y2QwN2UzYmM1NTkwYjg4MTZlYWJjZGUzYjBmOGI2NDIwOTIyMDIyYWFhMTRiO=
GQ1ZDRjYTFhYzdmYzM=3D" style=3D"text-decoration:underline;color:#757575;fon=
t-family:SuisseIntl,Helvetica,Arial,sans-serif;font-size:11px;font-weight:5=
00" target=3D"_blank">Unsubscribe</a> or adjust your <a href=3D"localhost:1=
333?u=3DMzM2OWFhOGZjNmM2ZTViZmNjYmMyMmFiMDQzYWEwNTU2ZWY2NzgyMDcwNTA3NjA1Yjc=
4NDE5Mjg0NDhlOTU3MjE4Y2MxNjU0NGJkMGVhMGI3OWJhNjk4OWU0Zjg1YjA5ZGQ4ZWM0ODE3OT=
QzZWM0NDBjNTgwZDdkNGI1MDBjNWI0MzI2YjRjOGJkN2U0YWZmYmEwODRiMTllZGY5NDliNGY1Y=
jRlYjFkNTRlMTQ0ZmYwZDNkNWI2M2ZmYTgxYzY2MDJmNWI3NWI3YTMwM2Y0YzAyMWRkMzYzZDU4=
YzdmMTQ1MWMyMmJiYzY3NWUzMjM0MmZlY2JkMzc4OGY3NzAzYjlhNzUwZWY3MTJlNjM0ZjlmMmI=
4ZTI5MmQzZjhmODJkZmUwZmJhYTQ1M2U1NDc2NDU1M2YwNjJmZjM5ZjljOTUxNjZlOTAyM2Y5Nj=
U0ZjM5NzBmZDRlZWZiYmFiNTZjNzQyNWJlMzdiMTUyZmI4MWRiZjkwOWZkZmJhODc4OWY1YjFjY=
jk5ODQ4MWJhOTFjYmE0MmZmZjE2YzFjMjRjYWI2ZDQxODlkODFmYzQ1YmExNDI0ZWQyZTUyMmQ1=
ZTE5NDk1MjA3NTQxNTk1ZGQxOTAyZmE4ZWZhODUxNzYzYTc3YzE5NWJmMDUxOTcxODYzZmY1ZTh=
mYjk0NjQ1NjE2ZmM3ZjgwOTE3NTZjY2I3NTU4NGFlODhhNjk2NmZlNTZjNTA1ZGZkZWQ1YzZmNG=
IwZWU2OTJiOTUxNzg3NTdiZjdhMWZiZTExZGI5NmQ3YzM5MjViYzk4MGY0MWJiN2VkMjkzMTJhM=
2IyMWM0OTAxYWZiZmIzZTUyZWU4YjRhYmVhZmIyZTViMTgyMjBlNjc5ZTBiYjM3YThlY2M3MGRm=
ZjRlYjAwOWFmODk2NjQxYzdlNzMxMzBhYzM3MmFkYjVlZDE0M2YwZmNlM2UzNmM0Y2U4N2JhNTM=
2NDNhYzE5NTRjZjBiMzdiMTI1M2M5NjY1NDg0MDUyY2ZlZDQ4YjQxNjhjMzI3MTkyNmRjOWVmYm=
FlNzIwMTZiMjRmZDgyZjIyMWIyZDExNzRmNTFkOGI0OGVmYTkyNGJmNWFlODU1NjUxNWEzMWE4Z=
GMwZWQ2YTJmNjQwOTM2MjVjOWJkZmUwMDlmODg5ZDk5OGJmOGRkYThkNTU1" style=3D"text-=
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
