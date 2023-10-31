Received: from EUR05-AM6-obe.outbound.protection.outlook.com ([104.47.18.107])
        by localhost.localdomain with ESMTP;
        Wed, 04 Oct 2023 09:09:33 +0000 (UTC)
Received: from FR0P281CA0109.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a8::9) by
 VI1P192MB2163.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:1c1::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6838.33; Wed, 4 Oct 2023 09:09:29 +0000
Received: from VI1EUR05FT018.eop-eur05.prod.protection.outlook.com
 (2603:10a6:d10:a8:cafe::ca) by FR0P281CA0109.outlook.office365.com
 (2603:10a6:d10:a8::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.26 via Frontend
 Transport; Wed, 4 Oct 2023 09:09:29 +0000
Authentication-Results: spf=pass (sender IP is 209.85.218.50)
 smtp.mailfrom=gmail.com; dkim=pass (signature was verified)
 header.d=gmail.com;dmarc=pass action=none header.from=gmail.com;compauth=pass
 reason=100
Received-SPF: Pass (protection.outlook.com: domain of gmail.com designates
 209.85.218.50 as permitted sender) receiver=protection.outlook.com;
 client-ip=209.85.218.50; helo=mail-ej1-f50.google.com; pr=C
Received: from mail-ej1-f50.google.com (209.85.218.50) by
 VI1EUR05FT018.mail.protection.outlook.com (10.233.243.101) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.26 via Frontend Transport; Wed, 4 Oct 2023 09:09:29 +0000
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-99de884ad25so335440366b.3
        for <eyaltest@cynetint.onmicrosoft.com>; Wed, 04 Oct 2023 02:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696410568; x=1697015368; darn=cynetint.onmicrosoft.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BTeWLunZcRSqgGll8t4oxv8365Jq/gkPZRyKvZISmH0=;
        b=G7Cgmgtmhd9E5ZxXRqGnXxMgD19WgV6Gpxc7gekKcDUafyK8+KYStKzCO+gDWgjpIe
         Jn7Fs3iu5LJDtqORoRM4qgEk234YEQ/snUeZv7QJxOBjNdDQdSBXrYYRx/8HoVqI926H
         j4Px572c7OwpQ2haFLWsUP0Rn92XNWFRdiPO3SoLZjAxrVYX9y1GUaoZNqhEHTIzWYKA
         4qTQdonzq7+CcneMBuBCNqaaVcfDSCLJ9XnjX6Dtcxk9seG/MhO4flohzgSn05M/ZvM6
         4crgHF1aKvdb9bLOz56PYRa1EpLeR13NkyGUfAxFjfA/qi9oCt6nWyhzyYQvWwR3OOH+
         5iDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696410568; x=1697015368;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BTeWLunZcRSqgGll8t4oxv8365Jq/gkPZRyKvZISmH0=;
        b=gvFC+i0uliOenabSnLyPTKZ/pNIW+fvv8/clFO18lm+8QOfurPPodBq1awDw6BfA5d
         48voj54xHIr+6miLfw/NZ+sT2mWRyq3XZuetrNs5NQeaFEW3FfsYmfvaGj06gz0SXdsq
         uh8iXWuP+8JnY3AA1VcHttvNlVpsw43h9OMivJ2gwB/fAsrFeu56kHEcA1NDnnSxb5sl
         H8Psthgh7gCCn1fZRf5sIVfyXlsr0zpDlp4VsoIw6vdLYwRySGKuo7wTue8Cn5c95dHl
         otTMgRbYMLny3ARQljC1uUd02uvYZ6EqiAcQAnZTaLFzOW1KCnT+S4b46w8pcpDtaCk9
         UxLg==
X-Gm-Message-State: AOJu0YxsQ06qK5HNANc+SekdRkhV+W8AYQ2NBmmIsQ+0kATKb4FEhsOG
        iDTExHAVpmqKEDIabJBLIHSkLgoHy3WIqUtdVoOiNJqp
X-Google-Smtp-Source: AGHT+IGv5j4rQ0fgQBm0A2L+a0ClB24lEGqN/p/+/g4oQAp0rO/VFRj0v4xexkKEqL2EmYWhRk5T2oGsTVkbqO6uDmM=
X-Received: by 2002:a17:907:78c4:b0:9a5:d16b:6631 with SMTP id
 kv4-20020a17090778c400b009a5d16b6631mr1866669ejc.70.1696410567816; Wed, 04
 Oct 2023 02:09:27 -0700 (PDT)
MIME-Version: 1.0
References: <be85537a-8599-45bb-843b-ad7da31794a8@iad4s12mta366.xt.local>
In-Reply-To: <be85537a-8599-45bb-843b-ad7da31794a8@iad4s12mta366.xt.local>
From: Eyal gr <eyal.gr@gmail.com>
Date: Wed, 4 Oct 2023 12:09:11 +0300
Message-ID: <CAE+NwjC=FHtuecJtBiqq-sUYzhBwtK22xqpGFT+-7xMVYwnMww@mail.gmail.com>
Subject: Fwd: Made to Travel: Save 15% or more on your fall getaway
To: eyaltest@cynetint.onmicrosoft.com
Content-Type: multipart/alternative; boundary="00000000000049ba010606e05d24"
Return-Path: eyal.gr@gmail.com
X-EOPAttributedMessage: 0
X-EOPTenantAttributedMessage: a84d933a-e471-4128-99c6-d3652501a6a6:0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR05FT018:EE_|VI1P192MB2163:EE_
X-MS-Office365-Filtering-Correlation-Id: 7381e955-8abd-4c6a-a8de-08dbc4b99d6d
X-MS-Exchange-AtpMessageProperties: SA|SL
x-cynet-tttt-token: ea0859f9-f30a-4a54-beaf-669eb9eff12e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
        =?utf-8?B?OTZ0YXZTczluYThVNHJGcW13RFBLYWIxWHJUYkhxZGkxdW1EaXh0aVZRd0Vi?=
 =?utf-8?B?OWtwZEdFeFZrdFBYZmhobWNhSkhiUlIrc2toZ0VVVWRXWnlUTlJlZWxXWnR4?=
 =?utf-8?B?TkVHeDJ3YnB5S0JIYnR4bVVRWnhrNEFIUUw2MDF3eFFCQzl1VTFjSGhvaFVo?=
 =?utf-8?B?blFNbm0waXJyVWxzUEl0NWhpOXpIRDl6NkNNQkE1Tm1SZ3RSMlkyajRvbjNw?=
 =?utf-8?B?bDVrREh6b3hzR013cXlLY24ydW5RM1NtWnBUaXkvbm45QkpTeHM0a3d0SDhR?=
 =?utf-8?B?OVAwQW83SU45enhIb2o3K3pXbGVwZGFVcWNTS2ZSS216R2VYekpzUXZMa3BB?=
 =?utf-8?B?Ym1VZXNhRmVQYzhhWHl0Tk1RUmptczJZSURudnprRzdaRXNwd2VMUFpoL0Mz?=
 =?utf-8?B?aDBERnlKVENWMmlmZGpFTm40Rng0T0pHTENYaG85cHJTV3BucGdUbWVPWFNF?=
 =?utf-8?B?d1VHKzJYZTdISCt2OGphUFJGZFY0MWpZaHFEZEY1ajdqblFiRW13Y3RLbEho?=
 =?utf-8?B?TDF1RmVvQVpQSnZWTmsvSkpnaXRERko0N3dySThwTjJYTVluNXVQeDNucHNI?=
 =?utf-8?B?bTBWcmZoVVFBUm5EVnZualN6TjJINWw3eUtZOHB2Sk9KVjMzenE3bktPOXNu?=
 =?utf-8?B?YzlXWlkyUUpkZmRNVmRBMkEvZTJ0TCsvbStzdGo0M2dGcW5SOVN3S1RJZXBj?=
 =?utf-8?B?QkpFa3A0eVpIbFo1K0RlTWNIVXM4N2lja1FiUnNkTXJ4TC83ZXpGdlZHVm1J?=
 =?utf-8?B?c2pDcEZIU0FOYjZPR24wSzR0dXdZcDg2WGxLT1BTalV4MS9aeHk4bXhUTFN4?=
 =?utf-8?B?blVNdHB1Vlk1dm03NDllTGVIZVNhQnBvOUZLVU5TV2hkUkQxNGVMVm5SdENI?=
 =?utf-8?B?cnhySStsaFFuc2RtOHpiTjV6N3c2V3V3UVBWR2VxWVpta3ByTHlaNVF0VklI?=
 =?utf-8?B?RTdSYUxGckhoRG1ZamFvZElGV3ZpUDVYK0MzNTc3dXFpUkhtMEhTUG1IeEFz?=
 =?utf-8?B?WURYN3VCSkZZYUloeDVSOFdiZFhFWDFkZ3d6Qml0d1RUbnowNDdZS3B0aVlD?=
 =?utf-8?B?ZDM1V0w2eXFXVUQxTEFVQWJDNzEyTXVNN0JZOTNCeDA0djZ2V042a2JUT3RY?=
 =?utf-8?B?MnBWUnp1YnhhY0pPUlVXSkZyaVdCYk1XM24raEhwWjExb0lEUG5QbVVFc3J6?=
 =?utf-8?B?clVrUjhkODhSRVhVMjBaWjlGVHdmWlU3QkF5ZnZYd3FuTnpDci9GMUFTdUFk?=
 =?utf-8?B?UWlPS2pBME9wNFIzc0Y4dU0wcXh6ZC9CSlkxZkJ1elE2QlBoSXg4WkRYMjRT?=
 =?utf-8?B?MVlzVkxPL1UxNEhyd2Z4Mzc3cFVsOFdnMkcxRUwvSGpJMkk5bFBBcTViWUdw?=
 =?utf-8?B?UlRla0lpRHRIYXBVcWZoajQzbXZvSlpic3FHams0WlVCQ1NoK1c2RUc2SEFL?=
 =?utf-8?B?ZFhzRFdTbmEvTUczQTJSV2ovSXcvbkIxZjZzTjgwQlp6cE4yWlhtZUQwRlBo?=
 =?utf-8?B?Nnl0MlNyNyt4cDduRE9xbEFRUnZhQ3VlZFFqVVlhejA3Q05nZlpiVisxVHJM?=
 =?utf-8?B?YUVCRWVuanB5L3lVZzVVK1lBV01NdDFudGdMRjR4SkJPSElUQVdRYytuZDBq?=
 =?utf-8?B?dkJhMGREbGlIMGVqU3NFS1lSdFJ0L2txSzB3WEJPQjhqUmFJNXpxUWZhK3NY?=
 =?utf-8?B?M2srWDZjVGdOcFNGaWt3YS95UDZZMkRjNkpEeUdHVXR2MUxJOFcvSFVwVmFl?=
 =?utf-8?B?cXk5b2I3aW0wYXRleENqY05zTkhUTzZTNlZYKzFPZkpRRDNHZ0hzMEkyczFC?=
 =?utf-8?B?dWt4MlR2cklFQ0hkcUV2ckNSdFpZL09rN1NOUVliWWV1TFhNZUFKOVRkam0y?=
 =?utf-8?B?QW8xbnlLeUs2SnUySG40dzlQY0pBamc4NExhc1BUT05tSWJzWlJJUytRc0pC?=
 =?utf-8?B?NmQ2YlgvZUhNN1hnU3F5bFU4Y1A2NDFPa3A1RWI3S1pkVzk1aFlvWmJORmJH?=
 =?utf-8?B?Qkh2eTRMTWFkSmc5QjBoOUwvS2s4WEdmdE5Ka1ZFMVdBK05GVVN3ci8zVFc3?=
 =?utf-8?B?VzA1MVFRcENEZjlYa2RGT1JNaVZGUUROR0ZNUFdySUV0ZUM1dVVsUXRXRkE5?=
 =?utf-8?B?dXZkMGRLUTl0L083Q3laZ1VzbG8xa3h3OTZPUG5pL1dTQnVJaDFkYzkwaEhu?=
 =?utf-8?B?cnk5ck5aSHJXRVJ5alduSzViYnVZQUJTWEhRYXFGYTNIdndFaEZQdjA4THJx?=
 =?utf-8?Q?0axWD/cBsnfjOZ6zIECgam5TaOetAK8n5HwBR2E1B4=3D?=
X-Forefront-Antispam-Report:
        CIP:209.85.218.50;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail-ej1-f50.google.com;PTR:mail-ej1-f50.google.com;CAT:NONE;SFS:(13230031)(4636009)(451199024)(1690799017)(166002)(7596003)(7636003)(8676002)(6666004)(26005)(1096003)(5660300002)(86362001)(19627405001)(76482006)(356005)(55446002)(42186006)(6916009)(66899024)(82202003)(53546011)(73392003)(336012)(83380400001)(76236004)(33964004);DIR:INB;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
        QL94Qce55NQJ4CZM7/HPmHH3GrXuq/fXeTKfWFe8IHB0bJRcO39kiHyGPli+022ejoM1V8XjQDAbNriyymjp325+RWracyceTjg3VvKAsyI7mSAhfltItPOrDv0K5GmzQD4+/rUQRxgs2hWUcthlsvVf87Q/x3Dex71I3pGBdLv+qme0YJopCfMP4joXde9qOh0jaKAaF3uVBpc0o0HDaL04XVncL8NnLBqbTbiDkMXu5SDP6NaDGqUWopLt3gNPTd0CgSPfWK0pbP5XIt+AmheNFSaRHQTfq6og4m9Nf25yhWV5Z7dw2xh2qLqIvM1G18/YDvGm0HH4iBU6eOudDcPYOnMvUBo08w0zwp7ym66XoslQs6ymbufZRQyAEpArPQJcT/R3sJ3r08Af3UIACkNvc/RWJJiimeFeGS6KI0/SNrRtXvbMZokUBUVcNwtJDsca5Per0+RQcOlkulvlw5MrS/Hmt0E7H3LJKUZC+foupYBttH1qJwVe1BCcHjXTbfDRJwRN2yX75JK46zkN8xuLc4IgJAzrH9cTBV76rHt2rGPXRqpALKobwmXGs3cwRu8CYPLvMh5YF2R+YMDP96e/ZgkGU7r9VBKSw+B20A9f3k+3k9SpgrN1lIgIb4CnPbaYef4D3KofbYZFpvmH4+T2inC33QBKEL3dPiwEMgDzx7At9AuuqhjRNmq6CnDBm9Fk8+sjWomL0ibjgNLesq4gNoRrtRWlFtALfCb8G3Pj1UlM1M7WmET5xBXA6H5wJJunh066AAxaY87RkFsu2Q==
X-OriginatorOrg: cynetint.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 09:09:29.1948
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7381e955-8abd-4c6a-a8de-08dbc4b99d6d
X-MS-Exchange-CrossTenant-Id: a84d933a-e471-4128-99c6-d3652501a6a6
X-MS-Exchange-CrossTenant-AuthSource:
        VI1EUR05FT018.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB2163

--00000000000049ba010606e05d24
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable


---------- Forwarded message ---------
From: localhost:1333?u=3DY2JiNGUyYzJlNTQ3NzUxNmJjMzgxMjI0OTQwNDlmNmUyYmQzY2=
IyNGRkZDY2YjY3MmJmMWU5MmJlMTkwM2FiMmU1ZGMxNWYwOGIxMWZi <mail@eg.expedia.com=
>
Date: Wed, 4 Oct 2023 at 2:59
Subject: Made to Travel: Save 15% or more on your fall getaway
To: <eyal.gr@gmail.com>


Members always get our best prices
 =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=
=8C =E2=80=8C
 =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C  =E2=80=8C
=E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=
=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=
=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C =E2=80=8C

[image: Expedia]
<localhost:1333?u=3DZjg2OGQ2ZGZjN2Y3NjdlMWQ3YTZjZWM2YTQzY2JjMjA5ZWY2NzcyNTB=
mZTQ0ZGYyZDIyZjk2ZDgwNzYyN2ZlYTk0YjU0ZGQxZTZmNDVhODFmNTMwOTFmN2U2YjI3YTI2OD=
E2ODI0MTdhY2NlYjM3YjNhY2VkZDgwNzllYTQyOTgyMmJmNDZkNWNkODk5NDcxNmQyODJlZDcwY=
jVjNjAyZjNjNzVjMjBhZWJkNTczZWM4YTA1ZGUzZWM2ZTEwNzk1OTZmNTc2MTJmNzM2ZjM5MWMz=
NzMxMzQyYTMyZjhmMmZiMjZmNjdhNDVhN2Q3ZjhlNjNmNmI3NDQwYjY2MmJlN2Y1MjliOGRiM2M=
4ZjBkZmYxOTA4NWEwY2UyMTRjOTM2OTQyYWI3YjFkMDE5NmM3ZWNlNGIwYzVhY2U3NTZkNjgyMW=
FiYWMxZjdkZGYxZDZkZDFiYTBiMzg5M2U0MGM4MWNmY2VjYWEyNWZhYWExZDQ5OTMwZDUzYzM0>

* The Travel Edit
<localhost:1333?u=3DOWI2MzhiYjRkODQ1NGI3NjU2OTVkYzI1YmE1ODNkZTcyMjczNjdjMTY=
xODMzYTMwYmY5ZWFlOWZjYTM0NDA3NTQyMTk0YzM1OWNlYTBmZGVmYmRiZmI1ZjNmNTkyODA1NT=
QxZjg5MTU5OWEwYjQyZTkxNDlkOTc1NDRhYWNmNDY4OWJmNzEwMmUxN2RlMmMxZmZlMWI0YzMxZ=
jE3ZmFjMjNkMGQyM2FiN2NlMDM2ZjE2ZTBhMTM3YzU5OWEyZDdmYmRhNGQyY2Y2MjVmMDBlODZh=
MWRjOTE2YWZhNTA0NDE0N2ZiMmUyYjM3N2E1MTc4M2M1N2RkMWIxYzJjMzllYzhiYzk2ZDcyYzE=
yZDlkZDYxYTFmZjU3NGFhYjgzYWJjMTZjNjZhZDFkMDg4YWVjMTQzYWE4MWNjOGRkMTdhNjFmZm=
ExYjY0NTdhZGIzYmM4NTRmMjdmMDU4MjE5YjljNTdjOTkwMmFiM2QxMGVmN2ZkYTEwOWI2Nzk4>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNzdjZDQ3NWI0Mjk1OWE4M2NlM2JjNWU1ZGViYjU4YTVmNDY2YzU1NzU=
zMDgzODM1MWM3ZDY3ZGJmNTg0MTk3OTg4YjVjNzlmMGU1MWJlZGZkYTgxODYyOGYwOTQwZDUzZD=
I2NTkxYjE2MGY3ZTlkYWUxZjNlMzc0NWIzNjFiYzk2ZWQ0OWEwM2JiNTYwM2VjMjdlODA2YWY2M=
zY0OGQ1NzA0N2QyZmRmYmUxMmUwYTY2NTZjY2E1ZmVkMGM1MWY4N2MzNjg5YzhlOGUyMWFmYmQ0=
YTIxNDljNjQ3ZmI3Y2JiZGIxZTBmM2E2YjdjYTU2ZDcwYTllNDhkNzJmNDM1MmI5ZmMyY2RkNDg=
2YmI0ZjY5MDRhNjhiMWU4MmMwMWI0NTA5ZjE0ODZmY2IyMWYxMTMwODIyZDc0NTYzYTcyY2IzND=
gxYWJjNWEyZWI4MmJiMmU2ZDYyNjMyMTE5NmI3NzM3ZDc4Y2EwOTEwZWY0YjhiNzhhNWUxZTkx>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZGUyMWJhNDIzNjQyNmNkZDBhYjJmMWI2MDc3NDY1ODg2MzAwMzQ4NTY=
zMjc1MGJmY2FiYzBjNTYxYjQ4YTQyMjVkNDcyMGFmMWVlNTQ5YTdlMjZhMzJmZTljOTA5MWEwYz=
lhNGM3ZGQ0NmU0OGIxOTUxYWJkZDQyZmIwZWFmYzVmMTAyZDc1OTExY2JlOTM2YjBkMGFlY2RkM=
DZmY2M4MzczMWRkZGRjZGUxOWI2NGRhNjY2YTQwMThmOTQ4ZTU3NzUzZTZhYTE1MTIxMTZkZDdl=
ODMzYWMzODdmZjcwMmU3YWJlOWVmNTEwZGM3N2YxNTViMzhkM2YyMDRjNTE5MmNkZjJkZTk4YmM=
2ZWQ2MTg5OWQxMWRlZmFjODJlMGI3OGU5MWQ5ZWFlZjcxZTgxYTA5NTdjMWZjMDU2N2Y0NTM5Zm=
VjNmUyOThjZmFlZDQ5MTMyY2YxZmQ5NDJhZDRmYzcwZWZjODgzYTVlZTk1NzBjZjYzNDVkNmE2>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DY2FiMmYxZTlhNGIyMDdlYjk0ZGJjNDljOGU1MWYzY2RkZmFhMGU1NzR=
lZmRhZjE4ODYyMTBlOTNlMDRlYzk5ZmZmMTliNGRmZjM4ZTZkZTA2NTFlMDI2N2NhYjE3NDViZG=
VjYTFjMmVmNmM1OGJjZmFlZjBlYzAwOWY3NjFlZWI1MDVhMDMxY2IyNjYzNDU1YTk5Yzc4MTczY=
mZjZWMxNzAyYWM5NGQyMjA1NTMxYzQ1MjY5OTVjOWZiZmM5OWJiNGU4OGFlNDhlYzY0MTgxMzUz=
NGQ5ODI3YTFkMzQzNWFkNjRhNzk0MTc5ZmNkMzVlYWRmZjNmNmVmYWFlNWNlYTM3NzQ4ZDYzMTY=
2OWEzY2E4MGQxMzE0ZjUxN2QxZmFiYWU5MzMzNDFkMzJkYWI0MDc3YTAyODM0MDRkNGI2YTc2YT=
hjNjkwN2U2NjAyM2U3NzJjYzEyZDBjOTE2MjFiMGE1N2VlYmY4ZWU4YzZhNDQzODBjNDZiNDYw>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DOWEyOTdjNjhmYTEwMGQyZTczNzQ0YmY0Y2UyNmJkMzVlM2YwZTM1NWQ=
4ZWI0MGRjNTc5YTIxZWM2Y2RjNGY5YTc0OTdiN2VkNmVlNTI5MjhhMTI5MjY1NDQ0ZGU1YTAyNm=
U2YzIzYTVjZGRmYjcwY2M5Y2ZhN2JkYmZhODYzM2Y4ZWZjNWJlOWJlNzFkZGExMzQyYjc4NmE4M=
TQxZTJjNjk0OTVhMzg0ODdjODg1NTRjZjY1MWE5NzAzNGQ3MTNhYWQ4MTA0YTEyMDRlMTQ2MmE2=
NmZiMGQwODUxYjIzZTEzOGU0YzY4Y2Q5ZjYxNjRjYjExNDM3OGIzN2E3YzdlOWE5ODYzNTJkNzc=
4MDhhODJhYjk4ODg0OWM4OWQwODUyNGFkMzgxY2ExMjJlMzJiNGUwZDZkMTVjZWMzZjZiMGRhMD=
hjYjU3NDQ4Njg2ZTM2MDNkMjQwNjI2NWMzZWM0NzkxOTI5YmI4MmM4NzlhYmNkZjdhM2M1ODE0>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYjJmMjNjNzQwYjg0NmI5OGU0OGFmYWEwOWM4Yjc0MzlkNDI3NzIxZDN=
lZjRkMTM2YmQxNWZmNGE0YTViMWM2M2QxZTQ1YzU3Y2NjZmVlYTk4MTYxYTFjZTM4OGZhOTQyYT=
M3NzRjNzkwZDJhMDY2ZDIxYTRlYTg2ZmZkMTg1YzdmMTA5OGU3ZDM0YmFmNTFkMWU5NTg0OTA4O=
Dg1MzAzMmMxNDJhZjIzODY4YzkxZGMyN2I3OTdlM2M2MGEwODJjMTUyM2RiZjc2M2E3NGIzZTc2=
M2M3NjQ1ZDY4Y2E3N2Q5OWZjZjFhYzI4NDQwMzQ5NWE1MGFjZWZkZGE1YjYzY2RjODJiYjg4ZTd=
hNjdhNzc4MmY0MWUyY2Q2YWZlYzllNTQzNDRmMjAzMjllMTliNDRlYTE2NjFlMjliYmM2MTEyOT=
IxZWQ1Njk3ZWQ3MTU4YmYzZjk1NDMyNTY4NWMyZTMyNDhlNTkzMzJhZjlkYzQ3NjU1NjQyMWY1>

West Maui reopens for travel on Oct 8

Hawai=CA=BBi Governor Green has announced that beautiful K=C4=81=E2=80=98an=
apali, N=C4=81pili,
Honok=C5=8Dwai, and Kapalua will fully reopen for travel on Oct 8. Plan a v=
isit
to this special place, support the island's businesses, and make a new
memory.

Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s
residents.

Explore Hawaii Hotels
<localhost:1333?u=3DMjk5ZDJlNDQ1OGJiYmY0NDQ4M2VjMmYxOTMxNmI1ZWY5OWZmYTZjMDI=
xNjJmYjg1YzVkNjUzYzEwYmMyNjQzNjA0NjVlYmQ1MTQ5MTdkNjAzNWMxYjliNGJiZjZlYTM2Yz=
gzZmQ5NDRiMjNlYTI3NDYwMzUyMTcxYTRhNDE3NDZjNmUwMzliNzllNjc5NjMwNjNlMDg1NGQyM=
zhiNmE5ZWJhNjM3ZGFmYTExNWVmNTYwNzI4ODM0NzliOGM0ODJkYmFiOTVlNDc3M2EyNzc2NWMx=
ZGUxMTY3YzU1NzEyY2ZiZTk1NWJhZGNiNWYzNzY5ODc4ZmVhZDRkMmY0NWNlMjVkYWU0NDBjZjY=
2ZmE1Y2ZiYTFlOGY2OTgzYjI1MTdiYmQ1NDkzMTUzMmMwZDVlODNhMDE3YmI2NjQ0N2E1NGI4NW=
MxNGMzZWUyZDFkZTNlYmNmNTcxNDhmMzczMjJjZGI2MGYwZDI0MGMwMTdiZDU3NTI5ODYwNWRjN=
TM1Mg=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNGIzODZmYjY3OTFkOTUzOGZlNTUzZjdiOTI5NzExNDc2MGEyNGJkMzI=
3ZTI5MTdhZDE1YzQ1Y2NjYmQ5NjU5NWI3NzNlNzRkNjk5MzFkMzgwOWZlOTM3NjQ2Y2I3NTMwM2=
Q5MjIzOTQwNjg0OTQyYzI4OWMzMjdlZGNkOGQxYWU5NTk5YTliMDJiYjk4YmNlZWY5NTAzMzYwM=
GE4YjQ1NDNiYTU1ZDgxM2U3ZTE3NjM5MzJhNDQxZGQzMDMxOGZkYzUwYTg4ZTVkZDVmNjYyZGM2=
MWQ1OTQyMjFiMDU0MTg0NmJkZjUwYjliZTJkNDkyNGUwNmQ3MThjZWZlYWNkYTZjNWY2OTRmZDE=
xMThjZGM0MzQ2N2I3ODZmYjRlN2Y0NzQ0N2ZlMmVkMmYyNzhmZmZlZGZiODE2NWRlMGE1ZDJhZW=
E4M2QyYTNmNGVhYjU4ZGZkNDY4MzY0OGU1Mjk1ZThhNGExYjUwYTk1ODcxNWI3ZmRmNzkxZjA2>
  [image: Google Play]
<localhost:1333?u=3DY2JhZDA1ZWU5NDNhNzI1YTAzNWFlOGI0NWJhNTY0NjM1MDQ4NTIzNTU=
1NzAxZWMzOGFiN2EwNTA4ZDJmMzFhMDI1NWZiNTU3Yzc5ZjExN2ZiMjI4YjQxZGJiNWUzY2VkNT=
Q1YTU2MDc0ZGU2YTNhNzU4NjEwNWVlNzhiOTc0YWQ4ZTljMWRkYmYzYzEyYTA0Y2VjZGVmZmU3M=
DM1MjRlNGIyZTY1MmFmMWQ0MTJiYmVmYWJjYTUxMjM5MmM0NTRmYzg2ZjIwZWM1NTY5ZTgzNTU1=
MGRmYTQ4NjE2OTBhNDliMjg0YmFjYTk2NGVmYjU4MTg0NWEwYTdhMzEzYjhmNGFjNWMwYzZhNGQ=
5ZDAwZTVlMDA5YmU1NTQ0NDRjM2Y2ZWRlZTI3NDkxMjYyZTc2ZmM4M2IzYjlkOGMyYjdlODE3Mz=
liZWEyNWJiMmI5MmJiMzdmOThhMmE3Mzc1OWZjODhlNjg2NDAzYWQ5MDI0OGJmOGE4OGM4N2Y1>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DMDg4OTE5YmEwYmMzYTg3NGZmY2UzNDAzMWExMWYyNTg0NDA1Mjg2ZWE=
wYmE3YmM4NzVjOWE1NTQwNjlkOTZhMWQ3ZmZhM2ZiMTkzN2E0YmNjYzk4Njg0NWNkMWNmMzMyNG=
ZjNWU1NjA3MDViODZmZjliOWE4YmRhNTlhMDI0YmEzODE0MWQyNTEyOTJlYmNhM2M1NTdmODRhY=
Tk0ZmMzYTcxYjk5NTc4MzAxNmY5ZTA5MjAyNDIxNTMwZTNmNDY4YjQzMmNlODA4ZTA2ZDQwMGJm=
MWZiM2NiNmE3MzZkZWIyNDM2ZTBhMWJkZjE3NmMwYTJhZmMyMDkzNGQyNTI4ZGNjYTZhOGZhY2I=
2YTIzMzZjN2ExODdkYjJmYmI0ZDAwMzUzYWI1ODY5MzcxZjYyMjU0NTYzYmE0NTBmN2JhNDRlMG=
YwYzc4NDNkMjA0OWQ4M2ZmZmNjZDE2Mjc1MmM5ZGUzZTE5MGZkYzc1MzE1NGM0Mjg2MjFjYjkyM=
jQ5MA=3D=3D>
   Manage Preferences
<localhost:1333?u=3DNjk5ZTdiYWQ5YWQxMmRiOGE0NzRkMmI5NWQ1ZDExNDNjMTkzOWMxMTA=
zYWQyZjMzZDYyYTc3MzYxODcwNDY4YTg4MzU5MDBiZjk1NzI0OTU5YzVhZWY1NGNlNDQzYWY0ZT=
kwZTczNzZhODA0OTBhNzkyYTVhMDE3MjI1MThkNjhkMjVmNmY1ZDEwYjExOGUyNzg5MzZmMGFkN=
WJkZjhlODc3OGNmNzc0NTJmNzMxYTg2ZmYxNmE3ZmEwODFhN2FkZjQ0YjY2ZjUwNmZiMjIzMDVi=
ZDRlNmUzNzI5ZWZhMzMyNmMxZjczMDZiMzhlODc4YzliNDZiOGU2YzVlNGUxNmIyZmJhMzBiZjJ=
lYTM2ODBlYzkwOTM0MzAzZThkZDMwMWY4ZTBjMTUxZmYzMmJmNWRhNWUwMTMyNWNkZjY4NjI4NG=
Q0MDkzNmZlNTFmM2IyNjVkNjRhMzI4MzhmMWUwZGNlMWJjNWNkMTAwNGMxZmJmMTY5NDJkNmYyN=
TdmMA=3D=3D>
   Privacy Statement
<localhost:1333?u=3DYjZmNjMwNDY3YWZhZTc1ZjQ0OWU3YWE2MmViZDk5MmQ3ZTU4ODYxZTM=
1YTI4ZmM0NzVmYTA5N2Y5Y2Y4YmYyMzIwNTU4MDU2NzhiN2YzNmFkOTQyMjgxNDg4M2MyZjAwMD=
ZmM2U0MmVkMDUwMTYyZjFlMmEyMmVmYmI2ZDQ4MGY2NGRhYTEwZDEwYmQ0ZTQwOGZiMThiMWY4N=
DM5MmEyNTczOTQ1YTU4MzQwMGUxZTVhZDk0ZmE5MTk2NTZlN2VjMWZlOGMyZDE5MjkwZjc1MTg3=
ZWU1ZTdkNzI2ZDVhMWMzOGZiZTUzYTA5N2E0ZDJiZjE2OTY5ZDMyZTIyNDc4NmI5NzM1YjdjZWJ=
lMjZiNzI3ZjUwNDczN2FlOTFhMTAzYzFiNDI4YjUyMTM3NmUzYTM5ODQ3M2UzMWMyYzM5YWY1M2=
M4Nzk5N2Y5YTExMDFjNmZiNjhlYjJmMTAzMjlmYTM0NjAxZDJlMTE4ZjU1OThkZTE2ODk4NzNiN=
TVhOQ=3D=3D>
   About Us
<localhost:1333?u=3DMzc1ZTk5ZjY3ZDZmNTA4ZWE4OTkyMjE5YjhmZWY5ODg2ZWM3OTUzOWM=
5NTRjN2I1MTMyOTY0ZTQ0NDNiYzFlOWU1ZDE0YzIzMDY4NDE2YjdhOWVjNjJjYTQyYTBjY2M2YW=
M4ODA5NTAwY2U5MWE0MDU5Yzg5YzFkNThiNjU2MjZkYzZiNDkzYTg3NTI2NDZmMjEwZTdhNjAzO=
DYwYWM5Yzc0YzhlNDVkZGI0ZmY4ODNhMjIxNjA0ZDc0MTQ2MjY2MGVmYmZlNTIyMWY3NzdkMGY2=
NThjNjFiZTc2MzhjOTQ4OWRhY2FlNGYxMmI2MTQzMmRhMmMxY2UzNGUwZGE2YzM2OWU4NGIwMTE=
wZDE2MDlmZWFkNDUyNmUzZDM1NDNjMTY0MDRhZGNmMjMzOWM2NTI3YTBkOTJlZDdkN2ViZmIwMD=
Y2ZTU1MDViYzFlZTA2ODE3N2JmYThjN2U0NjlkZTAwZTAyMmY0NDM5YmJlYWJkYmUzMDQ5YWY2M=
TNlMg=3D=3D>
   Customer Service
<localhost:1333?u=3DY2ExMjA0OTBlZGIzZDVjYjk3NTVjNmQyNGFlMjE1ZTU5ZTIxM2JhNGN=
iMWJhZGVhMWJjZjA1YWExYjM3OWUwODczNWRlMTVkZDZiNjY3MWE1ZWJjYjdkZmNhZmM2ZGJmYm=
FjMTBhODUzZmI5YmVmYzFlZWMwNGI0YjgyYjBiZDI1NDcwMmUwYTQzZWU0OTVlNjA3OGM4ZjFhO=
TQ0YTUzYTIxZTFkODQ2N2RlOGZmNTkwN2FjNWNhOWMzYzIzMDgxZDg0OWUzOGUzYzg0MWYxNmUx=
OWRlNThhMzhkZDMwMWU5NWRiZDFiMWE2Zjg1ZTFkYjBmMDkyYWVhNzE5NDU5ZThkNDczMmUyZTM=
5NzhiMzA3ODdmMzlhNTI1ZDhmMDZjYzllNjA2NzJmOTgzZDNjZjBmZTk0MjE5NGJmMGIxNzdjZT=
JhNjQ5NjZhYTI3MTNhYTljYjhiZGM3YTAyYTc5MzUyYTUyMzEwNWY0YTlmY2MxODVmOWRkOWZkZ=
Dk2Nw=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DMGQzOGI5YzM4YTRlYWJhNzMzNTFkZjQ1MGVkMzBkM2RkMDRiY2NlODc=
4NTU2YWU5YjdiZDBjOGQ4ZTk5MTY1YzI0YTE0YmFjNDE5Yzc1M2I3YzMxZjE4YjljMjllZGY2YW=
Y1OGYxNDcxMzNjYmYxZjVkYzMzZGY5YTBiYTkyYzVlZDg5YTQ4ODdiMGQ2Y2UzNjNmMDdjYTI1O=
WYwMWRiMGVlMmM5MTg5MzI5MzA0OWYzNTYwMmJkZmM0OTk3YmVhOTU1OThmOTE1ZTM0ZGQ3NDlm=
YjI2Yjg2YzI2NjJmZTFkOTVjNjRhY2NhZjk2MzM3OTAzZDU2MDgwZGM4YTM=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNjM3ZTk3YmE4ZTkwYTE2N2RjNjM5MjA1N2Y3YWRiYzU5OGFhNmMzYmQ=
xMDIxZDQyYmNjMTMxNjI3ZjdkOWNlMjBiODdmZmM2ZGEyNjlmYTAxYWY1M2IwZDdiNjYzOGI2MW=
RiZjQzNDEyMDdjOTZmMTRhMjdiZmUxZTJjYjc0ODFkZTE4MmZlY2FlNzBmMDQyZTA2ZDg0ZmU4N=
WQ0MDk5YWViZGYyYzgyMzBiNWYyYmYyZDU0MDRlNTgxZmZjYjdlYTc5NWYyZTQ5ZjRkMGM4NGFi=
MDAxMjVlZjcwNWU2MWYyZGVlNzBlNDlhZWQyNDJjY2IwYTA3ZjY3ZjQzMDFiNDAwOWNlMmUxN2N=
jOWY0OGE1MjRjMTgwNjRjN2U3YzkwYjdkZGYyZmViNjc3YzhlZTgxMDQxNjVlYzNlM2Y1ZDMxNj=
I5MjA5ZDgxMzc4ODZiYTdlMTRkMzg2MTIwYjliN2M5YWU5ZDVkNWVhYzEzNDYxODRmMTFkYTJkY=
mE2OGJmMzg1MzM3ZmZlODZmM2MwZTQ5YWJiZTlmNTQxOGMzMmFjY2IzM2Q0NjgzM2YyODM0NzU2=
YzU1MGU=3D>

EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&EMLDTL=3DDATE2023=
1003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX



--00000000000049ba010606e05d24
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br/></div><div><br/><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br/>From: <strong cl=
ass=3D"gmail_sendername" dir=3D"auto">Expedia.com</strong> <span dir=3D"aut=
o">&lt;<a href=3D"mailto:mail@eg.expedia.com">mail@eg.expedia.com</a>&gt;</=
span><br/>Date: Wed, 4 Oct 2023 at 2:59<br/>Subject: Made to Travel: Save 1=
5% or more on your fall getaway<br/>To:  &lt;<a href=3D"mailto:eyal.gr@gmai=
l.com">eyal.gr@gmail.com</a>&gt;<br/></div><br/><br/>

<u></u>


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
 =20


 =20


 =20

 =20





<div id=3D"m_1202337279934882522body" style=3D"margin:0px;padding:0px;backg=
round-color:rgb(243,243,245)">
<div style=3D"font-size:1px;display:none!important">Members always get our =
best prices</div>
   <div style=3D"font-size:0px;line-height:0;overflow:hidden"><img src=3D"h=
ttps://click.eg.expedia.com/open.aspx?ffcb10-fefa1d7374640c-fe2415707c630d7=
f741d75-fe3211727364047c721775-ffc71c-fe3015727166037c721271-fefc1d72756000=
&amp;d=3D120017&amp;bmt=3D0" width=3D"1" height=3D"1" alt=3D""/><u></u></di=
v>
 =20
      <div style=3D"display:none;font-size:0px;line-height:0px;max-height:0=
px;max-width:0px;width:0px;opacity:0;overflow:hidden;color:transparent"></d=
iv>
     =20
<div>
 =20
</div>
<div>
 =20
</div>
<div>
 =20
 =20
 =20
 =20
</div>
<div>
 =20
</div>
 =20
     =20
<div style=3D"display:none;font-family:sans-serif;max-height:0px;overflow:h=
idden">=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=
=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=
=80=8C=C2=A0=E2=80=8C
 =C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=
=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=E2=80=8C=C2=A0=
=E2=80=8C</div>
 =20

=20

   <div role=3D"article" lang=3D"en" style=3D"font-family:Helvetica,Arial,s=
ans-serif;padding:0px;margin:0px" dir=3D"ltr">
   <table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"=
0" cellspacing=3D"0" style=3D"width:100%;font-family:Helvetica,Arial,sans-s=
erif;background-color:rgb(243,243,245)" dir=3D"ltr"><tbody style=3D"font-fa=
mily:Helvetica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,s=
ans-serif"><td width=3D"100%" valign=3D"top" align=3D"center" style=3D"font=
-family:Helvetica,Arial,sans-serif;background-color:rgb(243,243,245)">
   <table role=3D"presentation" class=3D"m_1202337279934882522w100pc" width=
=3D"600" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" style=3D"font-fam=
ily:Helvetica,Arial,sans-serif"><tbody style=3D"font-family:Helvetica,Arial=
,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif"><td width=
=3D"100%" valign=3D"top" style=3D"font-family:Helvetica,Arial,sans-serif;ba=
ckground-color:rgb(255,255,255)">
     =20


<table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,san=
s-serif;background-color:rgb(255,255,255)"><tbody style=3D"font-family:Helv=
etica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif=
"><td width=3D"100%" align=3D"center" style=3D"font-family:Helvetica,Arial,=
sans-serif">
  <table role=3D"presentation" width=3D"600" class=3D"m_1202337279934882522=
w100pc" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=3D"center" s=
tyle=3D"font-family:Helvetica,Arial,sans-serif;background-color:rgb(255,255=
,255)"><tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D=
"font-family:Helvetica,Arial,sans-serif"><td align=3D"left" style=3D"width:=
100%;text-align:left;font-family:Helvetica,Arial,sans-serif">
   =20
     =20
      <p style=3D"margin:36px 32px;text-align:left;font-size:16px;font-fami=
