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
From: localhost:1333?u=3DYmVkMDA0ZjJlODQ4ZTM0N2Q2NDkzMTU2NjIzZTY4OGI3MDVlOD=
AwYzI2MTYzYTVhOTBhOTI4ODcyZDljNzc1ZjZlZWUwNWFkNTlhYmMz <mail@eg.expedia.com=
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
<localhost:1333?u=3DMGNlMDZlNzZjMGVmYjIzNzdlYmFmNWIxOTAzODMzM2FiNDMxMTE5YjY=
1MDM0NjcxOTE3YjliN2VjOGMwYWExY2ZkMWRlOWI1MjdjNzQ3YjRiZTQ3ODExMTI2ZjNlZDAwYz=
g1MDUxNmY3MjIyNDIyODdiMzEzNzU3ZjhlMjk4M2NjNjg2ZmI2NmM0NmEwMTRkMTI1MDE4OGI0M=
mEyZjE1ZDlkYjNjNjA1YjA0OTViNmI4ZWVkYTk0NjZlNTE2ODc2MzQwMzcxYjI3YWM3MTNiMzVi=
YjA5NTQxOGY5NGUyMzE3NTBlZjhkYTIzMjYwNzQzMThmNWUyZmJhMDQxN2VhZGExODY1YzcwNWQ=
4OTdlNmZmNjVjNGViMTFkYWUxNGQzMzdmOTEzNmJkN2RkZTJiOWM2MmY1NGRiYWFjOWQ2ODA3Zj=
gzODMwNzVmM2E2YzBkNWQ0OGMxYzNjZDIzZDMwOWFkNTE3ODRmMjIzYjc0YWJlNzZiM2QzNDJm>

