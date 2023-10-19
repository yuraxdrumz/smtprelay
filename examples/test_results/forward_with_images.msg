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
From: localhost:1333?u=3DYzQxYjI3NzdmMTg2ODZlMjRlMjI2MmQxMzcxNGQyY2FhMDQxND=
U5MGJiZTM0NTRkYjQ5YzI1OTA1MDJhNzU3YzVhZjA1MDJhZmZmODZi <mail@eg.expedia.com=
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
<localhost:1333?u=3DMzE3OTU5MjI1MGFiNjcyZGRhZDUzYWUxNTczYTdhNmZkYmY4Y2ZlY2Q=
wNGVmNGJkZTBiZmQ1MGYwNWU4N2JjMzUyOTg2NjYwZDc3NzhmMzBiNzY5ZGVjZGE5NDI1YjViMD=
A2ZWJmM2JjNzE1YWQ4M2I3NTMzYmNkZGVmM2VhZDk5YzY4MzZlOTg5MTAwNzRmYmNhNTc2NmQ2Y=
zczMWJhMmI3NGQwNjFlOGI3NGNjNzkzYjBjNTdlNjVjYmZkYzg5OTA5Njg0YjY5OWQyZWE4OGI0=
OWU3ODczMDA4MWU4ODliMWM3ODM4ZWUxZmQ3MDcxOThlNDZlNjBkNTg4OGYxMmQyODAzZmY2ZjN=
iZTliYTMyYTY3NzNkNWM0NTk2OTk0NTFmMTZiNDlhZTYzNzgyM2Q4NmVkOTVlNjRlMDQ2ZDFjZT=
lmZDhhOTgzOWUyM2U5YTMzYjkzY2Y3Njg2MmYyNTE0NTgyNGRlODlhNjNiOGI3MjEwMWJkM2Fm>