ly:Helvetica,Arial,sans-serif" class=3D"m_1202337279934882522gutter-margin =
m_1202337279934882522text-align-left">
        <a style=3D"text-decoration:none;vertical-align:middle;font-family:=
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DOWMxODEwNGQ3YTQ2OGM4=
MTg0M2JhZGRlN2RkMmFiMWQ1OTgwZWM4ODg5OWEzZmY2MGE2ZGFjODVlMjBkYmM1MzlhYTBmZmY=
2OTVlMGYyYjY4MjJmMjU0MDIwYjljNjQ3ZGRhMTc0ZmE4ZTU5MzA3Nzg2ZTQ3ZTVkOWZhZTBiYT=
A5MmRjMzU0M2EyY2MxYjVlZjU0ZDlmZjlhZDBkZDRmYjhjZDcxMTBiMDc4ZGFhMjg1NDY0NDc3N=
mU4N2M5YmViMGZjY2RiYmYxNjc0ZjFlYzVhZjg2YmZlYjFhYmFhYzYxYzVlNmY3MGI0NjYzM2Fl=
YjBlMjE5MGEzMjYwZTE3MDRlM2MyNTJiMTBiNjk4M2U3YzBkMTcwZGYwM2NhZmQ2OTUxMThmZDl=
mNjMyYzgyZTYyZTcyZTAwMmJmYTU5ZTczODc2ZTdhMmUwOWE3YzNmNjFkYjYxNTI2NDgxMzhjYz=
kyNDBkYTQ0ZjY5OGMxZWRlOWQ1YTA3Mzlm" target=3D"_blank">
          <img src=3D"https://image.eg.expedia.com/lib/fe3211727364047c7217=