* The Travel Edit
<localhost:1333?u=3DMWNjM2FlNTYyNTJkM2E0NTg4MGVlZDI4NjUxZjI3Y2NhMzhmYzdiY2U=
wYzAyZTU0OGZiNzUyMWM2ZGMxOGY2NGQwN2RjODU0ZGVmMjZhZjJkOGIzZDAxMmFmNzlhYTAzN2=
ZmYTI3NjBjNGZkZmM5NmJjNjc2YWFjYTFkOWY2ZTIxYmQ4ZjJhYTEyOGE5ZWE0MzRiZTljYzIzN=
TgwZmJiZDc1MWMwOGI5M2IzZDc4YzgzODdmMDI5NjJhNzkyYzE0Nzc2MzBjY2M5ZjgyOWZjOGM5=
OWJjYjk0YmM5Zjk1OTVjMTlmZGIyMzM2MDM1ZDE2OGFiZTIzNmFiNzIzNTRjYWEzOWYxNzczNTV=
jYmRlZjU1ZTJlZDY4ODkxMzRjZGQ3Yjc1MGNiZmZiNDhlZjA1OTA2YzAzNmZhMmMzYTUzNDdhZG=
Y5Yzc1ODgwMjgyZjRlNDI0NDA2OGFiMjBmOWJhOGE4YTUxMTA0MzQ0ZTI3MjU4NDNkMDExMzVj>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DZWMwZGI5YzlmOWE2ZTgyNGIwYTE4NWQwZGM0ODI5YzM2YTc4OWNlNzB=
iM2U0N2I5NWUyNGVmY2Q5YjNkOTNjYmM0Yzk4ZTZhNzM3NGYyM2UxYTEzYmI1ZTY3OWEzZTliZT=
IyMGRmNGFmZjllZDc5MTg3MTE3MTk1MjkzZWU0NTY1YTE2NDFlNGZmYTk3NmI0ZWU4ZTBlMjdhM=
zc1MTIzYTIyYmIyNmQ2ZmEwMDNhNGVlNjQ0NGJiNzIyYTAzMjA2OTRlODgzZTFlMDczMDQ0ZDVh=
YzlhYzBlM2YwYjFlMzcwOTgxNTY0ODBhM2U2MDNiOGI0MzVlNmE5OTMxMmU1NTE3NmViMjdiYjI=
zMDkxMzk4ZjNjZWFlNzhiODVhZGZiZWRkMjFmMDJhMTAyYWZlMjc2YTNhNWU5MjI0MWY1ZDA1NW=
E3MmI5NTM2ZDA2OWM4NTI4OWM0ZTZiOWEwYzI5ZGY4OWY4YzNjYzliMzkxZTg1ZDM1MGVkYTQ4>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOGM3NjA3N2ZiYWM4NTMzZjI2NWM1NjMzM2E5MjgwOGIyMTM1Y2VjZDQ=
0NjI2MDdhMDAzNmM4NmQ0OTFhNTMxODk0ZjEzYzhiNjYxOGUwYzc2YmIyY2MyMDczZTYxNjQzM2=
IwYzgwZDdhMTM2NjRkYjQzMjk4ZTE0ODNiNmIwMTk1NGQzYTNiNTc4YTcwZTE0ZGQwYzgwMTM5Y=
zQ1ZTBiOWFmMDY1M2E2MTI3ZTZlNGJjMDM5MTVhYmFhMTFiYjhlNDRlYTJjMWZiZGIxMzM0YmZk=
OGQzZWE1ZDg4Mzc3MmQ5YjgzNDJiYjJmMjY3OGJmNTRhZGIzYTZkN2IwOTZmMDVkNTQyYTFhN2M=
4ZWI1NDA4OTc1ZjhiMmUyNDczZGQ4OTRkNzRiOTM0MjJhNDA3NmM3MTY4M2E3ZjFjNTUwMzhlOW=
RlOTM3Y2M2NmMyM2EyNWU3ZjEzODJlYjRlMGQ4MmM3NzczOGJhYzhhYzRlODE0YWJhMzcwMmYz>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DNjZlMjM4NDViNzBjMTdiOGM3YWRlNmE4ZjVlNWVjZDhiYjIwNDE3NGY=
zMTY3ZGJlMWQ0MDg4ZGM0NTI1YzFhZTk1N2QzMTU1YWFhMWU2OWI4Mjk4NmIyZGNjZTVhMDhmMj=
VmYmQzNWExZGQ2YjY1NmE5ODRjMzc3MGUwZDJiOWI5OGY2NDBhODZiYTI2OWE1MWY0MjEwMGJhZ=
GJlYzRhNDAzOTBlNDlhNGYwNTRlYTI3NTI2NWM0ZDFmZWRiNjBlZWE4NjRiMzc2ZTM1MjUyYmJi=
YWJmZjg4ODBiZjlkZmQxNTY1YTkwYWRlZThjNWNmZDdhNmZlNzExYTlmOTE4MmNlMWU4NTNlY2J=
jYzNkNWQzNzRmOGE2MzQyZTE4NjMwZjg2M2ZhNjk1YWRmZGYzMWE1ZGY1NmRmZGVlMjk0ODQyZT=
U2YWE1MzhhM2I4NTQ2MDI2ODA0MzBiMTYxMTRiM2M3ZTkwNGUxMjgwNTEwOGZmM2Q2MTg0NmQ4>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DOTUxZTUxZTM5MjUyNmEzMDMzMWJkNWQ4MjU0ZWIxZGI1NzYyZTQ5NGZ=
kMWIxZjFlNjg3NWE4MjQwMTRiMWZkYWIxMmE2MWQzMjljYTk5OTIxZjBhNmFmYTZkNDY3NjAwN2=
YyMGI1NDRiOTUzNDNiMjI2ZDhhNGI3ODk1N2RiODNlN2EwZjljNGE1MmQ4MTY0NmRjMGQ3OTFiO=
TM1YmQzMTY2YTYzOTJkYTc0Yjk4NGIzZTM4YmNkYjIzYmNlNmE2Y2QwODRiMTA1OGEwYjVjYTBh=
YWJhZDljOTA2MzAzNTczYzRlNWZmZTU0NDRjMzE5NmY4MDRiNDFhNjZlMmRhNWUyNDc1Yzk1MGY=
zYmE2MzAxMDQyOTFiNWZlOWVmMjZkNzVkZGMyMTZjY2QwZWYyMTcyZjdmMjExNTU5ZjNhYmNjZG=
UxNTJlNDhkYzg3MWI3NzA3N2NmNjVlMDVkYjllYzZhZjZjNTNkNTVhM2I4ODA5MjVmMTQwZjI4>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DOWVmZjUzNjc5ZWIwYzk3ZjllNzAzNGJhYWU5ZDY2YTAwOGY4NmJlMWJ=
iNjNlNGQ3NDk3N2VjMGRmNzg0ZDk2NjFhZmQzOTk4MjkxODJiZDdmNzBkMmViM2RjMWI2ZTYzOD=
Q2ZTNkOTAxYTdiZTk2MjdlMTcwNTEwYTRhY2QzYTkwZTJjY2M1MmI1YTMxODYxYzA0NjY5NDVjN=
jdkM2FmMDgzZTRlMmY0NjcyZGU1NWVlOTk1NDVhNDZhODJkNmZmYzU2NmY2MjFjYmNlZTFlNzQz=
ZDlkODViYzcwMTQyZThkMTM4OWNiZGQ0YjlmMWZmZDJmYTUyZGRhYmFmNTNjOWMxYjdkZTFjYjZ=
lOTc1MGZiYWQ5ZGI5M2RhMzY0Y2YwNTllZjQxNzc3MjkzYzQ0NWZjM2UzM2FmNWEwYTY1MGY4ZD=
g2YTI2OWY1ZjM5MTliZGJmNGUwYWZmZmMyMmU4M2IzZjFkNzI3NTg4NDdmOWE3ODYzYjFmMDQ4>

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
<localhost:1333?u=3DMjA0YWYyYmI2NzliNGFlNmE0NTQzNDAwYzRlZTAyNmFiNjdiNTJlZDQ=
3Njk4NmFjMzc0OTA5NjRhN2QzOTQwMDc2YWIwMDljZjFjZTU1ZTcyMDBjZjFjOTdjNWVmM2UyYj=
A5MTcyOGQ3ZTAyMmYxNTYzN2M1ZmE4NTE1ZWZjNDViNzQ5MjE1N2ViYzFiZjkwNmM5NTc5MDlkM=
zNkYzY5NmMwZmVmMjRiZjM0ZDEwODU2Zjg2ZTFmOTljZmNlYmFjN2JjYjA3YTZhYWUwMzJmZjY1=
MTE2NmFkNzYxZjllMzRiYjdiZTAyNjRiNzMyY2ZlODg0NzE1MjIwMzBjN2ZjODJiYTJiY2FhOTh=
jMDRiNTBhMzMwNDJlMmFkNTcwYjFhMmJiYzJkZjIyNDVlNWM4NDg0NzViYmQ2ZjAyY2RkNTkxZj=
A3NTdhOTE3YWIxNjEzNWIwZjRhZDAyOTMzNzkwNGRlZDhhNjBkZjEzZDQwZjdkMjEyNDg1YzQwM=
TI4Yw=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DMTFkZTkyMWJkYmYwMDIyODhhOTk5NTkzMTg4MGI0OTdjNTcyOTBjZjE=
0MmYwMGM1OWUwYWE2OTFkMmJhOTU2YjUzZmRkZGY5Y2I5NjYwMzk1NzFkYzY3MGU5OGJhMTRkZD=
MxYmU4MTkwYWY5MmFlYzhmYjAxZTQ2ODk3MmI2ODRhM2Y5NjU5MTE4NTVjY2Y0YjA0NDNkNTg3O=
DUxYzQzOTk4OGU5MGEzZWYxMmUyMWQwZDVjOGEwZWEzZmQwMzAxMmRjM2FkZjdiN2QzY2M2MTFk=
NzAzYTAwN2M1NTU1ZGQxZjQzN2YxN2UyNTQ3MGUwOTcxNTg2OTBkNjlhZDkzNTIyNTQ2MzRiNTM=
wZjJmYmExOWVjMjhjZjNkNTYzMjFmZGRkZmQyYWRiMDRjZjY0ODEzMDhjNjI3ZmQyYmRmNGRmNT=
lhY2M4ZjI5NjQyNzEyMjU3YTA4ZGE4ODY0ZTQ0N2UxY2U0MGM2MzEwYWMwY2Q0YjNjMjUwNmFj>
  [image: Google Play]