* The Travel Edit
<localhost:1333?u=3DMDdjZTEyNTM1YjBkYmQxODRjZDM3MGI3ZjI4YjE5ZTJiOTBiYWQ1ZGV=
iYjI1YmI4ZDFjNTYwYzkyYzYwMDc5YmVlY2QwZDRjZmMyZjQ4OWM4NDI5MzkwNDE4NzhkNzc3ZT=
lkNTlkYjE3MzA1Y2E1YjYyOTAyYzA3ZmMwYTVlOWE2ZGVlMzM2NGVmYmI0YjEwNzZlYTg2YWJhM=
2QwZGNkNzliMDVjMmEzZjFmM2I5M2NhODE1ZGI5MDQzMzc3M2ZjODIzOGE3YmMxMmM4MzRmZjgy=
ZmMwYmQ5N2U1ZjU4MzNlY2QzNGYyMWU3ZGU1Njg5NzZiOWVlYThiNzhmODJiYmEyNmNmODQxNGY=
zOTAzNGU5ZDhkOGVlOWVhMjM2NjA3YjQwZmIzNTM2NmU4YTMwMWM3NDZiOTU4ZTcwMTQ1ZDc4Nj=
M5YTcxMWIyYmJjNmQ0MTc4NmZhYTM1YjQwZjVhMThmMWViMzhmMzM4YzYwZDVkM2MxMjJlOWNk>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DYWJlNzNhMDVlNGY0YmJhOWUyZWM0ZjFkYmZiYTMwZWIwY2ViOGFhYzk=
2NDVkZGY4ZWIzNjBkZWU2ZTczZjA0MGQwMmYxZTEwMmNjOTBiZmUwNDUzMDEyY2Y3YzUxZDFlMW=
JhNDVlOWE0NTg2NjZhM2NlODU4ZDZmYzUyN2I1MWY1OWE0Yzg4ZTY0NWFiMjUzOTZhYjlmNzYyY=
mU3Y2FmYzk1ZDM3ZTVlNzIwMThlNjkzY2Y4YjllYjY3ZmFlYjM5YWVhYjgwYTJhMzcwMWUwOTVi=
YzE3NjcyMjViZTMyNWRkOTg5NDQ5MzUwM2E3ZWE0MTE4ZWM1MDVjOTRkNDIyMGI3MGI0N2Y3MTZ=
kZTA3ZDdhMjU4YzkzMzdlOTczOTU3MGM5OTY2OWIzNGM1ODE4NTYxZTgyZjg4Mjg3NmQ1ZGJiMj=
czYzljYjc3NjgxNzc0Yzg0OWFmMjAwYzExNTI1YTcyNGM3YmFiM2U0Y2I4YjU3MWM1M2M3ZGZj>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DMjNlNTAwY2ZkMmIxNDM1ZDU5YTliMTc5YWFmMWNjNDk1ODA1ZWNkMDU=
wMzI1NTZiOTc5NGM1OGVkYzMyM2NhYzdhNzlmOWVlYjNiMjJlYTc2NTJmNDMzMDk3M2E0MGMyMD=
U4NmU5ZDdmMjEzNWQ1NGVkOWI3NzExMzUyOWJjZGFlMGJlYThiY2EyYzQyZGYyOTljMWM3MzMxZ=
DY0Yjc1MTYwZmE4MDk1Y2NiYjFmYzA4MTNhYmIwYzVmMTgzZGQ0MjI4ZjYxZTJjZTIwMjc0OTRm=
ZjAyNTA1MjA2MmMzOWFmNDBjMzg0NTJiMTk4NjYxZmZjZjU0Y2ZmNDdlYTg1NGIxYmRhNjY3MGJ=
lMDRlM2Y5MzhmNDA4ZGQ3M2JmYzY4ZGFkZTliNWY1YTRmYTdlNjk1YmZlY2FmNGVjMjZiMjhlZm=
M1ZWYzMmQ0ODZiNzM2ZmNlNjdkMTdlNGYwY2RkMjE5ODk4YzcxZTg2NzAyZjFlNTE4MzFmZmU4>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DZjcwZTU1N2UzNDFjNWE2MzhkZjNmMzU3ZGUyMTFmZjQxYTk1M2IyZDh=
hZTk5MzNiMjEwMWIxZjE4MjgyMGI5ZWM3YzE0NDA4MGI1OGNiMGRjODUwNDZlMTljNzhmYzcyYT=
Q4NDJlMzQ2Mjk2ZmVjZTNhZGM3M2JlZjBhZGUwYWExMjgzM2YzM2JkYmVhZTQ1NDJiMjdiYjExY=
jA0N2M4ZTM5NzYzNTZiNjU5YWI0ZTIxZjkzODU2MjljODM4MjJlZmZjYTBjNTgxMjE1MzQ1YjMz=
MzBhZTE3NDYzMTg3ZTMzODU3NzM1ZDQwM2E2NjkwNDFlMTRlZTdkNmE3MmMyYzhhMzNkZjFkNGY=
4ZmZiNGQ2NjQ4MDY5MmJmYTRhN2FkNmZmNzcxMmRkNjdkZGNjYzBkMTBjYTgyZjVlYWMzZDRiYz=
RiNjEyYzQzZWJkN2ExMjBlYjA3OTM4M2RkOWRlZjVhMGMwNmZiOTE3YTAxNjZjMzIzOTE2OTZh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DZWM1NWM5ZGU1YjhmMWIzNDMzZTc4YjZjMTkwOTNlN2ZiY2MzZDU5M2N=
hZjlmMzJjYTFkMjhiNGNkMWVhMGQyNjk5N2M1MGY1Mjk5Y2MyY2Q3NzA1OGIyYzkzMjdhOTIyNm=
E0MWM4MGM2NTk5YzE3NjBjNWU2ZmI0YzRlYWI3ZTI1NTVmMzJhNzhlZWU0MmM5ZDg5ZTk2M2E2Y=
TQzMmI5ZTIwNzQyZTM4NzEyYWQ4ZTdiZTU5YjBjNTY0ZmZmNWUzMTUyMWZkYWY3ZGU2NGRkYTdm=
ZmQ4ZTQ3ZmJkNGY4YTY4OWQ1OWVhYzU3YmY1ZDAzZDc5M2E3MWFmNDIwOTI4NmM1NzVhNTRlNTJ=
hOWFiMGNhYWY3M2ZmMGNlYzFjZjY3Njg2MTFiNWE2OWJlNmJiN2Y0MTFlZDFhNmEwY2JlNjZiZD=
djM2Q4MmZlZTcxODZmM2QzNDkzMWUwYmVmMjZiNDYyYTkzNzU2YmFiMjVlOGYyYWZmOWQ0NzM3>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DYTRmZGI3ZWIxM2M2M2VhZjQwODcwZjI3NDcxZjMyNTk1ZWQ5MjI5Njc=
0YmQyNTY3NGU0NzhmYjNmNWM2Yjg0YmJmZDAxMzhmYTdmYTZhNTFlZWZjMTAwNWNhMDQ2OWJmYj=
Y0OTRkNjUxY2I3OWJjOGU1ZjU2ZTAxMDVkODhkMDM5OWE1MGU4NjNlN2I1ODhiMzlkMzBiZjkyO=
WRmMzg2MzE5ODdmMWZkMDEzNmE0YjVmNGU1NWI4NzYyNTVjMTkxZWU5N2U2MTlkYTBmNjIwMzhh=
MGE5ZTA0ZjhiMGI1MzY5NzMzZGYzZmRlMDM3MmNmMTc1ZDZiNjE5ZTg2YjdiZjI2NTNhYjg3ZDQ=
xYzlmNmY4NTlkZTAwNjQ5M2ViMjRiNTBiNTNiYjA0MDExNzI5ODcyZWMwNTk4MjA2OGVkZjNlYz=
RhYjRhMGQzYjE0ZmNmMDExZjcwNWU3ZTAwNzhlYWVkNjU1ODRhNDgyMjZkOWUwZTM4MzIwMTA3>

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
<localhost:1333?u=3DMWM2M2YwYmM2Nzc3MzU1ZDEyN2RjMDYyNGUwYjdiNjdlM2FmNDEwNmQ=
2Zjk5NWM4OGI0NzMzNGRkMzQyMWU4YzEyZmFjZDEzZGVjYTQ1ZmRiN2IzZDRiN2FhYWZkNjcyNG=
EzNTVjYWU0NjM1ZWE1N2Q3NjViNDE5Y2YwNGJhYzM5NDQxNzY0NmNjYWYyMGVjODgxZTg1MGM0Y=
jZlMzgyY2VmZGQ5NTk0MGVmNTA1NDZjYzNjMDZmNDIyYzIzMzg4NWI0MzJlMTkzODEyMTY4ZDI0=
ZjUzZDg2ODEyNjRiNTA3NmYxZmNjNTI3ZmFiZWE0YjU0M2Y4MTdiZjYwMzBjY2VhZjI1OWExZGV=
lYWMzNzNjYmVlNzg3MDBmYjhlN2QzN2VkNDlmZjJiYjljZmY5YWMwMzhhZDE1MmNhNTkxM2FiOG=
UyOGJiMjQ4ZDkyYmZkZDgzYmNhODc2ZGYwYTEwZmM4MjliYTRkYjM3Yzg5MzY4MzZlNmNhZDc3Y=
jEwZQ=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DYTRmYWFhZTg2MjBkOGFiZDYxNjllY2I5OGFjODQ4YzNkZWJiNTc3ZTZ=
hNjA2ZjYyNmIwZThhOWY2YjEyZGI3MjY5MzRiNWQ3MTMxNzVlNGU5YzBmYzE3OTg4MGZhMzE5ZT=
I2NTM0MDFiOGMwMzExYjlkNmIwYzgxMzVjOTZkMmEwZWYxZjlmYmIyMzY2NTVjMmY0NmFhMGQxO=
TY4MDE1YzdlNTcyYTM4OWQxYjczMGU0ZDkwZDZiOTNiOGU4ZjM2M2I0MzllODY4YzI3ZGY3Zjcy=
OGU0OGRiMzc4MjAyZjZkZTZhMzc5YjNkMjM1NWYzNDFkYjZhMTZlZGZiODU4YjZkMGE1NTgwOTA=
3M2YyZTNkZTgyZmM1NTFjYmIyYmQ5ZWI0ZWE1ODg2Mjc0MjM1NGRjN2EzOTZhYWJmNjBlNmFiZW=
RmNzEzZDNhNzRkMGE0YjE0Nzc1MDVjZTk0MTNjYjljODdjZmQ0MmQ3ODQ0MzM3YjgwNGIxODAz>
  [image: Google Play]