75/m/1/expedia_logo_product_dark+blue.png" alt=3D"Expedia" width=3D"150" he=
ight=3D"auto" style=3D"font-family: sans-serif; border: 0px; height: auto; =
line-height: 100%; outline: none; text-decoration: none; display: inline-bl=
ock;"/>
        </a>
      </p>
  =20
  </td></tr></tbody></table>
</td></tr></tbody></table>


<table role=3D"presentation" width=3D"100%" border=3D"0" cellpadding=3D"0" =
cellspacing=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,san=
s-serif;background-color:rgb(255,255,255)"><tbody style=3D"font-family:Helv=
etica,Arial,sans-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif=
"><td width=3D"100%" align=3D"center" style=3D"font-family:Helvetica,Arial,=
sans-serif">
    <table role=3D"presentation" width=3D"600" class=3D"m_12023372799348825=
22w100pc" border=3D"0" cellpadding=3D"0" cellspacing=3D"0" align=3D"center"=
 style=3D"font-family:Helvetica,Arial,sans-serif;background-color:rgb(255,2=
55,255)"><tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif"><td align=3D"left" style=3D"wid=
th:100%;border-bottom-width:1px;border-bottom-style:solid;line-height:1px;f=
ont-family:Helvetica,Arial,sans-serif;border-bottom-color:rgb(223,224,228)"=
></td></tr>
  <tr style=3D"font-family:Helvetica,Arial,sans-serif"><td width=3D"100%" h=