<localhost:1333?u=3DNmE2YmI0NzFhZjY3Zjk1NTYyNjIxNTBjNWUyZmY3MWRiNGViZGEyZjA=
wMzIzNDQ5Mzk0MTg5OWFiMTgyOTFiZTkxZDZjNjc4ZDJjMzgyNTY0YjJjNDQxNjM0YzQ1NWI1Nm=
M1Mzg0ZGU0ZGUyM2EwY2NmZWJmZDQ4MjEwNzIwMjIyOGY1OTQ0YWRmYjYwMTJmNmIwNmE1YjU5Y=
mI5NWFiMmIzYWI2NjkzMTdjODNiN2YxMzA4MzhmMmM1Y2Y3ZTJjMjM1NTFjYzMwMjJiODJkOTRl=
MzM5MGNhYjBlY2I1Y2JjOGJhY2E5ZTFhODllZTEyNDU0M2ZkZDk0M2EzNGE1NThmNDM0MGM4M2E=
xNDI3OTg0Y2YzMTk5NjI3OWY1YmIxMTFiZGM1MGQ3YzMzYzhkYTRmNjhmYmZhMmQ4MDEyZDcxOW=
I0MDE0MGM3YmRmMjQ3YWU0NjVmMjFjNDFlMjRhNWJjMDNmMzAzMjdlMTY3NWE2MmUxYjI0OWI5>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNTQ4ZjBmMzY2YzVjYWQ4ZTk5MTJmNDVkODIxOTg1Mzc1NGRkZTBjNTE=
0MjRiMmEyYWRmMTA1OWJjOTUyZTFiNDMxODc0NWFhMGI4NDlmMWU0ZTJiZjhlYWNmZDk1ZTVhZj=
c3M2I2ZjYwODZkMTk5MzFhMDZlMDFmOWU3ZWZkYjBkMWQwNmNkY2RlYjU3Y2JmZjU0OWNjNzczM=
jllMWMwNDQ5NjczODU1ZDMwNGQ4YmQyNGY0OGY3YzY3NmYwM2NhNDI4ODFiZmQ4NjhlZTMyNGQz=
NTA2N2FlOTQ1MmJjYWE4YzEyMmI0NGI0ODJhN2ZhMzI5MDI1MzU2YmQ5MTRmYjIzZjI0NzAzNzJ=
mNGVhYzZkMDhhNTY2OTdkMjE5YjRjYWU0ODNhOThmNjA3NDQ1ZmZjMmM1ODVjYzNmODY2NDNmYj=
EzNDg4MzkwMGVhYmFlODJhNzBhZGM0ZDM5ZjllNmFmZTAxNDZkOGYxMmZkZDg4MjVmN2EwOTlkY=
mQyNw=3D=3D>
   Manage Preferences
<localhost:1333?u=3DMTI4YTQ0M2ZkOTc2ODQ4YWVmMDQ2ZWI3Yjk4MWQxNjllNTE1MDU3NWZ=
hOTU5YmM4OTY4MGExZGYzYTMxZWYzY2UyMWE0ZmZjYzVhZjljOGM5MDFhY2Q3NDNiY2JjNTdjOD=
YzMjc3YzNhYzY1ODcxYjI3MDZlYjA4Y2RkODI3OTM5ZTVlYTQyNDVjNzViY2NlZjdlOGMzZTVjN=
jNhZWQ3Mzg4YjQ3NjE2MTU1YTllYWUxMjU1OGEwMWU4NTg4Mzg3MWRiMTEwNjE2Mzk4Y2ZlMTk4=
NzYwNzcyM2NlNjNlOTRhMTFlYTM3MTI5OWFlNjNhZWRhZmQyM2JmOWMxZmRjNDZhMmQ5MWNjZmE=
4NTFmN2I0MjRlZTJiZDMzMWI4MWRjZjE2MzlkNWQ5ZmEzZjQ3NmNjYmE3MTBkNWVkZTBhY2Y4Mz=
EyYjEwM2I0M2U4YjU0MTZiNmViNDcwNzEwNzRiNzQ1MDliYzZlYmFkNzQ4YzkxZDdkOTNiNWZlM=
jE3ZQ=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNWQzM2M2ZDIyODI4Yzc4ZjY4OTQxZTk3MzYyYjE5NGUzMTlkM2E2Nzc=
zMzdhOWJlN2ZjYTViOGIzMTU4ZDYxMDg5MzUyNzdmMTdkYzgxYTViMzM1MGYwNDU0YTMzYjAyNG=
JmYTI4ZjM2MzgxYjA4MDllN2M5ZGQzZTIzYjNiNGI4NjBkYWQwNjJiZTZlM2U4Yzg3ZjE2MzQzN=
DEzZjM2OWU3NzQ4OGQxMTdjY2Q3ZDdiYjlmOGM2YTZmYTc3Yjc5MTc1NmQwZTYzMDNkMWY4MTE0=
YmJkMWQyY2I0YTg3MjRkZTViZTUyMWJmMThmOTg5YjRjNTAwZmNkODc1NmEzNDI0M2M5NjRhMzI=
zM2RiMDFmNjFlOWZmN2Y2MTY1ZDFkMjAwZTc5ZTUyY2FkODdlY2RhMjE2ZTA1ZGFiYjUxYWE5N2=
UyNzBlYWZkYzkyZjYwYWJjOTE5ODlmY2M5MTJiMjExNmQwNTQyMTQ4ZTAxODAxNTAxZDY2Nzk3N=
zNjOA=3D=3D>
   About Us