<localhost:1333?u=3DNzFiODdiZTU3YzMzNGU3ZjJlNDQ5OGUzZjlkMzE5YzRlZGRhZmZiYmU=
2MjE4ZTExYjRkNDgzNmE5ODYxMDc1ODNlYWQ2MTk4OWIzNDQwM2Q3ZjE4MDU3YTM5ZGQ0ZTMwZD=
ZkYWQ4MjY1MmQxNDAxNTBmYWM2ZjVkOTE3MzZjMDg1ZmQzYzUzNDY0ZDk2MDc5YzgzMDljYjgyM=
Tg1M2JkZDhlZjU4MjQ5NzY3N2NkNWZiOTJkMjhkMTE0YzhjMzhhMzk1ZGM1OTNkMjk4OGE0Y2I1=
OGNkZjZjYTYyZmM1OTk2YzgxNzhkNzVlN2FhZjg3NjU0YWQ4YzRkODQwZDcwMTBlYzM4MmQ5NDB=
lNTE4N2I4YzNlOTVkOGM5MDJiNjljYWFkNTVjMzUzZGYzNDBjMDFjNjQ3OGNhNWM5N2NlYWIyMj=
NjMTk4MDVlNWM4OTAzOTFmYWJlZDQ4OGVlMmVjM2I4NWE1Y2UxZTRiOGM3ZDFmYzBkMGZhNTRk>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DNzY0MWI1MmUwM2M3OTYyMTNjMTU5ZmI1N2NjZjMzNGRlMTBiMGIxNGE=
3NzZjZGRkMDBkNzdhZjgwNjgyMWZkYjZmYTVhNmFjOTNkZTI0NmY4ZGNkMjgzODQxM2Y2ZmRiMD=
YzNGMwOGIwMjkwOTZlYzA1ZmJkMDljMjUyNDE0YjQzYmQyYzEwZjU4M2JhNjBkY2YwYTdjOGViM=
zM5NTM1YzM0ODBmODMzMDYxYzIwZTY0ZmE5NTNkZGE1YjYzN2QwMmI1NThmNDUzZDE4OGI0Y2Jh=
YjJhMWEwMzE1ZjFhOWM4ZjdkNTY1NThkYTEyN2E4ZTY5MWEzOGRiODI3MjEzMWFmZTkxODYyZTg=
3MGQ3ZmQ2YzU1ZjkyYmM4MmVkNTk2YjQ3MWUwNzI1MjE4MDk2YzU2NGQ4ODJkMzg4OTcwMDU3MT=
QzZWU2ZmFjNjVmNjgxMThiODY1ZGNiN2U5MGI2YjliYWIzM2NmMzRlY2NlYjRkYmIyMWMwM2Q3N=
jY2NQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DZjgyYTg3MTdhNzRjZDYyOWU3OTgwNjM0MWY0NjZlYTMwZjBlZDRlZTc=
5N2E1ZDQ1ZTY1YmNlY2UxNzFkNjBjMWVkNzM3MmU2MDdjZThiZjNiZjUwNjk0Mjc4MzQ4YmY1ZG=
FkZmY5NDQ5ZWUwM2U5ZDk1MTc2ZWVhNDIyZWM5ODNjNDUxNzkxZGVkZjMwM2I4YjU5NDc5ZDVlN=
2NkNWI3OWNjZmU2Y2JkNjZhMzBmMmNhOTc0ZWI3OTc5NDM2OWU2NjZiOTllZjYyZWQzNzc3OTM2=
NmEzYjMzMDFhZGU0ZmUxOThmMGQzMzg2MGQ1M2RkMjU0YzMyMWQ1MjVjNjM2ZjBiNmVmNWFiODM=
xMDBlNjM2MTFmNjg5OWMxZjQ5OTU1ODU5NDZhMjliYjc4ZWRhMmFjOWFkZjJiNjIwZGIyZGQ2Yz=
Q0NDExNGE4OGMwNjQ1NjM0MmE2OTBkYmFlYzNiYTQ2OTBlNjJkMTAxMGU4MTI1NDQzZjcwZDk1M=
GJiNw=3D=3D>
   Privacy Statement