eight=3D"16" style=3D"font-family:Helvetica,Arial,sans-serif"></td></tr></t=
body></table>
  </td></tr></tbody></table>



     =20
       =20
     =20
     =20
     =20
      =20



<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                            =20
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:16px;line-height:20px;margin:16px 32px;text-align:left;fon=
t-family:Helvetica,Arial,sans-serif;font-weight:500!important;color:rgb(25,=
30,59)">
                                  <b style=3D"font-family:Helvetica,Arial,s=
ans-serif"> <a class=3D"m_1202337279934882522h-dark" href=3D"localhost:1333=
?u=3DMGM0MWMyMTUwOGMzYzU4NWI1ZDRlMmE1NmQ3NTFiNGQ1OWU3NjJlOTk5ZmY4MjNhZjgzZW=
Q4MTdhNDdhMGNiYTM3NjEyMzI1MmM1NzMwY2M1YzBkZGI0YmVlY2ZmZTAxZDYzODI0YTNiMDFmM=
jY2MDEyOGFhMGYzNWI0ZGEzYjI2NTExZWEyODc0MDc1MzIxYWMzOGI5ZGI4NjNjOGY5OTJkNzBm=
ZTc5NjAyYThkY2Y3MDlkYjM5MzNmNDU3NmUwMGIzMjA5MmQ4Yzc1YjQ4Mjc2NWE5MzhhMzgyYzc=
3ODc5NWFkYzNkOGZlZTlmYzU2Y2I0ZTBlOTI2N2Y4MjE2ZjZhYTkyMDE2N2MzZGI3MWQxNmM3Mz=
g0ZDNjNGNjY2UxNDRkZTlmOWYzMTgzMGVmY2MzMDUxYTMwODY1MWIwOGNmNTkyNzk4MDNiNTZhZ=
WYyYWExODAwMjk3YzRmYmU1YWViYTQ2MTU4M2FjMjk2ZjY2NjY0NmRkYzNk" style=3D"text-=
decoration:none;font-family:Helvetica,Arial,sans-serif;color:rgb(25,30,59)"=
 target=3D"_blank">The Travel Edit</a></b>
                                </p>
                               =20
                              </td>
                             =20
                            </tr>
                          </tbody></table>
     =20