<localhost:1333?u=3DMmE1N2JlMDliMzg1ZTZiZDQxMzU5YWZlOGFlYjRmNmY4MTZhMTBjODk=
zODg1ODQ1YTQ4MWYzNjliMjcyMjdjM2E0NWY4MzU2NDY3YmFiMzUwNTlkNTdlMmMzOGYwNmZiMD=
M3OTcxOTBjODgyZDM1OTUxYzY3ODI1ZGUxODI5NTBkNDU1NDBhYjgzM2VlZmY4OTYwYTFjMTM0M=
jY3MWJmNjZkNDhmNDc1YTJkYThlM2EzNTFmYmJmZDdhY2M1MTViYjA3MzY1YmM1Y2RmODRhMDNj=
MmEyNThiNmI2M2YwM2Q5NmMzM2M3OGJjZGVhYmQ4ZjM4N2IxM2IwZmIwODhmMjdlZmQxZDk4ZDQ=
yMjY0OGE5NDJkODkwZWE4MmY1OTcxMzhjOGY4NGYxMGFjMzQ0MmZjNThmN2ViYjMwNjNhNDY1OG=
Q3MTEyYWE2NjA4MTUyZmY4ZTJhYzIwN2I3YjE5ZmI0NDdjMjBiZGY4YWZkNTYyMDQwN2UxZmMyZ=
WE2Yw=3D=3D>
   Customer Service