<localhost:1333?u=3DNjAyNjkwNGM5YTNlN2Y3YjhkNmRiN2I2ZWExZTAyNjAzMjBhMGEwNWU=
3Zjc5OGUwM2I1MmY5OGVkOTE2OGQ0ODhhZjdmYzA5YmQxNzRkOWU0NTE1MTFhOGRlMDhjOWQ3MD=
kwNTQxMDQ2ZWRhZmM1ODY3ZDdhNmI5ZmM1OGY4NmU1OGNjYjcxYTkwNTk4MDIxNzY4MTRiNGI0O=
DZlZmNiOTg2NDJlOGQ4ZWQ0ZDBhNGI5OTg0ODk2MGRkY2EzNTUzNzhlZDFiY2EyZWRmOTU3MDJj=
YzZhODU1OWEyYTIyNWUwYzkzYjg0ZTg2OTcyOGFjMjc4YzYwYzdmN2RlNDEwYzAyYWM3ZjkzZjA=
xYzQyYzU2NTU1MTBlYTE5ZDRhYzk2ZjA4ZTY0NGU2M2ViZDk4MDExYzcyOGQ1NjUzYTNlYzMxZj=
c3NWQyNTA4NmJkNGMwNjM0MDQ2MGNkMDUxMTY2MDM3ODAwZDk0OGRmMzU2ZWVmNTIwMWIwZDZkZ=
WE5Ng=3D=3D>
   About Us
<localhost:1333?u=3DYzM3ODNlMTEyZTFjYzdlM2MzYTc1MjM0N2FhODYwMDBhYjg4MTFjZmV=
mZjg3MjQxMzgzZjQwMDAwOWVhYTY5NmU1ZDhlMzhhNTIyNTJlMjA1MWFjNzVlMDYyMzNjMTgwND=
hmZDVkNjRmNWFkYjhhY2UwMTMyMDBmYzJlMzg1YmU2MjJhMjgyZTQxYjkzZDcwYjViZTgzMTQ2N=
2I5ZmM0MDYxODk2NTU3ZTc1MzA0NDVhOTVlYTg4OWZkZmFlNTA0MGRhNDVjMGVmMDI3YjgzZDE5=
Mjg3MjcyNjE3OWU2M2E3N2RmYzJjZjM3YzRiMGZiMzIyZjI5M2YwNTkyM2FmNjJhNDQ1MjQ5YTd=
jNTFkMTYxYmE3MjE3NDgyZTdjNjhhZjk5YjUwOWMxNDdkODQxZDIwNDQ0ZjQ4MjNmMDYwYThjN2=
UwYzlmNTlkOGUwMzEyMWJiN2MxZGRjN2MyYjYzMTE5ZjRkZDY3MWNjNjEyNzcyNWEwOWM4NGExZ=
mUwZg=3D=3D>
   Customer Service