<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
    <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"fo=
nt-family:Helvetica,Arial,sans-serif">
      <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif">
        <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"p=
resentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif=
;background-color:transparent">
          <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif">
            <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif=
">
              <table cellspacing=3D"0" cellpadding=3D"0" role=3D"presentati=
on" style=3D"width:100%;font-family:Helvetica,Arial,sans-serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                  <td style=3D"font-family:Helvetica,Arial,sans-serif">
                    <table cellspacing=3D"0" cellpadding=3D"0" role=3D"pres=
entation" style=3D"width:100%;font-family:Helvetica,Arial,sans-serif">
                      <tbody style=3D"font-family:Helvetica,Arial,sans-seri=
f"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                        <td valign=3D"top" class=3D"m_1202337279934882522re=
sponsive-td" style=3D"width:100%;padding-bottom:0px;font-family:Helvetica,A=
rial,sans-serif">
 =20
                         =20
                          <table cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helveti=
ca,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">

                                                                =20
                                =20
                                <p style=3D"margin:0px 0px 16px;text-align:=
center;font-family:Helvetica,Arial,sans-serif" class=3D"m_12023372799348825=
22nomob">
                                    <a href=3D"localhost:1333?u=3DZjg5YmZjM=
GExZDhhOWEyNTlhZWNmNjYxZjQzYTM5MGI5YTM2ZWM2ZGI2OTQ1NGU2NzQyZTE2ODVlYjVkYzNk=
MDQ0OTNmMzUwYjg4MTY2Y2EzMjA3YTZhYTYwMTE4YzlkNmUyNWQwNmZhYzdiMTM0ZmFiNjY1OTR=
lODFkZTRlMzE2NWVmMTA2MjRkMzc4MTA3ZGU3MTBmODQyMDQ2OTNiOTNjZjVmYzA3ZDJkMDEwNz=
ExMjlhZWE4MGRhNTQwZjZlNjJjOGU1MzNjMWQxZDIxYTlkY2UwN2QwYmRmMTA5ZDUxYTM5ZTcwM=
jdlYmYzOWRjNzY4YWEzOGMxNTI2MGMzOGY3YWRhMDFiZDgyMGNkNDkzMTRmOTU4M2YxZTQ4NzAw=
Y2YzOWZjNmUyMjg0NzU3MTRlYmEyZjhhZGE0MWUzNGFhMDMwMTJhYTdlNWIyNzZkMWEzYzg0ZjZ=
hNDY3MDllYjc2MjNhNTU0NDE3MTIxMzE0MzEwZDE1MWJh" target=3D"_blank" style=3D"f=
ont-family:Helvetica,Arial,sans-serif">
                                      <img width=3D"600" style=3D"display: =
inline-block; width: 100%; max-width: 600px; height: auto; font-family: Hel=
vetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/travel-asset=
s-manager/cread-2248/US-eMail-UMP-D-600x338.jpg" alt=3D"Plan your fall geta=
way and save with Member Prices."/>
                                    </a>
                                  </p>
                                 =20
                                  <div style=3D"width:0px;overflow:hidden;f=
loat:left;display:none;height:0px;font-family:Helvetica,Arial,sans-serif" c=
lass=3D"m_1202337279934882522showmob">
                                    <p style=3D"margin:16px 0px;text-align:=
center;font-family:Helvetica,Arial,sans-serif">
                                      <a href=3D"localhost:1333?u=3DZGUwNjg=
1ZTYwNTNjZWI5MjQ4ZjAxYWE0MzRiOTU1MTk1OWM0MjM4MTQ3YzA3MDliMWI4ODA1OTM4M2U2Nm=
RkZjA4ZDY3ODBjZmEwMjlkNmQyMTkxYmU3M2M3ZGRjN2M3NTZkNWU2NTBlMzIwZWJmMGNlMzExZ=
jdlOWI3YmY3YzhkZTdmMmMxNDI4MGE1ZWIzNjEwMzcxODhhNzRkZTExYjhiNzhiMjk5NmIwNjll=
NWJlYzBlOGMzMDBmMjBlNDY2YjE0ZmZjNWI5NThmOGJhMzNhYzk0MDdmNmQyNjcyNDUxYWNhMDU=
5ZGM0ZTIwMjZiNjg3MmYyZGUxNGE1MTBhYmMzNTNmMTcyNjEzZmY1Y2JkNGY3MjEwM2Q5M2I1Yj=
czZTYyNjUxN2I1YjhiM2M1NmNiYWJlMjdkNTRkY2VkMDc4YWM3OTVlOTRmMmQzZWZkNjEyZTI3M=
2MzZWMzNzhhN2YzOWZlZjMzYzUxNTVkNDcyOTkyMTNhZGMx" target=3D"_blank" style=3D=
"font-family:Helvetica,Arial,sans-serif">
                                        <img width=3D"375" alt=3D"Plan your=
 fall getaway and save with Member Prices." style=3D"display: block; font-f=