<localhost:1333?u=3DOWE4N2MyODYyY2UzNTdiNDc1MzFkZjgyZGZkYTVlY2MzNTFhZjkzNDI=
wMWJhZWM5YTZhZjQxZmY0YzkzN2ZiN2EwNWQxYTAyMGY3MTNlMzY0MGJkMDQxZmQ1NzIzYTY0ZD=
BhOTY5ZTQyMDU1MTYxYTMzNjlmMmIxN2VhYTI3NzhiOGQ4MzRjNjdiMjdiY2IzNjFiZWRlMWZkZ=
TdhNWEwMDgyMzIwNGJhZTc4MmVlZmIzNTY0N2ZjOWU2N2U0NDQ4YTQyMDQ0MWJkZWIyMTAyZGEy=
ZmY3ZDMzZTIzOTU1MWM3ZjlmNDI0YmNjYjQ0NjQzYjhjM2ZlMjUzZTllNmM2M2E1MGQwOWQwZDY=
5MjgzZDZhMGJhMWQ0Yjc2NDMyNDFiMjRkMGYzMTI0NTQwYzBiMjViZWMxZjNmNjVmNGFiYjUxMz=
c5YWIwOGVjMDhlNmM5OGQxMTRlYzBhMTg3MmNmMGY4ZjdjMjc5YzQzMzEwYjM2ZGYzZDA0ODhhN=
TE2ZA=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DYTEwZjA2ODlmMTVjOWM2MTc1NDA3YjFlNTUxNjhhNjZhMDliYjEyNjM=
wNWU5ZjQ0Y2E0YjVmN2Y2ODZlMjEzZWIzODNjZGMwM2JiMTdiYWQzYTdhNmYyZGQ4MGU4NTdkMT=
Q1M2Q0YjEyYTA5NDc1NDMwMTE1NWE3YjNlMDI0ZmQ3MTE0ZDAzYzJkNmY2OGUxYTljNjNmYThhY=
2FkMTRhYTk5M2JlM2JmZmRlNjUwY2M5NTc1MDUxZDE1MjdkMGFmZWUwYzFjMTQ0NWYzNjYzMjkw=
ZGQ4NDNmOTBhOWVhNWJmNzJmN2Y4MmUxNGNhMGYwNjA4ZTY4ZDczZDQ2OGY=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DOGE0MDA4NTJiNDQ3Mzc4ODM2NzBhMmU3NzcyNzI3YzYxZjgzNjIwZmF=
iM2E3M2Y1ZmY1ZmRlMzU2MzhiMTY2MTI2MzczMjJiOGI5MzFiZjBiOWFiZjgzOTg3ZTcyOTdkNW=
MyMmJhNTAxNTg2ZDJmYjEzZTFkZmYzYmM1YjVjNzAyNzczMDI3ZjcxYjk4OTI0NDE0ZjlkYmQyN=
zMxYzkyOTlkODI1ZjNiOGU0YmQ0ZDYyNjQ4OTkxZDU1NmYwMDJjNGIzN2UwYmY2MGYzMzFmMDky=
ZjgyOGRiZjY1YWMzMjRkOTg2MDYxMmVjMDAzMzkwYjZiZmEwZmJkNzNjMDgyYzAzY2FlYWExNzB=
hODlkMzg4YTUyNjZhZDBiMzE2OTAxMTU5MzAyMWE3NTBhZjcwMTRjY2MxYmEwZGJjMWUzMzgyOD=
AyMmZiODhlY2I4OWYyOGU1NGUyYzU2NmFhNGRjYzBlOGQ4OTkwZjE0OTMwOWQ3MmUyNzc0YTQ5N=
zcyMTQwZGE2OWFhMTBhNTE5MDUzMDUxNmQzNmEyY2QyOTc0MDgxOWE1N2M1MWU0Njk1NWYwZDJi=
NWU1YjA=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZWZiZDliZTBlNDNiYjIw=
N2JmNWMwZTMyYWVkODBiMGNjN2VmZDE3Nzg5MWE3MWFmNGY2MzUyZjc5YzRhMzYwYTNhMjQ1YWU=
yYjBhMTdiOGJiMTU1NTM2OWYzZDg1YWM4Y2FkMDE5ZDRlMWI0MjEzMjZjYjVjMWU2ZjczYjkwZT=
ljMjI0NDQzMWI0NmI1ZDZiYTQxYTVkN2RiYjNjNDYwYjY0MWIzNGJhMzcwYTBmZTYyYTdiNmNlY=
zIxNDgxOTQ4MWQ4N2Q0MDRiNTVjZmE1MzRiZjAxY2VlODM3YTU4NzY2NGNlMzk1ZmY5MzI2ZDg3=
YmJlMjFhN2Y4YjQwMDVkYzk5ZTI3ZDA0MDJkYmM4ZWIzMmU2NjhmZGQ4NGVlYjc0ODA2YzhjOWN=
mNDhkZWFkZTM2MmZmZjdmNDU5Yjk3NjBlZjI0MWJmZDUyNzY2ODI5NzU3NzBlMGM3MGE4ZmNhZW=
FjNTMzYmUxNzgwODU0Yzk4N2U5NDRlY2Q3" target=3D"_blank">
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
?u=3DNTQ0YWE2MjQzMGY2YWU3ODg1YzU3ZjdhYzQzN2E5NTRiMjFhNDYyNTBjZDUyMzNmZjM1Mz=
VmZDgxZmIxNTdhNjBhMWM4OTJkNDFhNDE1ZTJhOGQ5YmU2ODEwYWVlMTBiMTZiODZlZGQwMDU1M=
GUxYjM5NWY0Nzg5NWE2ZjNhOTBmOWEzMGRmOGYzNzdmYjRmYjEyMTlkZjJhYTgxMmNiY2M4M2E2=
MTUwY2Y3NzI1OGMwMjU1YzMyZjJmYWNkNDU0YWVjZTBiOTRjMDZiOTZmYjI1Y2JjN2ZmNTJlNmJ=
jMzc4MTQ1YmI0NzFlZTZiNTE5YzFhNjk0ZTYzYWExYmViMDI4ZmMyNDM5MDk5Yzk3NzRlNjk5Mz=
I4MzkwNDA2ZWY1MDU5YzZiMmY5M2E2MmFhNWIxYWQxZDdlODZiODUzNjM5Y2MxM2Q2MWE4Zjg3M=
DlhZjQwZDllOTAxOWMzNjE4YjJhMmU2YTRiZTdkNDAzYWY2ODIzYzcxMmFj" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DNWY5ZWM5O=
WFlNzMxNDEyYjk5MWY2ZDhmYmQwY2U2NDg2YjBlZGZmNzg3M2U4OTMyYWY4MzYxMGZmNGFjY2Zm=
MWMxOGVjNWMzMzY3OTkzYzNkN2FlY2U4MGQ4NDUxZmE3MDNlOWEyODQ5MGYyMWVhYWUyZjdjNjQ=
3NDYwMzEzNGI0YzEyNWM3ZmE5MDFjYTFlNzU0MzcwZWU4MjRlYzg5M2ZmZTVlZDQwZTBjMWM3MG=
Y4MTFiYjhiNTY5MTYwZDVjMzBkNTI2OWYzMGFmMDg1ZDQ2MTRlYThhYzg0NzNjMzYwYzZmYjNjM=
TI4ODU4MmJlOTUzNzE1ZGRiMzIwMGYxM2Q0NmQxODAwMWI5MGMzYzZkYjAxNWE5NzViMWVmZWMy=
YWViYWViZDRkM2M2NmU0NTkyYTZjNGRiYTJlNGExNDFkYzdlNTY0YzhhMmQwYTQ5N2FmNDEzMzB=
hZTFjYjI0M2U3YTQ4OGFjM2M0N2QxYzBlYmUyN2U5YmY3" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DNzVhYmR=
jZWQ2NTg0MTVlMjMxY2VkMGIyYjUzN2JiYzU3ZmRjNGRkYmM2Njc1YWQyNWRhN2I3MTUyN2Y0OT=
cwZGJkNDYyZDA2MzI0MGU5N2U0MThmMzhkOWVjMGQxYTg2M2JjZDZmYzcwOTU0Yjg2ZTdjMDkyN=
zM3YjQ1NWEzNWM3ZGI1ZWRkODhjYWE4OWMwYTdlMDYxNGQzZDQzNzY3ZTA0OWE5YmZmOWM5NDQ2=
Njc0Y2EwMmViYTFiOWM5N2ZhZDYwYTM0MTMxZmY5ZTY0NTg2M2QzNmViNGYxMDAwYzY2MWRmMGI=
wZjQwMGQyNzdmMjg3MDk5MGMzOTY1OGYxYTFlMzRjMzljYzJkZDlhYTE4MDFlYzc0YjZmYTYxMz=
MyZjI2MWY4ZTgyOTM2N2ViNjUwNDkwN2Q3MTQxMzZkZjhlMDA5NjIzYzY2NzVhOGJmZWZiNGExY=
zAwNDRlZTg5MmFhNDk3ZTdmZWY4MWJjMjliODFjYzE2NDli" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOTJiNTdiYjNl=
YmE5OTViZGJjN2M3ZmQzNzhlMmMyYzEzMGQxN2VkZTQ3ZTUzNjRkNmUyZDhiNmE3NDZlZjk0YTQ=
zZDlmMWFlYzgxYjAxOTgzMjRjZDY4NzJjZGE2ZDAzZjBlMWQ2MjNmN2ZhYWI5NzYzODUxZTBjOG=
I1OTE1YzQ4MzRlMWJlYWExNjUxNmUwYWY1NDAxOWI2ODM1NjY0ODNhMTZmZjcxMzI3ZWY4YjMyY=
zQ0M2ZhYzcxY2RjMTZmMmVlZWM3ZTRjNzcwNmQwNjg1MGM1YWY5Nzg1YTY0NDY5N2M5MjNkMDRk=
OTA4YjAwMjRkMjg0M2I2ZDljYjJhYWM4YzhmMGM0OTM1Yjg2OGZiYTc5MmEwZmJiNzllMWZiYmE=
xNmU5NWU4NjQ4OTRkMjhmMTUwYTQ1NDRiODljMzljNjZkOWU5MzU3MTBiNDFhY2VjODA1OTQ3NT=
hkNDAzNjczYzVjN2I2Y2MyOWM3NzI2ZjAzN2I2YTQ3" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DYTA5MWI5ZGUwN2VjY=
jE4MTM3ZmJjNTVhOTE1ZWU5NDY5MGMwMzQ3MjFjN2FjM2RkZWUwOTMyMDhiNDZmNTFlNTNiZTlk=
YTk1OGQzMzE4M2RmNGYwN2Y1N2I5OThiYWM3ZTdlYmU3OGMzZjQzZmQ4ZjRiM2VmOGIwYjNhNGZ=
iMWRkZjI1ZjY1MzMzYWZjMGRhNWQzMWQ5N2NkNjQxYWYwYWI3MzQ3MTdkODFiOTMxNTExYzFlYT=
U5MGFhMDQ4MzA3YTk1MGVlODFlOGRjNzM2MTFjMTQwMmVlODI3YWNiYzcwZmY5MzliODAwNWI2Z=
TUzODE1YzY1MGIzMGQwOWZiYjRiNjMwZjQyOTlkNTFlYzI1ZGJiODkxMmM5MTI2YmI4ZTRmMmE1=
YzM3ZjVkMDE3ODNjMGI2ZGEyOTNmODIwMjRhYmZiZjNmM2M0ODZkZjYwMDhhOTM5MzdhMmQ2YTk=
2NjVjMzliZTk0MGIwYTNkZGFkYTM4MjAxNzkx" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DMzczZDhhMmIxN=
zc5ZDg0OGQwYzJmY2E0OWYyYjJiODU4MGNkNmU3MjU4ODZkZDYwMzY3MWZmZTQ2ZmI2ZjUzYzFk=
YTZlYmExMjgwZDk0ODNjYzU3ZGEwYjJmOGVhY2RkNWE3YjM2YzViN2RkMmZhNmMzOTJmOTU3OTA=
2OTJhMGU5NDk1ZDExNGM2MDExMjVhODI2NGRmYmY0OGY1YmU2NGEyYjYzMDQ4NGUxMGUwMzg3Mj=
djMGE5Nzc2NjM4Mzg1OGY2NWZmMGEwODhjNTBkZmVkNmQxZjRjYjYwYzM2N2NiNzI1MjdhNjhlN=
WQ2ODRlYjZkOTAyMDJlYzBhYTExNmI0MjcyOTM4YjJjZTVhMzFiNzY4YTgwNDk0ODkxYTg2OTZm=
MGYyNDM5OTYxYThhZGI3MGFlNDExZTVjZjhkMDgyNWQ0ZmUzZDA2NGMzYjI2OTdjNjVjNDg3ZWU=
xZTQ4ZTY2MWZhMzgwYWU5MzE2YzU3Y2E0MDY3ZmIx" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DNzYzOWI=
2MzlmNDUwYWE3NzI3ZjMxNDViZmI4NGM4NGVmZGMxOWY3YjI5YTM0ZTVjN2IwYzllMDAxNzJiNz=
A5MTlmODczMjBhOGM1NTdhYmQ5ZGEzNmZmNmVkNjBiNmY5NmE4M2IwOTQzYWMxOTI2ZmQzYzVlM=
DQ4YmExYTQ3NjljYmVjNDZkOTc3MWExOGRmZjk2NjI5NzE4OTcxZGNmYjE0N2M3Yjk4Y2ZmYjZh=
ZWRkOGU0ODBiMDE3MTI2OTc5ZDU4NmY1YTM3ZTE0MjhlNmU2OTlhMjE4ZTk4Nzc2MmY1ZmY3OWI=
2OGUwNmEwZmQwMjdjODFmYzk5NWM3NTE0YTExMmFlNGIzYzZmNGFmMTRlOGY0MzQ2MDIzZjM0Yj=
JkM2M4Y2Y1YTM1ZGM5MWI4ZWYwZTU2ZmVkMGZhZTI4NDU1OWUwYmMwNGYwM2QyNDA3OWNiNmFkZ=
DUyNzBmMWM2NTZkNGU2MTY4N2Y3MDExNzM1NjY2MDMyN2E4NmZjNw=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZTdhN2I0ZDBlYWZiNmZlMjQ0NjJkZj=
M0NzNkYmM1NzRiMTZjNmE2MDBlYzE5OWViNTU3OTU1NDdkNjNmZjdjMWNhMmNkYmY2MWM5NzM5N=
GNmOWNiOTY3MDY1N2QwYjMxZTQyMjhhNzM1ZDNiNjcwYzQ3ZWU5YjAxMzI5MGMzYWE3ZjViMjQ2=
YTNhOTNmNTUzM2M3MTAwNmY5YjgzOWZhYTdhZTU0OWE4ZjYyOTdmZDE0MDdiOWExN2Q3MzkyNWE=
5ZTE1ZWYwZGUyYTNhOWU0ODgzMzQ0YmUxYmNiNjIyZWY5YmNlYTY5Zjc2NTRjYzI0OWJlNGM2ZD=
M1YzkwMDczYTM5MGU3MDljOTJjY2M1ODllMDBjMzhkZjU2NTc5ZmFmMjljMjM2Mzg4OWJjOGRiM=
GFiNDgwN2MwOTNkODAwMzBmNTlmMjA3MzBkNzk4Y2YzZTY2OTU2M2ZmYWI5NjhjNzk0NGJkNGU2=
NDZhOTY0MzYzZGUyNTEzZjdm" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DODc4MmU5MzBkYTMwZmEzZDUyNDAwND=
FjNjY1MTc0Nzc4YzkyNWQ2NTM0ZWFjNjczOGNiY2UzMzkyZWYyMTIwNzIwMWExOTU1YTYzNzVjY=
WJlNmY1ZGMyYjg1NDY3ODM2ZjVkZDEyMjcwMTQzZDQ0NzVhODNkYzE3ZDdiM2QzNmZmMWUxMTRi=
OWQ3YjIzOGQxNjlkOGZiM2ZkOWM2NTdkOTY5MWNjNGZlZGEyODU1N2E0MzNkN2UxNmQwMjI4MjE=
zNGFiYzZjOTJlMzM5M2QzNmRlNWNkZTAyMDFhMGRiOTIxOGM4MWJiNmQ0ZDdjNmUzOGRiZDE5Zj=
cwYTAyNjdlZmYwMDI0NjQzN2RjZjVlYmY3MDdhZjFjMmQ0YzBiYWUzMjU2YTAyMzNmNWEwYmEwM=
TIzMWVjNmNkYjRlMzUyYjg2YjljZDNmNjIzYTdkYTA2NDRmYjhmOWVkN2MyNWNmNGMxMGVhZjcx=
ZDAyZTg5OTNlN2Y0NmNmZWY0" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DM2E0NzQ0MTZkYWJm=
OGQ2NjczYjg4MTk5Njg4MTk3NGIwMzgzZDliN2U4OTBkOGM2MmJjM2M2YjEyYWZlMjkwMWMwN2J=
jMDY2ZDlkOTNiOGUzNDllM2RiYWMxOGM0NzYyMGNkNjlhMWYwNmY0NWI4ODk4OTQxMDc3ZmMyOW=
RlZWJjNmExNjhjOGJlNzM2ZmY2ZGFhYzNhNWFlZGI2ZTNkNWI3YmJhMmY2NzRmMTQwNTMyMzY2Z=
jU1MTRmNzNkNWFmNGIwODM2ZWZjNjg5YWJjZjg0YzZhZDExMDIyYTljMTAwNDU4ODkwNjFhMzYx=
NzNkMmZiZWEzY2EwMGI5MmE5MDI0YWY0NDVkNjYxOGY0M2VmODYyYmVlZThiZDgxNjI1Yzg3MTU=
4YzA0ZTkyZjU5YWY1OGYwY2QzZjY4ZDI5YTcxMWM2YTc1N2JmYjRkMmYxNmFhYzBkMGFkMDk0N2=
M5YTVmNTZlNmJmNTAxZTM1YzA5YmIyMzc2MjA5NzJiMw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMmQ5ZWE4ZDVmMWQw=
ZDFiZDRmMGE1OGQ5NGViM2VmOGIwNDM1Zjk4MDBjNzUyODhkNzQwOWQxMTJkMzAxNGUxM2I3MGY=
wYmVkNDk4MTNiY2E0NmI5Nzg0YWY2OTY0YzdiYzUxY2ZiMTZmNTEwOTQwNDRmZjY3ZTFhZWEzOW=
U5MjE0NjcxNmYzZmEwMGM2ZTYzY2M1MmFmMzdkMGM3MjhiN2U3YTVhOWNkMWU2Y2NlYTMzM2FmO=
WVlZGQyNjYwZmE4OTRjZWE5ZWRjNGMxNWZiMGI2YWYyZWEzZDM0N2QxNWZkZWFlNTg5NTM1YjAw=
MjFhYzIwMzcyN2YxYjdjYTc5NGJjMGE5Y2NkMjA5ZDE3OWE0NWZiMmM0ZDc2NGI5ODM3MDUyZTk=
2MjJjMDNiNWI2MDRkNmU0NzlmNzEwMGM3NGVhN2MxMWIwOGY2ZTBlYzNiMjhhODljOGJiMjYyNW=
I2ZjUzYmNmNjdiZjFlMTMwNzNhOGI4N2Y0MjQwMzM2Zg=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDZhMDI5YTM5MjI1=
MjBiODA0YzcwNTlhNjFmMzNkZmYwY2JjMzZkNWU2ODJhYjc3ZTVkNWJlZGExYTJhNTQ0MTA0NmV=
mODI1ZjM4YTMwNmRmMjY3YTc3ZDQ1NjRkZWI3MmFhYzBhZDVlYjNmOTM0OTZlY2YyMDdmNDU1Mj=
Q5ZTU0ZjE0MDExNTIzNTFlNjU3MjlkNDY1NzNjOTlmMzJiNDA3NmExMDE4OGMzMjFiODM2OTZiO=
DQ3YWNiNzAyY2E1NTBjNzljOWI2MzFjMDBiODA5YzFlMWNlODE0OGQ2NDQzZjZlN2Q3OTI5YzMw=
YTdhZTYzMDZlYTgyZWUwMmY5N2VjYTNlODMzYTQ2MTVmODg4NjkxNTA0NmRkMDNlZjllOTMxNDI=
3YTBmYjMwODA3NDZjMjE0ZTY0NzY1OGJlYzA3ZDE5MjNiMWNiMGZjNzNjOWUwNzZkMWJiZDcxZG=
VkZGM1MTdmMzJmYWMzNDE0YjA3Zjc5MDFhM2QyNTM1MA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZmRmZmM0YWZhMjE4=
ZmE4YTRlNmYzM2E0ZDhjNTcwODQxYjlkMjI3NjgxNDdmMTM0MWU1MWI1OTI3N2ZmYTAzMTc1Zjk=
5MjBlYzJlNjM1ZmZjZmQ0Zjc4YTE5NDQ0MjFiMGY3MjgzMjI5YTdhMzg0OTAxZjgyNGIyOTRlOG=
Q1MDc3ZTAyODNkMDE2ZjYwNTlhYTcyNGE1Y2Y3Y2FhNGQzYTUzYTQ2MTA2MTg2ZDFjYTQ0N2FhM=
2U1ZjdhMDg3ZjI2MTM2ZmM1ZjU1MTRlYTUzMjFjODkwZWZjMjYzNDYyYjZiYmU0ZGFmODI4YTJl=
MTJiY2QzMmEyNzkxYjkyMGI2ZjI1MWNhMjQ1NWZiZWEyMjQwODkyOTU3ZDRjMjExNTdiN2VkZjA=
2ZjFiZDM1MjNlZTY4YzIzYzhhYWQ3YWFiMzFlNzJmZDJmZWQ3Mzc0YTM5NGIxNmVkOGQzNmIxYj=
hhNTZhNDVhM2JlOGUwNjUzODQwOGZiYzgzZWEyNmJjNw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYTFkOTQ1NjdiNGFkMG=
QxNGU0MGJmYzdjM2M2MTMyMGJkZDgyNjk5OTAxMmNiYzIyMWI5OTEyMjllYmU3YjA1MjdkMDcwY=
jMwMzgxMTg3ZGU2MzdlZTZlMTJhYmQxNGY2MWExN2UxOGMyOWJkY2QyMDg3NWJlMjRhMDNiOWNm=
ODU2ODllYzYwMTNhZTJkMTZhYjBiZDc4ZmZmYzQ4ZWY3MjRmNjg3NTNiY2ViMmFiMTY1ZDg4ZWQ=
0ZGZiMjI0YWUyOTczMWRkYWY0ODQ2ZjViYzdiNDU0MjM5Y2UxMDk5ZDQ3ZGM4YzU2ZWRhYzhhZj=
FlNTA1NGMwZTRmOGRiZmViODAwOTlhMWM5MDk0MTAyOGM2YmYwMjU4YTc5Yzg4ODgxZDVhMTdkZ=
mNmZjkwZTQzYjNhZTRkMWUxZTM3ZTcwODdjMzg5MzljNmIwNjBkYzIzZjJiNmQ5ZmVhZmM2OWU3=
OGE0YTVkOTdhNGFjMzIzOTQxYTEwMTczMjNiYzhkNw=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DZWZmMGI1YjIyMjli=
ZDYzYjM1YTJiNjNiZDBiNDljNmQzNTdjMzczYmZlZjZmZTc2MmRhMmY1OTY4ODkwNTI1NmNkM2Y=
1NjNkMmM2YzBiZGI3ZDRkMmZiNjM0OWNkNTZjNWRkZjk2OWQyNTFmYzU0ZWY1YmY2NjY4Y2FmOG=
FjNDc1ODQ2ZDBkMWRmYWRlMWRhOTRkYmUwOTczZjk5NDc4NTVhNTcwMDliMDNlYTQ3OGRiMWY1Z=
mU0NTQxOTdiZWY2NDU0MGY4MTI2MWMwYzFkNzZjM2I5MDEyZGU2MjRiZDM2YzY3MjFlOGFiZmI2=
NTUxZTgxYjgzMDIyY2RhODQ=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DMDI0OWU4NzIwNGQ4M2UwNGViOTM5ZjcwMzZkY=
TdlMzg5NzBmZWNiN2Q3ZGNiNWFiMzNiNDcxZjM5YmNkZTkwYzg0ODgwZWNjMzNhYjc3MGRiOTk2=
ZGU4MDMxNDk2N2ZmMWEzN2Q3NDk0OTk0ZWYyZTNhOTc3ODRjM2FkNDk4NThiMjIwN2I5ZWRlYzI=
4OGNkZjk2YzY3ZmRlZDQ4NTA2ODE1MDQ5Y2QwYTQwNjZlZjVmZTNlYzljM2JlMTk4Y2FjN2FiZm=
RmMGMxYzE4MGY0NGFkZTY3MGI4ZWQxMTIzMThkMzNhZDlhZTYzMzc1NTNlNWFjOGVmZDJmZjFjM=
DYzYWQ5NWQ1ZjJmY2I5MDVkZjY4Yjk5NjRmZjcwY2M0MjE2YTVhY2Q3MzYyNDJiNGI1NjZiODBl=
NmFkYzQ5ZjViNTIxMzg5NjQ4ZmQ4YTFiMmFkMjM1NDI3Mjk3YTIwNDAyNzQ0NjdjZGQ2NzkxM2J=
hMDljZGExODJhODJmNDA4YWI4YjY0MzhlN2IwNzE3MGU1ZDQzYTdkZWE4ZmFkNzBhZmRmZWI3M2=
EzOGYwMzU1ZTNlMGEzNmM0Mzc=3D" style=3D"font-size:12px;line-height:134%;font=
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