<localhost:1333?u=3DYTYwMGZhODk3ZDRlOTZkYjdmZGZmNzg5NzFkNGYzYTRkN2MyZjk0ZDQ=
3NGU4MTQ0MDJjYjJlM2QzNjYzYTZkMzY1MmZhNWVhMTM4NmI2YmNiNWYxODBkOTg2YWYwY2I2Mj=
cwYmU4MjY5MzY5OTg5YzliNjE4NmMwMzI2MWYyYTA5MjI5MjcxMTdjYTE0MTYzZTViN2M3MjU4Z=
jZkNDZjNDcyZThhNGZkZGFhN2M0ZjgzY2FhYTUyYzkwNGE0ODZkZjc5Y2YwNmRhMjQwN2FhYjJj=
MWFhZmJhYzRjNTM1NmM3NGM3YWQyYTdlOGE1MzA5OWZiMWUxOTE5M2M1ZjE2YTQ2ZDAzZTcyZjQ=
3MmVlODkyNGRiYjhiMjViZDM0NDkxODkzMGMwMTBiZWU4Y2NmMWQyYmE4Yjg1MDI4NDIwODkzOT=
YwZGIyYjAzZDU0ZmUzM2FlYmRiYmQ1NTdmNjM5OTgxMjQ3NzczMmFlODRkMGNlYzVlYjI5MmQ3N=
WJkNA=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DN2UyYzAwNjY0ODk5NThlMTZkZmFkN2I3ZDY1OGJiNDNiNDMwZmJiMDI=
5MjliNjlmMDYxMzVkNmFiMjcyZWM1MGQ0OWU3NGQ3OGE0YTA5NmIwOTQ3OTdjNDA4YWYzZTcxM2=
ExMzAzYjQzOWQ5YjExYjVmZGNjYTExMDI1ODhmODc3Yjk4MTNmNjJhYThiMGIwMzgyOTlmMDFiO=
TNiMGUyYzVmMmQzM2I2NzI5NmNmYzVmZjNjNDUyM2M1OGEwZDUxNWM4NWJlY2M1NTIzNmU1ZWRk=
MjEwZTBhYTdlZjYzZDBhOWU4MzNmYjNhY2NlN2M4MjI5NWEwZTQ3ZjVjMTI=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DNDY4YWVjOWFjNjQ5MDEyMzVlYTFlZGYwYjA3YjE3ZDZjNGM5YTQ0ZDM=
zYzhmY2RjNGRlNTBiZjNkZGIwNTgwZTFiZTRlNzhjZjRmOTVmZjQyMmQwMjQ3ODk4ZDZiNTQ4Ym=
U4M2NkOGQ0Nzk2ZDkyNzhiNzQ5MjJiZTRjYTFhNTc5OTg1NzFhN2Y3YTU4NjNjMDYzODM3ODc4M=
DJlZmM3Mzk3MzAyMTdmYTQ5OGE0NTMyNmU5ZWZkZmJkN2U1ZGVmNDI1OTMzZmU5YWZiNDQ0N2Ey=
Mjg1YTc4YzhkNWVkNDRkMjVlOWNhZGZmNmU5OWQ2MWI3NWFmNjRmODkwYTlmMjI2NTNjZWQxOGZ=
iYThiNWNlZGFlZDM4MTZiMTA0NTJjYmQ5OWNhMzQ5NWZkNzJhMmVjM2UzNWY1N2Q2NTk4ZTY4YW=
MyYWUyOGNjOWVlZjY2N2ZiZDNmMTVkYzlmMzQ4NTIwOTVlMzU0Mzk0NzkwZDVkZjIxMDg3NTVlY=
jg0OWJiNDg1M2EzMjRiYWFiYzQ5N2I1Y2YxNTQ0ZjhiZjUxYWJkZjJhODY1YWFiMjYwZTIzZDdh=
ZDM1NDY=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DZTg2MmMzNWQzNWRkZWIw=
NjQ3N2VmYmIzOTcyMzgwMmNkYjdjZTk0NGZiM2RiNWI2Yjk4NzZkZDI0NTg0YmIwMGI0NmNmZGE=
wOTk3ZDc3YWYxNWRlNjI5MjY5YWUzYzY1MjNiY2UzNjMxMzU1YjgyYmIyZTEzNTY0ZmFhMmMxNj=
FjMzdhODVlYTJiYTcyY2QzOTY5ZWJmMWZlYjA2ZTVmMzdjYzkwYTlkZTE4MDQ2OTVkNmYwMTg2N=
DZjOWU0NWY3MGE0MjhkMGFiN2MyODUxNTg5NmRkNGU5ZjU2MmY3MmJhZWQyMmEzMjA5MjMzYmZj=
NTdjZmU3MWQ3YjNiNTAyOTRhNmRjODFhOGRkNzkxYTA1OTI0ZWIyZWU1NDg3Yzc2NzI0MDc5ZDB=
kZjAzNWI4ZmU0ZTYzMGFjNDVlYjdjNDZlNTlkZjQzZDEzZDc3ZWRjODQ5NWZiNTI1M2UxMTFiMG=
UyNDkyNWI1M2FkNjBjMTIzYjVhYzc3Mzc1" target=3D"_blank">
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
?u=3DMWUwNDhhZGJkNjJjODFjZjMzYzkwNTJmN2U1NWRiY2Y0NzgwOTZiZGUxMjdmZWViYzIwYm=
U0MjUzMDE5M2Q0MTc1YWViOWRjNTRmMGViNDU2ZDI5NGZmMDcyM2Y5YmQxMWQwOTRhMzJlMjk1Z=
mIyNmQ1OTljM2EzM2UxOTVlNjBhODlhNDNjYzliYjhhZDNkMDJhZjM4YWIzMTg5ZmM4MDEwZmE1=
YjEzYmI5ODQ0OGU1OWQyODc3YjYyMmRhOGI4YjZhMzcwOWI4Mjg1NGQ2OTQ0MTBiNGE0ZThkOGM=
0MTVmOTc1NDlmMTBiMjU5MjBkMjAyMzg4MDEyNWZmOWYyNTlhMDYzNDMwNmJhMDNhNzkzZTZhZj=
c0ODkzZTk0MWU0NzEyYTc4MDliNDU4MjFiZWJjMmQ1NjVmZWNjYzlmZDdkMWU0NzRiNDgyYTg0M=
jI0YzY5NGQxZDNhY2EyYjZhZmUxY2YxMDFhMGRhMjJjYjJlY2Q0NWRhOTMx" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DOTllOWFkZ=
jExNzY4NjkyYTdiM2QwNTI0NDFhMGU0NjhlOGNlOGJkMDE2ZjA2ZTBmNjNlOTFiY2ZiYzVmNTY3=
M2E3YjI4N2E3YjI4OTUyYmVjYTQ2OTg1ZWZkOTNjNWJlZmE5ODg5MTIzYTBkZjI4ZDFhMTM3YzF=
mOTdmZGQ5ZjhmZDBjYjhkNmU1N2UyY2E2NjRjMzQ3MTdlNzg2YTIzOGVlNjUxNDQxODYxYjY3N2=
E0Y2UyNWI1MjQzOGEwOWE2YmY5ODAzMDU2M2Q1NTgwNzFlZjNhOWRmNzZiNjFmYTQ3NzNhODMwM=
jdjMjhiNGVlZWQwZjVhMWZiZjU2Yzk2ZDY3N2QzOTAyYThkMzFmMjk5YzA4MjUzZDg3Zjg0ZTNh=
ZmI2N2VlYjYyMTUzNDA4MWVmNDc3NTBjMWY5ZDRjMmE5YzJhNjg1OTA0NTA3MGMzNGUxZGE4YTJ=
kMDRlMTBiNWUwNjkxNzVhNzI0MTllMDI0MWFhNzc5NTMx" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DZDRlOGQ=
0M2VkZDE5YjlmMzE0ZDRhN2ZiM2M5YjBlODEyNTAyMzE2NDM5YWI0YTRkYWQ4Mzk5N2QwOWRmMT=
U2YWMwY2FkNTdkZDY3OTliNTAwY2MxYjE5NzU1ZWI1NDczYjk1ZjcwNGY2YTExNWY0NGIwYjVjY=
TE0YTg4N2U4MGMwMzcwNGU5MjQ2YWUwMTAyODkwNTFmOTM5ZTFlYjE4YjFlNmNkMmJmNmJhNDA0=
MTkxNmUyZTdiYjMyOGZlMDZiNjhkOTZkODViNGI4YzU0MDQxYTVkMTk3Y2MyNTVmNWZlZDJhYTA=
2Yjc3ZTQ4MTc1ODMwMDJmOTU2YWY5MGZhNGRiODNiMTI0OTc5MTZkMDgzZjA4Nzc2MDdhMTA1Mz=
A5MGRlYThlYWMzN2IyYjhjNmUyODcwNTc5Yjg4Mzk4NmJkZjE5ZmRiMDVlYWNmMjY1YTc2NmE0N=
zIyNjU5MzMwOGY4ZTE2NDQzZmNmOGJkYjYyYTdhMzEwZjQ4" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DOWNlNGQzNTU2=
MjUzZmYxMzMzMThjMzU0NWY3MzUzNDU3MTk5ZDI1OTQ1NDBmNDYyM2NlMjdlZDcxZGY2NGU5OGZ=
jNTg3MWRjNTQ4NWFiYmQ4MTU1YThmMGJhMTEyOTJlM2Q0NzM1M2NlMGUxMDU1MTk4YzhhNTYxMz=
BhM2FjZWM1ZDZmZjhmODNmOTU3YTMyZWY0ODhkZDE2ZWZjM2I4MGU3YWQ4NGFmZThmZTBkMjRjN=
jk4MDQzYmFiZDlmYzJkZTc2ODgyZTFmODhhM2IyMmM0MzcyNTUyMDU0Yzc3Y2QxZjBlMjY0ZWE4=
ZjlmMDdlN2ViZDlmNWI2ZTQwNjVhNjAyNzA3Nzk2NGM3YWI2NTg4MzY1NDlmYjcxNmNlYjY1NmI=
5ZGE5YTA4MjJlODU4M2JjMGExNDBkMDM5ZmFkNGNkNGJlNzExMmFlMWRjMjA2ZDhiNDc2MTYwMG=
QzMWNiNWY0YWY5ZDRhMDNjYmQyY2NjZjhmMmNlYTY4" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DM2NkMDM4ZTVlMThiY=
TUzMTFkOTI3OTUyYjlhMmM5NmVmM2NiOGMzOWU5ZGU5ZTYzMWI1MDEzN2FhOGUzYWU0MDc4YmFi=
YmM3NmQxYWY1YTdhMTNlNmNmNzU3NWU0ODgwZGExYjYwOGEyOTI0YWViM2VjNTdhM2FiMWMxMjV=
mY2UxYjBjZTdiMGViNjg5ZDIyMjk1ZGUzOThhNDZiZTNjNmRmNThjYmYxMDA3ZmI3MGZlOTU0ZG=
Y5ZWVlMTZiOTM4OGFmN2JiMjRiYzFiNjA0YTYyODJmOWE4NWQ2MjY3MmNhMmM5OWRiY2RmOGZmM=
zc2MWQ5NTA1M2I2MGRjOWI2YTMxOTQzY2MxZmMyODg3ZjgwNzkxODE3YmQyMjY1ZDljYWI5YjBl=
YWI4ODBjNDk3NDYyOGU0ODBmNDBhZTM5Zjg0ODQyODQ4NTFkNTJhMDY5MGZhMWEwNWFmZDBkNzg=
0MjIxYzE2ZTk3OWJhZTg2MzQwNTg1ZTUwMzY5" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DOTMzNTc4MGRkO=
DUxZGJhY2FiOTc2OGY3OWQ3M2I1YWMwM2YwZWQ2NWVmZmNhNWZkZDMxZWQxOTFmMzcxMmVmNTFm=
MjM3NDVmYTI2MTgyODU5ZWZlMjZlM2NhYTc5ZTFlN2FiMjFkMmIzZTkzOWQ5MGQwOGQwMzc5M2M=
wOGE4NDY2MTQzOGQxZjJiODVlODcwYjhhZTlmYTQ0OWRjN2M0N2M3MzE2M2I5MmNjMWI3NjUwNj=
dkZjc4NTUwZmI4ZTI4ZjA0YWViMjdmMTYyMDdjNTA2YTkwODdhNjAyYjllZDZhMjVlYTdhNmM2M=
mY5YmI0YzdjZDY2Y2QwMGJhZWM3MTVlM2FiYmJhOTUxNDU5ZThiNWM0MjVhMDlhNmUwZDBkMmE5=
MDVjY2Y0YWIyNjBjZDZiZWNjMTcyMzE5YzVkOWVjNDZmMGI3N2IzNTlmZDQ5ZmM1NjJjNWU3ZWE=
1NWFhZWQ3YjcwZDMwZjE5ZGViOGE2OGM0NWY5YzEz" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DMDNlZDk=
2MTA0ZGMzOTc0YTg3NTNmNDVkN2FhY2FkN2FhYjM4NjY2ZTA0ZTA0NWNjNmI4OTQ2M2RjMzI4OT=
cxOTI3ZTFjZWRiYzY1MGI4NDcyMTI3YzRkZDk4Zjg5NmY4MDQ5OTYyYmE3OTU0OTZlMzZiYThjO=
GZhYTRjOTgzYzQ4ZmVlNjQ0NWU0M2Q5M2I0NmQyZTc5Y2MwMzE5MWZhYjRmNDYxMjA0YzU5OWJl=
MzkwMjJlZGQ4NTBlYTE2ZTJmZjllY2NkNzNkZTA2OGUyNmVhZDdjYTA0MzEwYjcxYmFkMGYzMGJ=
jMTJmMWU1ZTYyMTAxNmNjMjQ3Mzk1MzU0M2U3NzI0YTFjYWExZmYyZDgxMjNmMzU0NmVkODA1YT=
hhZTJjZGY2MmYwM2IyZWJhYWJmZTk1MWJjNjA2ZmI4NmE1MWQyODcxMTAxNWMzNGZlYTQzZjAyY=
zgyNDI3ODUyNjZlNTI5MDkzZGM1YTA0ZWUxZWFjOTE4ZWIzNTNmYg=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DN2EyYjk2MGQ0ZjhiY2M0NTMxYWU2Mj=
JhNmZiM2Y0Y2IzODEzMDkyODM1ZWM4M2YxMGQ4YTM1YjYyNjdjZmE1NDU5MWZiNDQ2N2M2MTBlY=
mJhOTIyOTlmMjY5ZDYxMDYwOTFjOGE0Yjk1YWUxM2EyN2MyMWE0ODk3Mzk1MzQ5ZTVkNjdhNDRk=
M2MxNzgxODAxOTIyOThiZjg2YmIwMjI4MzZiYWMxN2Y2N2VkNDMzNGQ2YzFlNGRkN2E1NjQ3NmV=
kYzVlOGM3OTAxOWI5MjljZDRhNzZlMThhZDI5NGNlNTY0NjFkNzNmOGNkY2EwZDRhYzFjNWY2Nj=
BlYTRiYTUxYzMwMzc4MjM1NjZjZDc4M2FhZWJmY2MzMTFkMTdkYmFjZjJlZDZkOGZmNjhkMjZkO=
ThhN2VlMjAwMDZlN2Q2MjNjYzM2OWZlZTQzNjQ0NjgxNTExMTdhOTc0NjZjYjQ1NDZmNjJjNmI4=
Nzk4ZGQ5Nzg0ZTZmZjcyMDVj" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DZGZjYWVmYjFkNmQwZjZmMGMzN2MxYz=
IxM2JmNjFhYTMyZDExMWQyZGYyZmVlOTJlZDVkZDhmMDEyNDc2Mzk1M2YxZDQxZmNlNTNiYzQ2M=
TI1MzQ0NjMxNGQwMDhiNzZiNDY3OGMxOTIyOWVjYWIxODgzYjRhOTZjMzNiZmJmMjRlYTUyZTA0=
YTQyMzg3YWQyNGU2ZTY3ZTJiYzJkNTUxNGY5NzNkZTkzNzJiZWJlYWIzNmQ4MDliYTY3OTY1MDd=
hOGFiMGUyZWE2ZGY1MmRjZGI5NjNjMGE0NDMwYjcxN2U1YTFlZDA5YTU5MjM0YjA1NTA2NjQzYT=
E3M2VjYzIzOGM1NzllMzM3OWY5MDA3NzBkNjllYzMzYzBhOTIyZDNkMTg4M2YyYjY4Zjg1NTk2M=
DEwMDZhZTc2ZmJiZmVkYTNmNmFkNDQwM2UwNGQ1NmEwY2RlNDFmMTE1NWEwNGU2ZTE4NTYwYjA1=
N2FkODcxNWM1Zjc4ZGNiMDA2" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMDFhZmRmNjRjYmU1=
ZTNlYWJhOTdkMDdmNWUwMTg0MjYxMjZjY2M3ODljZjRiZjE2ZjZjMTQxNjAxMzMwN2ExMjdhN2U=
4NjZlZGU3OWMxMTQ5YTRiN2ZmYWQyNDU4MDU0NDJlZDM5OTQ3YTUyZTk1MzM3OWJjNWQ0YWM4MT=
hiYzhjOTU4NmU1OGJkYTMwZDg2MTU1NGRlZTk1YzM5ZTdmZTg2YTFiMzgzMDllMGJlZjlkOWMzY=
WQ5NDAwODM5ZWNkZjc4MmE5ZjgzNWFhZDE3YjUyZGJlYzU0OGM2MGRlMzBjOWI4OTI5MzkzNzM2=
OGI3MWQzMDc0NGRlNTc0NDg0NGMxY2Y1YzMyNjJjZDkwNjU2Y2JkMzJjNDg1ODMzYTg2YTYxODQ=
zNGZhMzI3Y2MxMjc5YmRiMzQ1MTY4ZDY2NTRjYTdjOGQxYWViMDVhNTAwNDFmZjQxN2I0ZjRjY2=
Q0M2E1YWJlMmIyMTJiZWQ5N2YxMDY0MDhhZmM2MmUyNw=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZmNmODBlNTA3ZDUw=
YmUxMDRkYTAzZmNmYzczN2IyMzVlY2Q5NDZiMzI0NDM4ZWQ2NGFhNjY2NzI5MjExODRmNGEyZGE=
5MGEyYmRmM2U1OWM2NWU3YjVhMTVhMTVlODZlZjJjODNlZjIzODQ0OWQ0NjE1NjAxMmIwNWNmOW=
RlNzIxYjI4OWM4OGE5NDBmYjk5YmIxNzhiMTBlNjJjMDA1Nzc4NWVhZDMzOGQ3YTg4ZjQ1NTE2Y=
mUxNjhiNGNlZGRhNzE4NjQyMDQ1ZTQyMGM0Y2JhYTk4MjQ3NmM3OGFmNjRiNGU5NjcyNGFjMzM4=
OGRkMjExNTVmOGExMjQxZjA4MzI4Nzk3M2ZmODFmMGZkYzYzMDAwYjQ3NmJhMTI5ODg2YjBlMDY=
5MDdmZWNkNWNkMDJkZDJhYTJhNDlmNWQxYmQyZGM0N2Y2YjNlNDUzYWI1ODk4OWZiYjcxZTUyMT=
EyYTAxN2QzYTdhYzZjN2U2YzMyYTFmNDA1MGU3ZGUzZA=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DYmVlZDY2ZWQzYzkw=
NDRiODIwNWMyNmQzNWY3OGNjNGMwMTZhOWIxNGUyNzZjNjdkNDBlNTdhMTRhYTAyODMwN2Q3NTF=
kNTA1NzVlMWNjMWIyZTFkMzY0ZmNjNjM1ODgzZTllMWU5YWRhODIxYTIyNDUxMWU5NmE4M2YyMT=
FiMzg2MTc2YWZiZTJhYjU1YWU0MGQ0MjY0OGZiMDA0ZDdhZDc4ZmNhMThhY2M1YzYwNmE2YzE5Y=
mRlOWY0YTYyYjExOGViYjdhNDIzNDA3M2Y3OWEyZGNiNDJkM2RhMWRlY2M3N2RmZmYzMWFkZWRh=
OGE4OTAzNmYzNDYwOGE1MWMyYjYxYzRmYTM1MzdjYjgzMGMzNDg2ZWU4YTY0NmZjNDRjYzkxMDY=
wMWJhMjU3NzMzYWFjYmM3NjQ1MTk0MjhhODAzNjIzZThmODA1NDJhNzdhOWRjNzEwY2RmNzI1YT=
k1ZWM1NzhkNWM5ZTUxYTRmYTY5ZDFkN2M3NzExYWVkZA=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMjFjMDM1NmJkZmI0=
ZWM5MmZhZTIwYWUzYjQxODNiMjA5Y2ZmY2FlNzE1YjgxYzA3YTcxN2RkZmY2MTdlOGRmZDFhMDR=
hZGQyYTU2YWMzNzViY2YwMjI3ZWZkNjY0M2M5MzhlOTg3Yjg3YTdkMWYyNWQ4ZmRkOTZlNDkzMD=
Q1MGQ5ZjYzODI4ZGY3ZGU5NWYyYTAxNjRmMTAwMjM0MTZkMWZiZTk1NGQ5YThhN2IyZjA5MWYyN=
zQ5Yjk5YWFhMTZiZjI1ZmE2Yjc1MmFjMWUxZGRmYTNjMTc4NzlmZjdlNDgxMTljNWNhMmMxNTll=
Mzk4ZjA5ODZjZGI2NTc1MjNhNWVkOTM1Yzk5YzQwZDJkMjJhMjE4N2Q1ZmJjOTgxOGM3YTViYjE=
xMTBiNmRjNzljMjNiODMzNzNiYmVjNTIyNDY4NmI5NGVlNTJmMDExYzk0OWRiZjBlNzkzOThjZT=
QxNzYxZDk3NzNjOWNmNjhlZDg2OTNjNTAxYWFmY2FkNg=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DOTdhNjg2MjM3MDBjMz=
Y0NTA0NWNmNjE1ZTJkMjNlMzQwMzYzMDgwMTI2ZGY3ODgxMDYyNDY5OWE4ODdhNjViMTc3ZmUzY=
mFiN2I5YWRhZjk2MDZiNTIwOWViMGI5M2MwYWM1Y2FlZWQ0OWQ5OGIwNTFlYTFlYzQyYzU1MjVj=
ZTBmZDg2OWZlYmVjMmVjMWZjZTNhNGI0N2NkZTgzNTM3OTZiYjczZWM4NzMyNjYxYmVmOWI1ZjQ=
xNGNmNmUyZTg5MzM2NzFlYjE5Njg1M2NiYjk4NWVmYWE5ZjYzMDM3ZWExZWZkOTk0ZWFiNzk4NG=
VhZmE0NDM2ZTY0MzExMTk1OGZjMjIzYzFkNTIyNzAwMjk1ZjFjYTNjMDY5ZmNiMTQ2NDNmOTJlM=
jhhODI2MjVlYWQ3ZmRjMTdhNGVjYzdkYzQzNjI5YmMzNzI2YjZlOTIxMjNmOWMyZmViZjRkNjIy=
MzAzZGE4MTY2Yzk2NzRmYTFlZjI5M2VlMDM3OTYxYw=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DZGExZWYyNzUwYjEx=
ZGY5YmI3NjRhODNlMGQ3M2FiZmMxZWQzN2QxZTYxYTg4YWE0YjZjZjJlMDAxOGZlM2VlYWIzMjZ=
hYzU0NzhlMmVmYTk2ZjAyNDI4NmMzOWU1YTJlMTdhNmUxZmM1ZTI2MDVjNzhkYjk3ZGZjODU1YW=
NmMzM4Yjc4MTJiYjQzY2MwYTA1ODExMTA1ZjI3MzhkMzRhOGQ0MTM5ZmI3MTliMWE5NzY1MTg5Z=
DQ3OTBhODRmODMxOTRiMzQyYjhhMzI1ODgzZGY5NDMxMDZhMjliOGJiYzk4NTlmN2RlZTg2ZDA5=
NmQxMDJhMzg4MGI2MjE2MjA=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DOTY5M2ZkNjhmMDY1YTFjYWIyMTRiMmVjNDI2Y=
TkwNjQxMTE3NzcxMTIzNDk0ZjJiNzBlZjZkOWYxYmQzYTQ4ZTgzZjBhOTQ0M2IyZjBjZDUyZjcy=
MWY5ZDEwZjAwMTY4YjQ0OTU5MjllOGJmN2Y0NWEyNzhjZWY1YTdlMDU1MmU0N2U4YzQ1ZTNmZjR=
iZGMyMzU1ZmU4NTI3NjViOGM5NWU5NWQ2MzYyNjU4Yjc1NjRlNzlmNDk3ZjA5ODBiM2QxODcyY2=
NmYjFjOTVkZWE0ZmIyNjRiNGU5NmMzMzZiNWRhY2UzOTdjYzMyMDU0MWU1ZWYzOGEyMDI3N2Q1N=
zg0MDYzOTJiNWNlZjQ3M2M2NjdiZGFhM2MxODY2NjAwZTFiNjlhNTEzZWJkM2Q4ODAxOTEwZWMw=
NzMxYmY5ODdiZDM0OTVlMzEwZmRlNTNmZDQyZDk5YTAwOGI3ODJlYWQ0MjI3NjllODYxZjY0YWE=
wNTgzOGUzMWY3NGIxMzUyZTAyNmM4OTlmMWRkNGZkYzI1NjIxOGMwZDFjNDI4NDJkOGQ1Njc3Mm=
M5M2Q2ODdlZmZlZDdhNmUxMmI=3D" style=3D"font-size:12px;line-height:134%;font=
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