amily: Helvetica, Arial, sans-serif;" src=3D"https://a.travel-assets.com/tr=
avel-assets-manager/cread-2248/US-eMail-UMP-M-375x375.jpg" class=3D"m_12023=
37279934882522max-w-full m_1202337279934882522w100pc"/>
                                      </a>
                                    </p>
                                  </div>
                                 =20

                                 =20
                                 =20

                              </td>
                            </tr>
                          </tbody></table>                         =20
                         =20
 <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presenta=
tion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"font-family:Helvetica,Arial,sans=
-serif">
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:14px;line-height:130%;margin:12px 32px 0px;text-align:left=
;font-family:Helvetica,Arial,sans-serif;font-weight:400!important;color:rgb=
(25,30,59)">
                                  Made to Travel: Inspiration for your next=
 journey
                                </p>
                                <p class=3D"m_1202337279934882522h-dark" st=
yle=3D"font-size:28px;line-height:32px;margin:12px 32px;text-align:left;fon=
t-family:Helvetica,Arial,sans-serif;font-weight:700!important;color:rgb(25,=
30,59)">
                                  Members save on autumn breaks
                                </p>
                              </td>
                            </tr>
                          </tbody></table>
                          <table cellpadding=3D"0" cellspacing=3D"0" width=
=3D"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helveti=
ca,Arial,sans-serif;background-color:transparent">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                              <td style=3D"padding:0px;font-family:Helvetic=
a,Arial,sans-serif">
                                <p style=3D"font-size:16px;line-height:20px=
;font-weight:normal;margin:0px 32px 16px;text-align:left;font-family:Helvet=
ica,Arial,sans-serif;color:rgb(25,30,59)">
                                  Fall is here, and so are Member Prices on=
 select hotels. As a Silver member, you can save 15% or more on over 10,000=
 hotels worldwide with Silver Member Prices on the app. Now is the perfect =
time to book your fall break.
                                 =20
                                 =20
                                </p>=20
                                 =20
                          <p class=3D"m_1202337279934882522gutter-margin m_=
1202337279934882522text-align-center" style=3D"font-size:16px;line-height:1=
26%;font-weight:normal;margin:4px 32px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(255,255,255)">
                            <a class=3D"m_1202337279934882522block m_120233=
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNTRhMWFlMWYx=
OGQ0ZjljZGM2Y2I2Y2JmMDM4MThhNmQzNjhiZTY3Zjk4ZmY1NWY1NTJmNzM2MmVhYzVlZTNhMjc=
yMDdkNDNjZTQzZWE4ZGQ1OWI0ZGM2YjExMjRjY2Y2YzA5ZWYxNjZhZWI4MGRhYjJlOTMxMDI4MT=
c0NmQ1YjkwMmVkOTkxMjVlNjc5OGQ5ZDBkYWUwZjlkZjJjMjI5ZTA5Nzk3OWRhNDAyNDI3ZWJhO=
GJjNTAwNzgyZTg5OWU2Y2U3Mjk2ZGFkZDc2Yzk1ZGJjNDJhYzYxZmE4OWMwZGNkZDE1YzY5OTA0=
N2FjMTQ0ODQ1MGYyMTc0OWEyMzNjYjBiNTNmNGE1NzlkY2M0ODViNGY1NzM3NzcxY2MxNTEzOTk=
2YTMyMjYxYWM4YzI0ZDRkYzk0MjBmMDUxNTQ5ZmMxYzIxOTk4ZmE0YTlhOTMwZDBmYjBkNmUzYj=
gzNjdmOWRhZmFjMjNkODVjNGUzNDc5OTRhNTk5MmJk" style=3D"display:inline-block;t=
ext-decoration:none;text-transform:none;padding:8px 16px;border-radius:4000=
0px;font-size:16px;line-height:126%;font-weight:normal;font-family:Helvetic=
a,Arial,sans-serif;background-color:rgb(22,104,227);color:rgb(255,255,255)"=
 target=3D"_blank">Start saving
                            </a>
                          </p>
                       =20
                         =20
                              </td>
                            </tr>
                          </tbody></table>
                        </td>
                      </tr>
                    </tbody></table>
                   =20
                  </td>
                </tr>

              </tbody></table>
            </td>
          </tr>
        </tbody></table>
      </td>
    </tr>
  </tbody></table>
     =20
     =20


<table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"presentat=
ion" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">
    <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"fo=
nt-family:Helvetica,Arial,sans-serif">
        <td style=3D"padding:0px;font-family:Helvetica,Arial,sans-serif" cl=
ass=3D"m_1202337279934882522responsive-td">
            <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=
=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-=
serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                    <td style=3D"padding:24px 32px;font-family:Helvetica,Ar=
ial,sans-serif" valign=3D"top">
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td valign=3D"top" style=3D"width:100%;padd=
ing-right:0px;border-top-left-radius:16px;border-top-right-radius:16px;font=
-family:Helvetica,Arial,sans-serif;background-color:rgb(12,14,28)">
                                   =20
                                    <p style=3D"margin:16px;font-size:20px;=
line-height:120%;font-weight:normal;text-align:center;font-family:Helvetica=
,Arial,sans-serif;color:rgb(255,255,255)">
                                        News this week
                                    </p>
                                                                      =20
                                </td>
                            </tr>
                        </tbody></table>


                       =20
                        <p style=3D"margin:0px 0px 16px;text-align:center;f=
ont-family:Helvetica,Arial,sans-serif" class=3D"m_1202337279934882522nomob"=
>
                            <a href=3D"localhost:1333?u=3DMWM0NTQxNWJlOGQwO=
TM1MzlkMTVhNjQ0ODJjMGQ4YzMwZGE4YTQ4OGExN2E0ODc0YWNjODNiZDZmZDg4ZmY1NmMyYWU3=
NDEzMzQ0ZjFlY2IzZGE5YzFmMDYwMzE3MWJhYTU4M2U4OWQyNmE4OGI0NTE4OTA1YmViODczM2Q=
zNDA0OTZlMWJjYWExMmVkNGJiM2U5ZGRlY2JkZGQwMzQ5NjBmZTVkZTk3MWRmZTRiYmVkN2Y5YT=
ViZDNkMWYwMTU4MmRmMDg4NjMzYjNiN2M4OGVkZjNjYjBiNjg3Y2Y0MDI4NDZmZWEzYzU1NDk2M=
WU3NDM2NzA3MTVlMmRkMzA5YjYwMjMzNmI4YmQ1MzYxMDdmZjVmYzYyNmU0NmYzNjI0NjJiMjlh=
ZTExMjM2NGEyODM4YTk3YzhlNTdjNTQ4ZjQyMmI2OThiZGI2YzAyZTA5NDhiYjQwNWYwNDA1N2Y=
wODJhNmNhODJlOTE2N2NjZTQwZjgxZDI3Yjg4" target=3D"_blank" style=3D"font-fami=
ly:Helvetica,Arial,sans-serif">
                                <img width=3D"536" style=3D"display: inline=
-block; border-radius: 0px 0px 16px 16px; width: 100%; max-width: 536px; he=
ight: auto; font-family: Helvetica, Arial, sans-serif;" src=3D"https://a.tr=
avel-assets.com/travel-assets-manager/ceorg-3741/WestMauiToReopen-eMail-Sec=
ondary-D-536x230.jpg" alt=3D"Plan a visit to West Maui when it reopens for =
travel Oct 8"/>
                            </a>
                        </p>
                       =20
                        <div style=3D"width:0px;overflow:hidden;float:left;=
display:none;height:0px;font-family:Helvetica,Arial,sans-serif" class=3D"m_=
1202337279934882522showmob">
                            <p style=3D"margin:0px 0px 16px;text-align:cent=
er;font-family:Helvetica,Arial,sans-serif">
                                <a href=3D"localhost:1333?u=3DOTAwZGRhZjQwM=
zI0YjI3YTc3MjgwMzYyOGUzMzU1MDg5MzZiNTU0ZThlMzU2M2FkN2Y5ZDMwZDMwNGYyM2FlNjk3=
N2E0Mzg2YTEzMzIxNjU0NmY1OTgxMjg0MjA0Y2JhYmRmY2ZiYzE2NmU3N2I1NTFkZjQ0ZGRhOTc=
xMGFjNDM0MDEzZjI4ZDdhNmMzODRmYzUwYjRkOTFmNDllZjZlM2IxOWM5ZDJlZDZmN2Y1OTRmZG=
U5M2VkYjkzMWZjZTkzMzJhMmRkODk3NDEwNTg1YmU3NmU1ZGU0YjU3ZGU2ZTg5YjcxYzUwNDNiM=
DVlM2MwNjEyNzFmMDk0Mjc1OGY0MWZjYWEyYWE2ZGQwNWM4NDYzZTAyY2E1NDA1NDk2MDczZTRm=
MGEwNDdjMTNkMjA1NTZiNmU0ZjMzNTRiYTQxODJhZTY5NmY4MjdkZGZiZDgwMTBmODhjYjRiODB=
jYmQzYmNlMTNkMDYzZTQ1MGY3ZGRkMjA4YTcyMGZl" target=3D"_blank" style=3D"font-=
family:Helvetica,Arial,sans-serif">
                                    <img width=3D"311" alt=3D"Plan a visit =
to West Maui when it reopens for travel Oct 8" style=3D"display: block; bor=
der-radius: 0px 0px 16px 16px; font-family: Helvetica, Arial, sans-serif;" =
src=3D"https://a.travel-assets.com/travel-assets-manager/ceorg-3741/WestMau=
iToReopen-eMail-Secondary-M-311x311.jpg" class=3D"m_1202337279934882522max-=
w-full m_1202337279934882522w100pc"/>
                                </a>
                            </p>
                        </div>
                       =20
                       =20
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td style=3D"font-family:Helvetica,Arial,sa=
ns-serif">
                                    <p class=3D"m_1202337279934882522h-dark=
" style=3D"font-size:16px;line-height:126%;margin:0px 0px 8px;text-align:le=
ft;font-family:Helvetica,Arial,sans-serif;font-weight:600!important;color:r=
gb(25,30,59)">
                                        West Maui reopens for travel on Oct=
 8
                                    </p>
                                </td>
                            </tr>
                        </tbody></table>
                     =20
                       =20
                        <table cellpadding=3D"0" cellspacing=3D"0" width=3D=
"100%" role=3D"presentation" style=3D"min-width:100%;font-family:Helvetica,=
Arial,sans-serif">
                           =20
                            <tbody style=3D"font-family:Helvetica,Arial,san=
s-serif"><tr style=3D"font-family:Helvetica,Arial,sans-serif">
                                <td align=3D"left" valign=3D"middle" style=
=3D"font-family:Helvetica,Arial,sans-serif">
                                   =20
                                    <p style=3D"margin:0px 12px 8px 0px;fon=
t-size:14px;line-height:144%;text-align:left;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(25,30,59)">
                                      Hawai=CA=BBi Governor Green has annou=
nced that beautiful K=C4=81=E2=80=98anapali, N=C4=81pili, Honok=C5=8Dwai, a=
nd Kapalua will fully reopen for travel on Oct 8. Plan a visit to this spec=
ial place, support the island&#39;s businesses, and make a new memory.
<br/><br/>
Lahaina will remain closed to the public out of respect to the town=E2=80=
=99s residents.
                                    </p>
                                 =20
                                    <p style=3D"font-size:14px;line-height:=
130%;font-weight:normal;margin:0px 0px 16px;text-align:left;font-family:Hel=
vetica,Arial,sans-serif;color:rgb(22,104,227)">
                                      <a href=3D"localhost:1333?u=3DY2NkZjc=
3MWNhMjY5M2E1Y2JlOWYyNmRkZDBiNTBhMTM1YzlkNDVlYzZmZDI3MzhiYjE1NDhlYTZkN2E3Zj=
I3MjU4NDhjZDZkYmQyNzgwOTM2MDg1YWU0MDliNmI0MjUwMDU4YWUwOWQwMzY2YmVkYzBlZjJkN=
TUzNzQxMDA3MzEzNDE3OGM2MWE4NmVkOWFhYmY1ZDdiYTUyM2JjYjNjMGRhNTc2ODM3ODYwYmVh=
ZGMxY2FhYTVjNzc2NDA4NzFlOWFhNjEzMzI5NWUxODljOWRjOWU2NTlmNzY0NDQ0NmQxZjQ5ZDY=
2M2U5NTA0NTY2YTRjODBiNjI2ZjYyZTg2YTc0YTZjODRiY2E3MTYwNDRmNWQ2OGQ0ZTk3NjliYW=
NjZTI1YzU0OGIwMzVmOTQ4NDNlYmQ2NDg2Y2M5ZDcwNjI2N2NkYTExM2M3ODg5NTU2MDY5ZTNhN=
WM5ZjExMmQzNTNlNzc4ZjQ0YzMyZjlhMmEwMGRjOWIzNDVmMTcyNQ=3D=3D" style=3D"text-=
decoration:underline;font-family:Helvetica,Arial,sans-serif;color:rgb(22,10=
4,227)" target=3D"_blank">
                                        Explore Hawaii Hotels
                                      </a>
                                    </p>                                 =
=20
                                 =20
                                </td>
                            </tr>
                        </tbody></table>                     =20
                    </td>
                </tr>
            </tbody></table>
        </td>
    </tr>
</tbody></table>


     =20
      <table cellpadding=3D"0" cellspacing=3D"0" width=3D"100%" role=3D"pre=
sentation" style=3D"min-width:100%;font-family:Helvetica,Arial,sans-serif">=
<tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font-f=
amily:Helvetica,Arial,sans-serif"><td style=3D"font-family:Helvetica,Arial,=
sans-serif"><div style=3D"line-height:16px;height:16px;font-size:16px;font-=
family:Helvetica,Arial,sans-serif">
        =C2=A0=C2=A0 =E2=80=8A</div></td></tr></tbody></table>
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
       =20
       =20
       =20
       =20


<table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0" style=3D"max-width:600px;font-family:Helvetica,Arial,sans=
-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td style=3D"padding:24px 0px 0px;font-family:Helvetica,Arial,sans-seri=
f;background-color:rgb(243,243,245)">
      <table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=
=3D"0" cellpadding=3D"0" style=3D"max-width:600px;font-family:Helvetica,Ari=
al,sans-serif" class=3D"m_1202337279934882522w100pc">
        <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=
=3D"font-family:Helvetica,Arial,sans-serif">
          <td width=3D"100%" align=3D"center" style=3D"font-family:Helvetic=
a,Arial,sans-serif"><p style=3D"font-size:16px;line-height:150%;font-weight=
:normal;margin:0px 36px 9px;font-family:Helvetica,Arial,sans-serif;color:rg=
b(25,30,59)">Download our FREE mobile app</p></td>
        </tr>
        <tr style=3D"font-family:Helvetica,Arial,sans-serif">
          <td width=3D"100%" align=3D"center" valign=3D"top" style=3D"font-=
family:Helvetica,Arial,sans-serif">
            <center style=3D"font-family:Helvetica,Arial,sans-serif">
              <table role=3D"presentation" border=3D"0" cellspacing=3D"0" c=
ellpadding=3D"0" align=3D"center" style=3D"font-family:Helvetica,Arial,sans=
-serif">
                <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr=
 style=3D"font-family:Helvetica,Arial,sans-serif">
                 =20
                  <td style=3D"text-align:right;font-family:Helvetica,Arial=
,sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DMWZjOGNlZjUxYjQ3ZDZmMTc0MWMyMT=
JkMzM4MzAyOWViODhlY2ZlN2Y0YzQzYTVlZTY0ZDU1NjNhNTdhM2YyMzQ0MDQ3OWRjN2Q1NTgxZ=
jY4ZWIwOTExNjZlZTdmZjNkYTNjMzRmOTY2NGVmMjE5MTkxNjY0YmFkYWNhMTc3ZWQ5ZGVlZWIx=
NGNjMmFhNGU4MDhhOGNhNzQ2ZWM0YmM5OTY3MTM2ZmNjNGJjZmQ0NjEwMzY2MzVlZjU1Y2M4NWQ=
1Y2EzYmFhNTBkZTA1YWU2ZThmYzNmZTZjNmQxNzFiNGVhOTEwYzA4ZjZmYjE5MjRiYjA4MDU3OG=
U1MTJiMWFhYjNiNTIyOTVkNTZiMmE5YWE5ODM5NDhmMmEwZjIyYzJmODhiMWZlYWU2NmVjNmVmM=
zM3Y2RlMjQ4ZGM4NDlkMDgxZTI4MTRjYzBkMDI2OWQ4ZjJmOWU2Y2EyNTY5OTEwNzc3NTZkZWFm=
Mzk0ODM1OTI5MzQ4NzQwMzhl" target=3D"_blank">=20
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_iOS.png" alt=3D"App Store" width=3D"auto" height=3D=
"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: none; =
text-decoration: none; width: auto; font-family: Helvetica, Arial, sans-ser=
if;"/>
                    </a>
                  </td>
                  <td width=3D"14" style=3D"font-family:Helvetica,Arial,san=
s-serif">=C2=A0</td>
                 =20
                  <td style=3D"text-align:left;font-family:Helvetica,Arial,=
sans-serif">
                    <a style=3D"text-decoration:none;font-family:Helvetica,=
Arial,sans-serif" href=3D"localhost:1333?u=3DOTlkMDA2NmYxNmQ5YmEzMjhmYzQwYT=
BiZjM5ZGJlMmJmNjBhZmRhYjQwNDFkY2U3ZjJlMGQ2MjhmYWZhODM3NGYyOWY4NjNiY2RmZjdiM=
2UzMjVkYTNmYTE1MjMzMWJjNTgxNTg0NGU5NDRiNjZhNzY1NDQzNzc0ZTg0ZWViYmNiZmMyMWVl=
OTI3NzcyNmU2Y2VmOWQyYjFjMTFiMjZjZjhmMmY0MjJlZGVlMjkxOGUxMTNlZGRiZGRmYjJmNmU=
2YzE2N2FkN2VlNDViNmVkYzM3YTIxOTZlMjA2MGUxNGZkYzk0NDljZTA0Y2MwNDVlNzVkMGNiMz=
c0YzAzYzNkZjI1YjgyNzFkODNhNWUzYjkwZmYyZTlkNWRmNDVlYjE3OTRjYTg3MGJiZGJmNmUzN=
mZjY2Q0NjEwMDRmMDUwZmFhYjA1YzMyMTM1ZDNlZGFmNmJjMTBjMmM1NGNmNzAyY2E4NDNlMjk3=
ZmE2ZWY0Njk5ZjEzNzMyMmZk" target=3D"_blank">
                      <img src=3D"https://image.eg.expedia.com/lib/fe321172=
7364047c721775/m/1/enUS_Android.png" alt=3D"Google Play" width=3D"auto" hei=
ght=3D"28" style=3D"border: 0px; height: 28px; line-height: 100%; outline: =
none; text-decoration: none; width: auto; font-family: Helvetica, Arial, sa=
ns-serif;"/>
                    </a>
                  </td>
                 =20
                </tr>
              </tbody></table>
            </center>
          </td>
        </tr>
      </tbody></table>
    </td>
  </tr>
</tbody></table>

       =20
<table role=3D"presentation" border=3D"0" cellpadding=3D"0" cellspacing=3D"=
0" width=3D"100%" class=3D"m_1202337279934882522w100pc" style=3D"font-famil=
y:Helvetica,Arial,sans-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td align=3D"center" width=3D"100%" style=3D"margin:0px auto;max-width:=
600px;font-family:Helvetica,Arial,sans-serif;background-color:rgb(243,243,2=
45)">
      <p style=3D"font-size:12px;line-height:134%;font-weight:normal;margin=
:24px 36px;font-family:Helvetica,Arial,sans-serif;color:rgb(25,30,59)" clas=
s=3D"m_1202337279934882522gutter-margin">=20
       =20
       =20
        =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzVlOWMwZTRiNGVi=
YzFkNTJjZjE4Y2I1MWJjZmZmNzk4ZTdmOTI2OTk5M2YyNGRmNmJkZmI0YzU2ZTZmNDQ2ZjYzMTQ=
2M2Q1NWZmZmFjMjViZWM1MzIwNzhkYmYzMjA1MDRlNDg1MmY1ODg5OThmZmJkMDVjMzhhODY0OD=
dlNDZmZGEyNjllZWQ5OTcwZjEyOGY5NTA1ZDc2MmQwZWMwY2Y3MTQ2MjlhMDFlOTZlMThhZjdjM=
DY0ZmJhMDIzYTkyM2RlMjM2MjMzNWViNmRiNDFlNThjZDZkNGJlY2FhODYzZjhkNDg1NzBlNDg0=
NDI3YTU4ZTY0Mzg2ZjA3ZjIzYzVmMmNhZWU5ZjNjODdlYjkzODY5NmVjNWIxNTkzYTgwOTIwNzc=
zNDI5YzAxYzM0N2FkMTFkYTM2NWU0MTNkNjE0ZjkxYzZiNmJhOWNmY2M5NDQ3NmU5ZDRkYmIzMm=
NhMmVlNzA1NWY4OTA1MTdhYzI3ZWEzOTczNDVhNTJiZQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYzBmN2VlZDkzMjE3=
MTk2ZTliYjA4YTdmZjkyMjkzYmE5ZDM3ZWM4MzM2ZDUyOGM2OGM5Yjg0N2NmN2M5Y2NhMDRlZWQ=
xODY3YTg3NTJkOWE2YmYwMTM3MDA2Y2EwYjkwZDVlYWZkMTA4Y2VlYTc3NDc0NzUyMjZhNmRjNG=
Q1NDVhNjYzMDhkMjMzNDgxZTZhNDUwZmMwMDI5ODZhZDNmZGI2NGE4MGY1ZjZmYzI3ZTBhNjVkN=
jg5NTg2NDQ0ZTU0NTYzNzgyMmQ3YmZlZjQ1YzdhZDA0YzBlMDExOGRjMWY0MTI5M2RjN2QzYjg3=
YzQ5YWM0NGE2M2Q3N2ZhODI4M2ExZDU0ZGNhODFlMzAyMmZjNzcwM2Q1MTFjOTRlOTM0MjZmNzk=
yNmU0YjM0NjdiMDk4YWE5MDhhNzkxOGVlMjVjN2NmOGQ1M2FmNzNkN2YwN2QxYjZjNjQ3NTQwYj=
M0MTU2NjdiMzI1NzU0NWJjMjViZjgxZmM4OTBjYzhhMg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZjUwYTRjYjNlODcz=
NjI3Y2M3NjVhMGY3ZjExNTYxZWMzYjYwOGUxZTYxMTYxNWNkNTBjNTY4N2U2NDhjOTBmMzZhZmY=
2Mzc2OTkwYjQ5YmE0NDcwOWNhNWJlOWIxYWUwNmNkZTZmOTgzNWZkOGQ3ZjA0ODI5NDc4OGM3Nz=
QzY2M1NDNkYTU0NTExZDJlNDY4OWMyODA2MDA5YjUyOTkyZjJkYTdmNzEyNGVhNWE1ZjFiMTUxM=
mEyN2U1MTc1ZWZiNTNkNjM2ZmNkNTY0Y2FjNmJiMDM2ZjAxYTQ0YmVmNzE4MGZhMzFkMTNlN2I5=
ZGE3NzJiOWYzZTgwMjNmODI0YjI2MzE5YWNhZWQ5ZTc2M2RjZDI1MGQyMTNmMjI1YWFlMzBkNzM=
yOTdkYWRmODM4NzAwYzFlOGE4ZjEyNTg0MDQzYTc3ZWQ3ODdlOTlhYzkzZDAyZTk5OWU5NTNlND=
M2N2Q5OTQ1MGEyNDAxYzMyMDcwNGNmZDk5NDliZDNkOQ=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTgxYjkyZGEzYmJm=
YjBkMGU2YzY4MWI0Y2YwNmZiNDllN2ZhMDA0NDhhMGE0YzJiYzk3OTcwNzI0YmRlYmUyZGMyZGN=
iZDBiYTNmZjY4NmIwZjMzNGUzN2NmZGNlZGVlMGYyYjc5ODEwMTI1ZWQzNGYzMzdiZDQ3ODM0OW=
Y2NDQ0MmUwMzRmNjIyZDcyZmMwMDIxMDFiMjI5MTI1NWRkMjIxNDRhMjdkZDQ2OWQxYTI2MWU3M=
zM5N2NmZTBhOTBhNmZkMWJkNjc3MmFhNjRiZjVjYzRlYWI5NjQzZjYxMGY0MjQ4YTQ1ZDQ3ZTBm=
NGI0NDI1MjNhZjNkOTlmNTc3ODg3ZDM4YWJkMDdiNDZkMTljNmU4YThkNzY5NmIzYjcxMjYyOGI=
zODM0ZGUyYWJlYjFkMDdjYTQ3N2Y3ZjczNTA2OTE4OGU3MzM0MzIzNjg1NWIwMmZiODQ5Njg3NT=
Q4M2NlNmZiNDMxNzZlMGU2NWU0ZmFiNjFiNWYxNzcwZg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZTg0ZTQwZDZjODk2Zj=
I2Njc2MmI5MzliNDU5ZjI3ZDQzOWU3MmYwM2YxZjM2ZDRkNTBhYzExM2U4MTEwZGEwZGRkNzMzY=
2FmN2I3OWIyODYwZTBmMjQ1YTdlMjZlOGJmNjNkODEzZTQyYzRhM2Q3MmJlODA4OGU4YWMxMmZj=
M2M3ZjY1NzgxM2ZjNjEzMzVjNmM3ZjNlZjkzZTA3OTkyZWEwYWNkNmY5NThkYWZiN2YzMDQyZWY=
4MTVjMDk4YWUxZDM0MjYwNjYxYmE0Y2JmYTRiNTkyN2E1NzNhYzlmOTdkYTdkZmNlODRkMmZmMD=
czNDNjZWY2OGYxZmZhMmJlNDA5NzRlNTcwNGJjNzAxZWNlZjkxYzI4Y2ZmMTJmOWUyMGUwZmYyZ=
GMxMjY4N2Q5ODc2NDRhZmRiOWQwMzRmZWNkOWVhMzA5ZTA5NzAyYjkzNGVkMWNmYWM5NmUwMjZm=
Mzk4MDQ3NjQzZTc2ZGY1ZjhhMzQzMWMwMzgzZDk1Yw=3D=3D" target=3D"_blank">Custome=
r Service</a>
       =20
      </p>
    </td>
  </tr>
</tbody></table>

       =20
                =20
<table role=3D"presentation" width=3D"100%" border=3D"0" cellspacing=3D"0" =
cellpadding=3D"0" style=3D"font-family:Helvetica,Arial,sans-serif">
  <tbody style=3D"font-family:Helvetica,Arial,sans-serif"><tr style=3D"font=
-family:Helvetica,Arial,sans-serif">
    <td style=3D"font-family:Helvetica,Arial,sans-serif;background-color:rg=
b(243,243,245)">
      <p style=3D"text-align:left;font-size:12px;line-height:134%;font-weig=
ht:normal;margin:0px 32px;font-family:Helvetica,Arial,sans-serif;color:rgb(=
25,30,59)">
   =20
   =20
    =20

     This email and its links may contain your personal information; please=
 only forward to people you trust.<br/><br/>You are receiving this email be=
cause you are eligible to receive promotional emails from Expedia.
         <br/>
         <br/>
   =20
       =20
    =20

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DOTMxMDIzZjEwMzYx=
Y2NhNjJmYmU2NWQ0Y2FhZjlhOWI4MDNmY2IzNTNiYzZiMWUxMzBlMDdmOTczMGZhNzlmNzc1ODQ=
0YzAyZDIyOTdjNDMzYWQzMzE5YzI2MWM1YzRlMGQ1NjcxNzEzOGUxYjdiNTQwZjRkNzhiZjAzMm=
VkNTZhNjkxN2Y1OTI0NmJjOWFjZmNhN2E2ZjFlNWFiYmQ3YzUyMTJkNGMwZDJlYzJhNmVjOGExZ=
TJiY2EzMGExNjBhNmVmNjJiMWYwZmFhODlmMjM3NzVlNjc0YzA1ZDA5NTRkZWYwNmE1MjNmZmVk=
NDA2YjMyMWJhNjI0MjI3OWI=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
">1111 Expedia Group Way W., Seattle WA 98119</a>.=20
          <br/>
          <br/>
       =20
       =20
         =20

          <strong style=3D"font-family:Helvetica,Arial,sans-serif"><a role=
=3D"presentation" style=3D"font-family:Helvetica,Arial,sans-serif;text-deco=
ration:none!important;color:inherit">CST# 2029030-50</a></strong>
          <br/>
          <br/>
       =20
       =20
         =20

          =C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights r=
eserved. Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks =
or registered trademarks of Expedia, Inc.
          <br/>
          <br/>
       =20
       =20
   =20
        <a href=3D"localhost:1333?u=3DYTYyZjBmNDNlZjNkZTE3YzMzNTk3OWYyNmE4Y=
TlmZjVjYmYxM2UzZDFmMzMxYTkwYzJmNGFiYWNkMGE1ODU0MGY3Y2Y5YWFhMjc2ZjViZjY1MDFh=
YTZiZjliY2RiOTQ3MjIyMTEyNjE1MTlhZmM0ZGEwMmUzYjNhMmNlMjZkMjg4NzQ4ZGFjYTIwNjk=
2ZmQ2NzJlM2U2M2MwMGJjM2Y3MjY0ZDNlNDg0ZGEwODI5ZTEwMzM4NDU3YzA2ZDQ1YWQxYWM3ND=
E5YzAyZmM0ZjM0MDBlODM4NTllZWI4OTFhNzIwODRmNGM3Yjc0NTFjZmIyOTllOGM2ZDZmZjMxN=
jZkYWQwZmY3NmQzZWNlNWEyOTgwZjUzNmFkMDRhOTVkMTZmNTQwNjc0ZmEzZGViNGRjZmFlMTc2=
M2FlM2RjOGEwMmU3ZDE1MThjNjViNDNiYjljNGJhMThhMzEzOGEwNzg5NGIxNGY4ZjA4OGRjZmN=
kNzk0ZDBmMWNjODJlZDkwMjA0N2U5ZDU1YjYxMjQzOTU2NzQ1NTE0MGU1NDE5ODQxMGVjYmE3M2=
ZjNzE3ZjA4ZmIxNmI3ZmQxODc=3D" style=3D"font-size:12px;line-height:134%;font=
-weight:normal;margin:0px;text-decoration:underline;font-family:Helvetica,A=
rial,sans-serif;color:rgb(22,104,227)" target=3D"_blank">View online</a>
          <br/>
          <br/>
      </p>
     =20
      <p style=3D"font-size:12px;line-height:134%;font-weight:normal;text-a=
lign:left;margin:0px 32px;word-break:break-word;text-decoration:none;font-f=
amily:Helvetica,Arial,sans-serif;color:rgb(243,243,245)" aria-hidden=3D"tru=
e">EMLCID=3DUS.MKT.ACTV.6517fb570dbb61a0e51fae804a13e521.EML&amp;EMLDTL=3DD=
ATE20231003-ISSUX.SIDX.KEYX.PAIDX.LANGEN_US.MCIDX.TESTX.VERSX.MIDSX</p>
     =20
    </td>
  </tr>
</tbody></table>

       =20
 =20

       </td></tr></tbody></table>
       </td></tr></tbody></table>
 =20
  </div>

</div>




</div></div>





--00000000000049ba010606e05d24--
