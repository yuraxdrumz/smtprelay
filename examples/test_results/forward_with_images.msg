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
From: localhost:1333?u=3DM2E2MGMyZDFhM2UwNTFkNGMxZWQzMDRkZmJiNGE4MjY3MWNhYm=
RmYTM5ZGQ4NWQ2MGZlZmUxOTYwMGRlZWE5YmUxYzFhZTIxMjZkNWIy <mail@eg.expedia.com=
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
<localhost:1333?u=3DMmFkYjYxOTcwZTgxYWVhNjBhM2Y5Nzk0OWEzMmE5NGUxZmYxMzZlNGM=
zMmYwMjVkZjM3NTRkNTEwOWUwYzM2OTA4NTNkZjU2MTc4ZjQwNmZhNmNhM2I3MzgzZGViMThiZW=
NjYzUwZGE2NTI1YmYwODNjMzQ3MWFhOWY5YTA0N2FjMzA4ZDRjYzNmMTNiZjBmN2NhYzNhMWFlO=
DY1M2JkMTBlZTM3MjRiYWU2OGJlMGRjOTZmYTI1Yzc4ZTlhMzIzZjUyOWVjODU2ODRmMjRiMzc5=
MDVmMjJhNDdjMzc0YTZiMjhhYWFjMzBiMGQ4MGYzODJjYjE3NmVkZjBiZjY4Mzc4ZDhhOWY1Yjd=
hNDQwZmFmYjVhNWIzNDgzNGIwMmU4ZjI2ODNkMTRhYTY2ZGU1NDE4MDUyNGZiMWJjZmUxYmNiYj=
E1NmU0NWZjNGUyZDBiODY1ZmJkOGYxMTNlZTUxOGJhYWY5MzdkZDRkZDE2Zjc1ZDc0ODJmMTJh>

* The Travel Edit
<localhost:1333?u=3DMDcwMjY4MmYzZmYwODAxZDA5ZDU4NTgxZDhlY2ZjZDczNTEyOTQzYmI=
yMDYwZGRkZTBhNDUyZDVlOGM2ZGMyZWVlZjEzZjQxODFjYWQ2M2Y2MTdmNjVkYjVlOTQyMWI2MD=
UxNmNhNmExOWYxOWJlMjlmYjhlY2E5NjNmZGVhN2Y2ZmM4OTQ0NDAzNTUxY2ZjZWZkNjE0NWZhY=
mQ3MDk4YTNhZDM1YTRmODZjOWJkYWEwNGU2ZjFjNTlhNDliZDM2ZDE3Nzg2NjE0NmZmZDBkOWQ5=
MmY3MzljMjM4ODZmYjg0ZDA1NWRkOGY1Mzg5ZTc0NzZiYzJmNzgxNzZmZWQyNzcyMTQ1ODYwOTR=
iZDJjY2RhYWU0ZDY0MWE0MzY4NzBiNjI4YWViYThmMTc4YzEwYTVkMTU4ZjcxZDU2ZWEwYTdmZm=
ZiMzg3MGJiMGUzZDMxZDA4NWUwZGJlMzk1NDVhMjY5ZmNhNWY0MTI1NjgzMTIxODFiZTMxNzkz>=
*

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DNzlmNzdjZjkwMzAwYmEwMGNmNGZiOTlmMzRmYTA3OWIxYWNiYjJmYmI=
xNWY3ZDc1MGQ0MGYxZjU5ZjJmMmIyMmE3ZmVhZTVlZWRiNjlhZTJmYmMwMzQ1ZWE4NDMwNDk0Mj=
g2MDNmNzc1ZDc4ZDNkMTJjODljZDRhMWM1YTc2OWU1MTAzYmJkMjhmNTYyOTk3MWVlYjMwMjNlZ=
TAyYmJkNzk3NTlmN2Y4N2MzYmQ2YjFkZmE4MDJkNWNhMTY4YjZlN2E5M2FhNjZlOGZlYWEzOGM5=
MzA1MmFhYzYyZDI5MmM2NTEwMzJiYTBkNmZmODgzNDI1YzJmMTc3N2YyOTk3MmY2YjA1MTkwYzQ=
yYjE1ODgyOTRiNDYxNjZiZjdkYjVkZjAxMjkzMzM5ZjVkOWUwMzY4ZmQ0ZjVlNTUzMzJlYmY4ND=
AyZWFlZTA5NjgxZTdkMzgxNDVlNzQ2YTJmOGY3MDlmODg0ZGVjODE5NTY3ZTEzMGU0ZDBhMWM0>

[image: Plan your fall getaway and save with Member Prices.]
<localhost:1333?u=3DOTUxOTJlZTFhYTRjZjI2ZWQzMDM0YWQ2ZDNkZWQ4ZDU5ZmQ5NWU4YzE=
1YTgxMjk5NjNkNTAyMmRkYWFiNTk3NmVkOTE0OGM5YzhjYzFhMjJlZmRkZDRiNjk2ODdiZjgxOD=
k4ZmY2Y2I1MjQxNzE4Nzk3M2FlYTVmM2ZiY2E3MjA3MGQzOTNjZWJmNGZiMDFlYWM2MmQ4YTBhY=
jk5OWY3ZGY5ZjYzYTI1OTJmYmJlZDVjZjc1YzAyMDQzOGNmODIzZWIxYTRlMzJmZjRhYTQ3NmM0=
NzU0YzVhYjMxNjkwMzk2NGE4OWNlMTBlYzEzODk0NTFiNGJjN2M4MzE2NzAwYmNhZGYwMjhiYjN=
jMGYxNzdjNTM1OWViNzRhNzkzODk1ZmM5ZGJmYjkwNWM2MDA1MzBhN2RkMWUxMTg3ODFjNWE1MD=
cwMDcwOGNkNGY5Yzc0ZDFjOGI3MDkzNzFlMGVmYzNkNDg2OTgzMTVmMTI5YzQwNDY3YjA5OTg5>

Made to Travel: Inspiration for your next journey

Members save on autumn breaks

Fall is here, and so are Member Prices on select hotels. As a Silver
member, you can save 15% or more on over 10,000 hotels worldwide with
Silver Member Prices on the app. Now is the perfect time to book your fall
break.

Start saving
<localhost:1333?u=3DMGQxMDUwNGEyMjY3MTk4M2Q3YTVkNzVjMTczNjc2ZTIxMmQyMjlhOTk=
zOGMyYzVkODY5MWM0YzljYWNiMTZjODNmMjU3ZGU0MjFjNGU4NjRiOTdkZTdlNWQwODBlNDQ5Yz=
RmZjI0YTZiMzJlZWJkNGY0ZTU2N2M3MGVmYTRmZWQ2NzEwMDY0MzVmM2Q4Y2RiNjk0NGEwMDNjM=
Dg4OTcyZDY4MzNhMTYyMzgxNWE0MDczZThjYzRkZTY2MjgyZDEzZDQ1ZDQ4MjBhNjdhM2JiZjhi=
MzUyMjlmNWFlMjJjMmJlOTg2ZDBkYTQ1MGVhOTJjOGRkYTM2ZmY5YTRlODYxNjVhNWJlODRjNmM=
2MDVhY2IwNmM2MTIzZTRiMWY1ODJmOTljYzdjZmUwN2JkZTA1NDhjMWYyNTZlZGMyY2FjMDY3NW=
ViNTg3OWEyOGMwOWI3MmNlOTk5YTZiMWVhNDNjYWQ3YjA2ZDNiMjI4NzdmMmI0MDZiNmM5YjFh>

News this week

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DMjg0ZTUwMWYyZjBjMWVlZjdmNTBjMjUyYjJjM2E5ZjQyZDljNGU3YjY=
3NjMyMTcyY2NmMjhjNGEwZTM4MDFkMTNkMWEzNDdhZDAxOTZjZTg3YzE2OGJiOGVlNzQ3ZjZkZW=
EyNjA2YTAxM2VlNDcwZjE3NzU0MmJmZWUwNDBhOWUyNTk1ZWRkNDQ3MzVlNjM5Y2U0OWQ3MDY5Z=
Dg3ZWIxYzRlOTljYjVkZDgyZjg3NjY0MzhjNjZlZTZlYzc5OTVmODc5ZGYzNTkyZmI5YjgzYzc4=
ODViZTkxNzhiMzU4MGQ3YzM3NjVlMmU5MDdkZWRlZTExOTA3YWRlYmNlZTYzZmY1OTBiZjQyMDM=
4NzEwZDVhZDBhZmRhZTgwNzk0YWMwMDYxYmE2MTY5OTk0ZTVlNjk2MDgyMDJkZGRhMjQ3YzJhOW=
ZjNmFkNjY4MzVmNDQwMDg3MTM0MDA0OTZmOGIwOGFlZjdhMDhjNmZiY2U1YTdiZjYxNmEyNjBl>

[image: Plan a visit to West Maui when it reopens for travel Oct 8]
<localhost:1333?u=3DNTU4ZTk5NjU3ZDY2M2Y2ZDJiY2QwZmFhZTJlOTVjZGJjNWJlZmE2MmE=
zZDJhZTY1ZGE5M2JhZGY0MmQ2Yzg4MjEyNGUwNmQzMDU2MzIxZWMwMDkyMDQ0ZmU4ZTViMjg4OD=
gxOTBiZjliYWZiMWM3YWUwMzJhODk0NWE1MTg3NWVhNWVjZTAzMzRjY2E3OTIyM2M5MGFlNWI3O=
TYyYjdkNjQ1ZjE4OWViNzRiZmJhYjJjNDgzYmFiODhiODY1ODJmZmQzNjI1YjI0ZGYzMjE4NWZi=
MTEyNGE2ODY0Njc1YWNkZDhmZGQ3ZWNhNzc1ZjIwNzFkNTY0YWVjNDEwNjdlN2YyODM1MGFmYzJ=
kMWQ1MWMyNzIyZmFkOGVjMjA4MjBhYTkzNmVhZTE0ZjExNDMwODhhMTBkZDk4NjI4NzUxMTY3ZW=
E5NGYyNGI2YjJhMjRmYTNlOGNkN2Q1ZTVkMGZkZjZmZTBlZWYwMDYzNjg1NTU1MjkzZWRiMTNk>

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
<localhost:1333?u=3DZGUxYTdjMDI2ZDc2N2IwOGY4ZWVlMGQ1Zjk1NGJmMTUwNzdiZDdiNzg=
4ZDViZDMxMGQ0MjM4MzA5MjM4YmM5MWIxMTg2NjNmZjQwOGZlZmU3NWVmZDlmNDQ0YTI5NTdkOG=
I4ZjM5ZjA4ODQ2NjA1ZDkzNDk1NjY2OGI5MGI4Y2FhMDIyNDk0NzAzY2FlOTMwODgwNTg0ZDY3Y=
TAyMjQxNmQxODU3ZTM2ZTYxZGUwOTMwZDgzY2RkZjU0NmNmZGM3NWEzNTk4ZWI1YzE0ZTFkZDBj=
MGQ2ZWMyZjNkOWJkNTQ0MTViY2MxNjA5M2U3NzU4OTM5YTI2OTAzZTAyNTVjY2Y4MWY0NzBiYWI=
3MzUyNTQwZTAxZDJmMjhkNGRlYzNlZjVkMThlYmQwNWYzOTgxMjVhZjFiZGJjMGJjY2NhMTJiNW=
Y1YjgzMmMxNjFkODkxY2FiOGZjMGUzZGM5YjAyZTFjZGUyYmNlNGU5YzI2MmJlYzY2Yjc1YjViN=
Dk2Yw=3D=3D>


Download our FREE mobile app
[image: App Store]
<localhost:1333?u=3DNTJhMWI5Zjg4NWQ5NDFjMDg0MDNhOWVhMzdkNTJjZTg4ZDU2NDMxMDI=
zZmQ3ZTRlZDhjYzBiZGJjODIzZTQzYTA5ZjJiZDdmNzM1NWFhMWYyZTBlZGJiY2VhNmQzNjIwNT=
g0MTU0ZTJmZWJkNzVkZWMyODViMDVlMDdkMzU5MWM3MWU2ZWU2ZTU2NmIzNTQ1MzRiMmM3ZjczN=
GMyODQ0ZjEwM2JlODNmYzZiYTc0NDFiYTkwMTcyYjIxY2U5YWFlYmM4ODhkYWIyNTY0NDRkZjIz=
ZDk2M2E0ODA0Y2JjZWU1YWY1NTZjOTIyYzg1ZmI0ZGNmZDVmMGEyMjQ0YWEzN2MzOWQyNjI2Mzk=
2MTVmMjIxNjQ0NmE2OWJmNTFjZTcyMDFhZDkyNmRhZjIxMGUyNGYxYTQ3YWY0M2FjZDVhNzllMz=
FmMmU0NWZjODVhYTg5YjIzNWI3YjhiYWMzZGIyZjNiMDM4OTNkOTNhYmVmODdmODQ5MDYwNjA4>
  [image: Google Play]
<localhost:1333?u=3DYTM2MTI3MGQwZmJhMzdkNTAzNjVlYTZiNGNmYzYwYTQ1YzcyNjg1YWM=
yZGY1NjRmYTVmOTVkMjI1YWU2MjdkOThkYmY1ZTQwMTg3NDVjOTQ5MjYzYzc5NDg4ZmI4M2MwOT=
llOTY1ZDUwZTAxNTRiNWViNzRmZTIzM2Q2M2VhMDQyMTI4YTc4ZGY5YTBkMzdiZDdiY2M0ODlhN=
jFmZjc4MzdmOWU4ZmQ0YzAzNjhmNDUwZGYyNzI5ZmNiMjg4MDU1OWU5YjFlZjkxNTNjNWRlOWQ0=
NjYwYjU1ODJiZDZjZmNlYTdkOGFhN2Y2NzU1YzI5ZjMwZTMwMGVmNzhkOWU3NjlmOWFjYzZjNzA=
xNTkwNjkwMTRjNTRiOGMzMzMyMGU5ODkyYjliMGYzNDA2OGI5ODQ1Nzg3YmZmNDQ3ZTA5Y2MwYT=
M0ZDM3ZGFlOWZjNjI2NjU3NjE4YTg2NDA0ZjAzNDNkNWNkMzFhYTE1ODA5MjBiNjMwZDliMDBj>

Unsubscribe from The Travel Edit
<localhost:1333?u=3DYjFiZmM5NDhmODQ2ZjEyM2RlYzM3YTY5MzIyODIwODA5ZTgwYzJlZGZ=
hMjg5YTY3ZmE4MTc2ZjAzOTFkOGFhMTlmMzZkNDQwNGZhY2U2ZDM4ZGJlZmM0YWEwYzUxMDBkYT=
c4ZTU1ZWNmYTI3Y2NlMmZjMTBjYzQ4NTQyYzY3Y2I3MGFkMGQ4MDAxMDRhNTNlYWZkYmQyMTQ2Z=
TdiMmVhZmExNjQ2NGI4N2RhMTIyYzkxNzgxNjc4Y2E2MjU4ODgzNGIxNjE2MjkyMmVmNTgxYjcy=
YWUyYjVjY2Q0MDNkODc3NzQ4ZTUwODQzNWNjOTE1MDFmYWJhNzM2YWNiNjY2YzZmYmY3MjQzYjA=
wZmQyNDFlNTc1ZWYxZGM0NmIwMTRiNmI3MTg4OThkMDgxOTc5YTNhMjIyNDY4NjljMTNiYWZlZT=
gwOTQ1MmE0NGM2ZTU4ODFhZGFhOTk5YjIxZjFkMjY5MTE3ZTVmNTk1OGFlMjZhODc5YTYzOGY1M=
jkxMQ=3D=3D>
   Manage Preferences
<localhost:1333?u=3DM2Q2MWU4ZDg0ZDg2ZTMzNDcyNzA5ZmNmY2E4ODA2NjVkZjBlOGViMDk=
wOGRjYzAxZDBjYjVmNjFkNmNkNTYzZTY4ZGJkYjQyM2RiYmRjMGFmMjc0ZmY5OWNkMWY2MzMxMm=
Q1NzhmMjBlNmU5MmMzNWY5MjYyYWViNWVhNjlhYzFmM2Y3NjY5ODQ1Yzk4MzRkMGI5NWVlOTFmM=
TVmZDE3NGM4ZDhlYzY3ZDFhZmVlZjdjYjc0YWUzMzE0MTcxNzY0YjIzNWNlMjI3Y2Y2MWNkZDIy=
NzdmY2U5NjU0NTljMzUxNzA0MDRlMTk3NjI5YjM1MzIxYjEwM2NkZmYwMTQ4MTRjYzlmYzk3MTV=
iODI2ZDE3ZjAzNTlmMWE3NjVhY2RlNjhjZmQzMzIyZmVjZmNjZWYzZWQyMTIzZmQ5MWM5NGRhNm=
EzZWY4YmQwNDdkOWRhODk3MDg5NzU1NTI1YWNkZGFmZGM0Nzk0ZTRhMDAyYTU1ZTc4ZjcyZjg2N=
DQ3Mg=3D=3D>
   Privacy Statement
<localhost:1333?u=3DYzQzZGNkMTBiMjkwMzNjODZjYjRmZDgwMTgyYmY5ZjcxNmE3MjkwMDE=
1YmIxMTE1ZWI2MGY4Y2E2MmFiZWUwZjcyMmUzYjdjZWU1YjNmMDExMTUwMjVmNTU2OTNmOWIyY2=
I4NGFmNDU1NzFkODk1NjRhZTBkN2Y4ZDIxYWZlZDQ5MmMxOTAxY2Y0ZTY3NzhkYzNkNmI5NTNhM=
mQ1MGVkMWYxMzQ2OTgyZTU2OTU3ZTUwMDJkMDMwYTVkN2VhOTcyMTE0MzAxNWE0N2FhZTY3NjQ2=
YzI4YmRhOTg4ODMxNDM5Y2Q1MDRhZjc2NDk4NzBlNjk1YTFlYjFjNjk4NzUxNGYzZjE0YTc2NjR=
kYTEwY2NkZjNlNjdlYWRjYWIzMWUxNGFmYTNiNDIzMGU5ODNhZDE1OTc1ZjE4N2E4NWI1NmJjZm=
JmNGQ3MTkzZmM4MGNlZjFkODNmZmQ5ZDBhODAyYmYzOTIxZmY0Zjc4ZDczNzk4YzFjYWViMzQwY=
zA0OA=3D=3D>
   About Us
<localhost:1333?u=3DNGU0NDdkOWZlOGFmZjgyY2I5OThiNTc0OTE4MmMwNzU3OWZhOTE2MWQ=
yZDg0OTY2OGIxYzIxYTc2NmU3MzFkNDNiOWZmOTcxMmVkYTA5ZTVlZDU1MjkzMTIxZTdkMmU3Y2=
RmNDY1MGQ3NDVjYjBiNTQ2ODIyZTE2MDNhY2NhYzRlZTkxYzBjYjg2YmI2MDc2ZjM5NTFlYzhmY=
mU1NDY1ZTY5M2RmNTQ4N2MyMWQxZDZlODI3ZjdmNjI3ZGZiY2U5NDc1NjRkMTkzNTA3MTNjM2M0=
MGQ4MWVlMGY5MDA4MjkzODY3OTBiYTYzMGE1YWRjMmI5YjEzNjk5OWJhOGU0ODVjNjJjYzY1ZDI=
0NzYwOGY2ZDRjNDE4MDAxNzI5MTdlZDcyNTViNjkyZjVhOWYxNzY1MDVmYzA3ZThhZjk5OGE5Nj=
NlZDcxNmUyZjViNjE0NDUyODg0ZGY0ZDg1YmE5M2U5NDljNGQ2MzdiYzdiMGQzZmQxZjUzYWE5N=
zVhMw=3D=3D>
   Customer Service
<localhost:1333?u=3DZTA4YzAzYmU2YTU1YmMzZGYyYmRhMjgwNzllZjQwMGI1MGUzMWFhOGE=
wMjdiOGZmY2UyMDQwMDBiOGY5YjNiOThkODQ4MTEyNThlZjdmMzBmZGNhYzZlNTJiOWRiYzJlNj=
ZhNmVkY2E5NDBmNzI1MzdmNzNlNWMzZjAyZTE0MDFlMmU4OTlmMDY2YTRjNDUzOTEzYzNlMTFiY=
WRiYjM2MTkxMDk2YTY1YWE3MjdiYjVlODk4OWJhYmFmYjg0OWVjNzllOWUzNTY2NmY3N2M3NWQ0=
ZmI4OTU4NTFhYmMyNzI0ZGJiZDQwNTI5NTc5NDg3NDliZTg1YzUxODMwNzZiYTFmMzkyMzlhZDg=
4NmU5ODM3Zjc2MTc5NGY3NTk3NGE5NTU0NTgwMmU5NzNjMTZkNjcxY2ZlZDE0ZDY4MTM5Mjc0NT=
A3Yzk1ODIwMzdhMDU0OTYyNWRjMTI4OTIxNDJkOWY2ZTk5ZTA3N2EzMjI0ODg2ZDE4NThiMjQzN=
jYwYg=3D=3D>

This email and its links may contain your personal information; please only
forward to people you trust.

You are receiving this email because you are eligible to receive
promotional emails from Expedia.

Expedia, Attn: EMC Team 1111 Expedia Group Way W., Seattle WA 98119
<localhost:1333?u=3DZjJhNzExODAxNDE1NjQyNTNhOWE2MjZkODQ0N2ExNGZhYjJmYTA5MWU=
zMmViZWYxMGM2ZjI2M2E3OGIyMjk3YjcxMDU2ZTRhZGE5Y2Q3ZjQxOTQyODk3YmEyNzBmZjQ2Mm=
M5MTQ3ZTAxZmE0MmY0YTExMmExYzBmZDQ3MGRlNDA1Y2QyZjkzYmZkNjc5OWVjZjA2N2QwZTkzM=
zYxZjExZjZhZjNjZDdlZGYwNTYxY2NjNjlhODY4NDlhYjYyOGMxNWI1YjMxN2EwNzVkOTZjYTFk=
ZjJmMGMzYWQ1Nzc1NWRiYjI0ODYwOGUzOWMzMzJmNGZmMmU5MTAyOGU4YTA=3D>.


*CST# 2029030-50*

=C2=A9 2023 Expedia, Inc., an Expedia Group company. All rights reserved.
Expedia, the Airplane Logo, One Key and OneKeyCash are trademarks or
registered trademarks of Expedia, Inc.

View online
<localhost:1333?u=3DMjNmODk1NjA4ZjZjNmQ3Yjc1ZDY3Yzk5MWNjYTIxMDlmY2I5NTFlZTc=
3MDUxNDRhMDNjN2Q4MTZhMjAyNzcyMzdmOTU5YWMzM2FkOGYyNDNiOWRmY2U2MWE0MTQwM2EyNj=
g0MjkzNDE0MDgwYmRmMmI5N2M2NDAzMzZlMzUzODQ1M2M2MmRjMjY5OWM0NWFkMTVkMzI5NWVhO=
TViOWIzZGVmYTVhNDA3Njg1NDAwZTczYWZjMjlmMGQzN2RiMTk3OGYyNWZhYTY0YjZmMGI2ZTU3=
NDI0NTMxOWUyNWFjOTY5NWNiOWQ4YTQ4MTY4YTUwNjQ1ZmUwMGYwNzFiM2JjZWEwYjFmYmM4ZDE=
0ZGE5NDhmYTA0MTBkYzRkZTcwY2VmZGIyNjIzMjE4YzYzZDI2ZjdmNjIzMzA1NzE1NjkzODA2NG=
VkZWRmMmFiOTQ4OGFlNmMzMzUxZmE1ODA4ZDQ0ZDBmYzVjYmRhNjI5OWZkN2E3YzA5MDNjM2U3N=
jE4OWVmMTg3MGZjN2I3ZWM0MzhlMGYzZjBmOWE1ZTlhNmEyODE4MThjOTc3ZmI5OWJlMjIyZTk4=
MGNjMGM=3D>

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
Helvetica,Arial,sans-serif" href=3D"localhost:1333?u=3DYzM1NDA1NDc5MDdhNWNl=
MjE0MGU5MzUyZWNiZWRjZjgyOGJlNDBkMDI0MGRiYWI5YmE2ZTRiNjcxODYyYjZlYzRmNWQ0NDc=
wNzFmYjRmZmE2MGEwNjhlMWY4MjE1ZDgxMWY4ZGEyZmYzYjE4OWRiNGJlMjA3OGVjZTRmZTM0MT=
liZjZjYTU4NmEzZGYwNjZlNGM4ZjAzN2RkZGQ2M2FjYWQ2ZjhjZDc0OWEwNWNkNmFhZWE3NDAwO=
GM3MTcwYjUwZjYxMTA2YzY3MTFhYjVjZTIxYzE2NjAyZWRhYTk2NjIxMWU0ZDc0ODg5NjBhZjE1=
YjA3M2JmNjExZmVmNjRlYTQ5Mjc4Zjg0ZTc4NjA2ZTdjMTdlNTNjODZjMTI4MWU4NWI2N2I3MTY=
0YzU3Y2Y2ZjcwNDdjOGJjMDA5ZGQyYTI0ZjgzNDNkN2Q3ODliY2UwOTE0Y2E1MWFjOTVmMWMyNG=
M3YTRlODk5MDZlMjVjODcyMjcyNWVjZmJk" target=3D"_blank">
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
?u=3DNzI3NTI3YzQ4ZmQyZGQ4ZmYzNThhYTIwYTcxMDM5ZTgwNTRhMGY3ZTQ1NDAxZDdjOWRiZT=
E3OGYzZjhlMTEyYWJjZWRjYWQ2ODM2NGRkZTZmNzg5OWQ1ZjA5ODA4MzAyMzEzYmRhYjJlYzU2Y=
zk2MDBjYjdkZTY3NTM0OWFmOTVkY2IzMjU0MTZkZjU1NzFkZWFiOWFjMjJkMDNlMzIwYzU0MThh=
M2VjNjVmMGExNzRhMzU5NzI1ODFkYzYwYmQxZDFhNTVhYmQ2Y2NjNzQ1NmZhN2QxNzZkZGMzMTJ=
kYjZkNzNiNWQ0ZGNlZmM2NzI3YjBjNGRkYzBjNTM1MWEwY2U3MGJiNWQwZDA2MTA5ZWFjYmViOG=
ZkZTFhYjdmNzQwM2MyNGQ0ZjFlYTJkMDFhYTE3NzI1MjhjNzExZGVhYWUxNmM5NGQ4MjYwNDUxM=
zgzNjQxZDU3YjkzM2Y3YzhkMWU1NGZkNTZiNjMzODNlNWQzOTVlYjgzMDRh" style=3D"text-=
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
                                    <a href=3D"localhost:1333?u=3DMTVkZWM1Z=
mQzM2Q1NDhjMWNiZTFkMTQ3OTE5MzdhYzAwY2VkMjdhNTFkZjUxNDQyNTZmMjc1N2E5MjZhYzJi=
NDUwZWNlZDBhOWQ5N2QzOWI3MTkxYWQ4MmFmMjQyMmUyYjNmMzFkOTQyNGZhNDRkZTdkMjQzOGZ=
kMDIzMDg3NjY0NDljOGNjMmE2NjdiMWQ0ODA1ZWRmNTJmNDI3MjY1MjNlOWEwNmVjZDU3OTdkMW=
IwY2NkZDU4NmU1ZTIzOGQwZGUyZmFmMjkwZjlkOTA3ODdlMDUxMzhlOTk4NDkxOTE5OWQ1YmVjZ=
WUxNzk2MmQ0ZTM0NjZlNGJlYTk2ZDFkM2RlZTZlOWE5YTdhY2IwNDlkNjFkYmYzMmM0ODFlZmYw=
NjI0ZDA5M2U0NDBjZTA1YWVhOGQ3M2E1MWZjMGIxZjgwZTJmN2RlYzg1ZmFjMWM1MDg0NTFkMjF=
iYzczM2ViYTk0NTAwNDJkMTY4MjVlMGU1NGEzZDNkNDUz" target=3D"_blank" style=3D"f=
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
                                      <a href=3D"localhost:1333?u=3DMGE0ZjZ=
mNGU4NTllZTJjMzk5OTI4YTVhMTY2N2YzMmFiYzRlMmQ1MzI1YzZhMDAzZjI3ZWUyNWY0NzllOT=
QyMGQwMGMwOGFkNjgzMDRmZGMzNjlhYTNhOTMzZjA4NWI4ZDg1MGYzMDEwZGY2ODJjMzYzNmQxN=
TBhYjAzODU5YzAzZTE1YzM4ZjBjOWJmM2I4ZjJjMmQyYzcxZTBiN2I4MGQ4ZDY0NzI1ZWUxMjRk=
MWQyMmRiMzBhOTY1MjI5ZDNiMmRhYzBiMWYyMDIwMThkNjM1NzgwZDg2ZmIxOGExMWE4Njc1Zjk=
1MDAwODY0NjYyOTMyOTkwYjlhOGI0ZDNmYjczMmQxNDk1MDU3YTY5MzU1OTllZjMwYWUxNTcxOT=
Y2ZDlkNzAwNzY1NTljMzRhOTZhYzQ5ZDVhZDliYmEwYThjZDg1NWE4YmEyOTZlNGMxM2I2M2M3M=
TViY2UxZjJjZWNlY2U3NGNlOTRlNGI2ODZkMGE1NDAzODMx" target=3D"_blank" style=3D=
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
7279934882522button__primary__link" href=3D"localhost:1333?u=3DNGE0YThhMjYy=
YjRiMDM0NWI0NWIxZWMwZmU0MGE1ODUyM2E5Mjg2ODA5NDQ1NjIxZjVhMDY2NDczZWZhMmE0YzV=
hMDZhM2FjNzE0ZjEyZWZmY2EwYzAyM2Y2NjA0ZGJiMjY0NDVhNTg1YWNmOTY2NDQ3ZmE3Mzk1NT=
Y0ZDVkNzAyODE2ZDQyMTc3MGI4Y2RjNzliNDEwNTA0MWQyZTMxNGZiNmQ1ZTFhZjA3MDg5NjViM=
mViN2NkZjRmNjA1YjJjNjljMzgxMmJiMzc2MDVlM2I2MWIzM2RhMzYyZjMzMThkZGY5ZGYwZTBj=
N2M2OGRkY2YwMjZlNDI0YzM1N2QyMTlkM2IwOGExMTVhYTYwZTc2YTNjYTdlMzI3ZWI1NzUwZTl=
iOTEzYjU4ZDEwNjJmMzRiYWZlMjkyNGVhNWIyODg2ZGFiYWI2MDI5MWNhNWQ3MTJiNTk3YWI0Zj=
Y5Yjc3MGEyZmY5M2U1MWNlMWFlNTBhZDMwZTBkMWMx" style=3D"display:inline-block;t=
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
                            <a href=3D"localhost:1333?u=3DODE1MDMxMjlmMGViN=
GJhMGNjZTQ1ZWVjMTAzMGRhM2M1NmI3OTIzMjUwODFjOWFjMmUyZDkwZjcyZmU4NjVmMDg4NjE5=
YTgyZGJiNTc4ZTQ0OTY3NTVhNTM4NWMzNmVhYTc4ZjUwY2E4Njc0MGVmNTI5ZGQ1ZGQyYTFiZTI=
2ZWMxMWQ4NmE0MDQ0MDhkNjBkYWY3OGQ2NTZjZTc4YmU4MGM1NTBkYzg5ZGYxY2JiZTVmMzg3MW=
M4ZTMyZTI5ZDQ4OGRjOWFmYzdlZTE1YTBiNGE2YzkxYjZiOTUzMzE2ODVjZWJjYjViYzIxYWE3Z=
TA3ODhmYTZjMDVkNjlmMzUyNTJlMzVmYzNiYTc3OTQ5NTg5ZTFjNmExMzdiNTA0Nzc5MzZkYTE1=
OGE0ZThhNTcxMDZmYjllMDA0ZGRiYjhlZjhhMzYzMDUzY2M3NmU5ODM4ODIyNjcxMWI4YjhkNTR=
hODY0ZWZhMTMwZmIxY2E5ZjFjMjhkNTMxMzA4" target=3D"_blank" style=3D"font-fami=
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
                                <a href=3D"localhost:1333?u=3DNWY5ZDU0NTE2O=
GMzNjkyYmI3NWE3NTllYTA5NDBlNGMzMWMzYmYxOWMwMjY3ZWUzYmYzODU4MGI4ZTQ0Mjc4ODE2=
ZWMzNmI1NTM5YWJmMThiODhmMTNkZmM2NGEzMGZhN2VlYjU5YjVlZWFkNTI4ZTZjNmZiMGQ2Nzl=
mMTQyYzc4YjQ5MjMxMzRiOWZlMmY4ZGE4NGQwMzNlMWY4ZTAwMjBiOTEzNGYzMWFjMWNjNTIwMD=
Q2OWFkNDcyMmFmZTBjODAwYTk1ZjA4MDcxMDYyYjliMmVmZGQ0YjM3ZmJjMjI4ZGY1MzA0Y2NmN=
TgzOThiNzAxN2ZkOWQ2YzVlMWUyNjU3NTU0MmQ5MTYzZTE5NTkyZDIzNTU1NmQ2MGVhMGVlNTRl=
MjdmYzRiN2E2M2NkOTkyMDkwYWEyZjIyYzliMmQ2ZmNmYjQwYzlhYTA5MzNiNGYxYzllM2U2YWR=
kNTNlYzdhZmYyYzY3NTZjNWM4N2Y5YWNiYjM4ZTg1" target=3D"_blank" style=3D"font-=
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
                                      <a href=3D"localhost:1333?u=3DMmI2NjE=
5ZWM3MjBjMDcyOWIzMDE0MjgyOWQzOWM3ZjI2MWQzNmQ5YjU3MzM4MWRkYzI2MzFjNDUzOWZiNj=
FmMGVhODdlYzllZTNkOGFmMzJiMjZlM2E0ZmRiYzFkOWFlYTMzMGM1NmZmYTg5NjA1MzI0YWQ3O=
TkyN2QxZGNjMDEzMmEzMzc0NTYyMWIwZmQyZDY4ZjkxYTc2NTNkYWJlN2ZiN2RlN2UxNTczN2Ix=
ZGZiZWRhNmYxNmM0NmU3OTdkYmQ5MDlhMWQyN2I1NGNhMmExMDBlOTA5NWEyYTgwNDNmMjc0ZDg=
1YWQ3ZWQ5Yjk1NzBhMTI3OTFiYjJhNDI3MmI5NDczMTA0ZDc1MzhkNjg4Y2I5ZWRlMzFiN2QyOG=
NhY2EzMThjOTY5ODgyZDU5ZDQ4M2Y1YWQxMWFlY2MxNjg1ZGM0NWNiMjYwMWIwMmEzMjg5NTY5M=
DkwZGNiMzQ1ZDAxMWZkN2ZmNzA0MjNlMjE5ZjE0MWUyY2QxMzk2MQ=3D=3D" style=3D"text-=
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
Arial,sans-serif" href=3D"localhost:1333?u=3DNDJjMDFiYmY5NWU5MGNhNTI5YmY0NT=
E1MzliYzY2M2ZhYjk5ODgxNDE0MjdkYTk3NDAxZmQ3NjU0MjBmNzk2MjAxZjEwZTQ5ZDg2YjZlZ=
mZhOGVmOGY3Zjg5M2RhYzc2YzQxYjFmYzQ5Y2I1YWRlODQ0ZjcyODVkZmVkOTljNDI0MTVlNzU3=
ZmRiMTczNzFhNzI2M2YzNTFiN2M0ZmUwYzIxZGM2YzdlMGM5NDc5MGZiN2RhNzgyNWUxNTEzODh=
jNmMwNDZlOTEwM2MzZjE4YzNkNWE0Yzc2ZDgxODUzODI1MWE3YWNhMGM2Zjk2MjYxODU5Zjg0Mz=
BjNDliMmQ5NGI1MjkyN2Q3NWFjNTE1OWExOTdlYmNlNjJmMjBkMDQ4MmJiNjUwM2E4MzE0MzY1M=
GU0ZWUxN2JhYjc1NGU1NzUwMTNmMWY5MjJlNzBhZjQ5OTZmNGU2ZWVlMzNlYmEwOTIzZGIzOWYx=
YzA0ZmFkOWYzZDFmN2U0OTEy" target=3D"_blank">=20
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
Arial,sans-serif" href=3D"localhost:1333?u=3DMGE3YjliYjFkYzM5YmY4Y2NiMmU2Nj=
QyZGNhYjAzODliNWQ2MGM3YTViMmExMGI2YzRkMjc0MDdiYmY0YzNlMDcwMDljMTZhOTQ5M2FkN=
2UzYjIwZmYyMjc1MTc5NzgwYWI1MmE4YjJlNGQyOGIyZGFjODY1ZmI0ZGVmNjhlYTVmYjUxY2Zl=
ZjViNjU3YTY1ZDVhNjZmNmI2YmQ2NzI5Y2YyMzE1NGQzN2NjZDA1MDRjMGJhODMyZDFiMDFhYjc=
wZjZjMjgwYjkxYjM5Yzk2OGQ5YjI3ZWFlMjA1NzIzZWFlMjllYTBjNjE5MWNiMmUyZWQwMTU3Y2=
NiYjJmNTdjMTA3MmJlYTNiZjBjOTQxYzE4MjdkNmJjZDU5Yzc4OTM3ZTQ4M2VhYmJiMzc1YmRiO=
TA2NGFjNjYyMTc0YWQ0Yjk3N2UyMjQ3MmRhZTNhMmFhZTIxZTBhNGFjMjNmODRmYjJlZDJlOWNl=
NTJjYjA4NmNkZGI2YjJhMzI5" target=3D"_blank">
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
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMzQxZGRmOTI1ZjU1=
YmNmN2Q3OTZmN2IwNmM3ODg2NTU0YTVjZmQyMmEzNmIxYjNmYTQ4MmI4YjAyNzNmNzMyZjcyMjc=
wYWYzYjVlM2Q0OTAzNDZjY2M5MTkwZWFiYzg4NmIyYWRiZjY3ODZlYWI4YmUzNjg4NjUwN2NmOT=
BkNGE4MTNhOTAzOWI3MGEwZjY4OGQ3ZjU0ZTBjMTI5YmE0OTcxOTdlOTdhYjU5OWZkZDgwZmZhM=
WQzYWQxZTE2YzI5ZWY5NjhjYmE5YmRkYTNmYWMyNGZiNGRlZWUzZGZlNzFjYzEzYzVhMjc0YjMw=
ZjQwYjc0Y2FiYzkyMDZhMjM1NzdkMGVmODljODczMzg0NjMyNGNhYTlkZDJjNzJlNDE0YzRkYmI=
0OWY1NGM3MmVjMGI1ZDAxZmI1NjA0ZmFhMmFmMTBhZThjMDVhMjUyNDMwNGZlMjc4MTgxNmYwNm=
M5MzJlZTBlNjNlYzI1YTJjYjllZWM5ODU5MjFhMTcyZQ=3D=3D" target=3D"_blank">Unsub=
scribe from The Travel Edit</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DZDQ5NDA1ZTJiN2M3=
MGNiZGM1OTIxYmViMDA4Y2VjNzcwYTJmMWE3OTJmMWZmZDA2ZTQ4Zjc3MTAxMTk3NDg1YjU1ZTQ=
4ZmM5NmY3YTJhYWFhMzg5N2VkNmY2NWU5OGNhOGZmMmYwNTk2ZmJiNTkxNzQwMzc5NGM3NjE4NT=
A0ZWE5YjYxMmZjODU3Yjg4MTMxZTdhYTYyOWU3MzZhMGQxZjRjZTMyNGNiMDhlYmI2OTFiNjJhM=
zc4ZGEzMmNiYWE2NTFhNmUzYTcyNzBhMzEyZjJkY2NlYmYwM2M5OTIwMGYyNzkxZjJmZGMwN2Ex=
M2VhN2M2MjE5MGI5MWQwZjg0YWE4Njk4MmEyMWE1ZjA2NjYwMjU0ODlhMjMyODRjYmM2YTMzZGU=
1MWE0YzdmNTI2NDRiMmQ1ZGFmODIyYzMwNzc2ODcyMjE2MzRlMGM2YzQ2MjQ2MWExOTU1NTIxNm=
NkNWNkNTRlZDg2YThhZWM4NDQyZGJkZWExNjU5YzM0ZQ=3D=3D" target=3D"_blank">Manag=
e Preferences</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DMDJjN2ZiNGQxMTc3=
ZmJkYTNkMzlmZTVkZDIzZThlMDg0NmE2ZDYyNzIzNzYyMjRlNTk3Mjc5ZTBjNzMwYmQyZDRjZGY=
4YmQ0NzNjYzg1MDNlMjUzYmUwZjY5ZTM3YmIxMmJhOTU0YmUwYTQ5MjQ2OTdjOWZiZmM2OTU3Yz=
VjNDNiNzFiNTY0NmJiYjM5ODM1Mzg2YmI4MzNlYjhmMWQxNGEwMjJkZjUwMjg3MzZhYzAyNDMzY=
2M2OTY1ZDgyZWUyMDAwMDAzZGYwNTdmY2I1ZTYyNThhYTk3ODk3NTBjOGI4ZTU3OWYwYzVkNDNk=
Mzk3YzFhNmIyZmZhYzAyNDU2N2Y1NzY5MjE5YmJhOGE0YWFjYjYxNTc1MTg0M2E1NzgyMWFiMzB=
kNWE0ZjIwZTcyYzM0NzQ2M2UwMzIzYjhjOTVmZTc0NDE4NDZmYjIwNjdmNjUwYzNjYzg5NzFlOT=
U0MzM4MDJkNGU2MGRmZjkyYWYyZDBiOTUzOTAxOGI5Mg=3D=3D" target=3D"_blank">Priva=
cy Statement</a>
          =C2=A0=C2=A0
       =20
       =20
          <a style=3D"display:inline-block;font-size:12px;line-height:134%;=
font-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sa=
ns-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DNDQ5NjJjOGFjY2E3=
MmE0NDAyMjY1NGFlNTczY2Y4NDY1NjIwNmYzMTdkNDM4Mjk2YWNjOTg4YTVjYWJkODYxYjMyNDk=
wZjc3OWRiNGY0Y2Q0NTkyNTBhOGZhMGY3NjY2NGVjZjczMjYyN2ZjMjk1YWIzN2I3ZTJiOTYxNW=
M5YzRhYmIxOWU3NjdlYWYwZDNhNzhlMjlkMDFlZmE4MDk0NGUzMDE4NWM1YTg1Yzg4NDJiOWNkY=
zQzNmE3MzZlZmM4NTJjOWQ1ODNmYjVmZGNkNzBkMjBmNDRmZmU2YTk2NzNiZmIxNGVhOGIwZjM1=
NzgwMjhhNGRlZWIxOWZmZTQ1MWI4ZjZmY2I1ZjI4OTYxM2JmMGJiZmJiYmQ0NTljNmM3NDI3ZGZ=
mOTg5MzMzOWExMDdjOWI4ZTRhNDg4NzZkODM3YThjNGUzZDljNzJiNjU3Njc5NjVhOTQzYTNmYW=
ViOWU3NWQxYjFiODk5ODk1NGEyM2E3MGUzNDBhYzA2Nw=3D=3D" target=3D"_blank">About=
 Us</a>
          =C2=A0=C2=A0
       =20
       =20
        <a style=3D"display:inline-block;font-size:12px;line-height:134%;fo=
nt-weight:normal;text-decoration:underline;font-family:Helvetica,Arial,sans=
-serif;color:rgb(22,104,227)" href=3D"localhost:1333?u=3DM2U2OTNmMjdjZTdjNz=
JkZDZiOTgwZTg2MDdmZjIxZmZiNDNiYWQ1NzUxYmEzYzM4NzgzYzcyNTk5ZTFhZmFhZjNiNGI5N=
GNkYzQ1Y2MxNjQ2ZDNjMzUwY2Q4NjM4ZTY0MDVlMmY2YWI3OTFkMTVkN2YzZTU2M2U4OTQ0NTM1=
ZDI0YzI0NmUwNzFmNWUzNWY1MDExYWI1OGNhNThmMzlhMzVkM2IxYWRkODU1YzNiOWE5YmU3ZTl=
lNDA1ODZlYjIwNTcxYTkzOWI2YzQ3NDk2MmI3MDQxMTViMDlhZjg3YzQ5YzlhNmMwYWQzNmU3ND=
JjMTUzZmRiYjg5NmJlZjdiMmM2YWY3NjdhNzI4YzBlODQyMGNlYzk0NGNmODRlMjgxY2RiZDM4N=
2JlNWIyYmZiNWFmOGJlOTc2ZTRjNzFmYThjOWQzOWFhNWNkZjJiNDZjZDBhZWU1ZTYyMTNlYWM2=
N2YyMDhkYTdiN2NlMTYyZjdlM2FjODE1ODFmYTIwYw=3D=3D" target=3D"_blank">Custome=
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

     Expedia, Attn: EMC Team <a href=3D"localhost:1333?u=3DMjdkN2NiZmIyYzE3=
YTg1MjkzNGVlYTNmNjNjNjE1YjQxZGE1ZjRmNTliMDZjZjUyZmM0OTIxNTY2YTE5NjFkMTBkYWM=
4ZTFkMTg1ODNmMGI0YmFhYjczNTdmOTM1MzExNjhjZWY3MmI3OGI2MWNkMjhkZWVjYzY2MmFjOW=
ZlNGFiOWJiM2I2OGI0Yjc2MDdjNDEyNmQ1NGMwMjhkNWRlNDQwYjY2MDVkOTE5OWM1OGIxODM1M=
TNkMzI2YWU2ZmE4NzRkMjg1NWI2YTk0ODRhMDg5ZTBkZTExZjZlNzdlYmY0YzdlNzJhNGFhYzc2=
ZmZiNWRiNzc5NmEwNTg3M2E=3D" style=3D"font-family:Helvetica,Arial,sans-serif=
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
        <a href=3D"localhost:1333?u=3DYmE2NDIzMzYzMDBlMWMxNDY1MWI3ZmY1OTIwY=
TQ3ZTc1MTUzODUxZmU5N2FhNGEyZjY4ZDI3ZTE5ZDE1M2Y1MDA1ZTNlYzU0ZjE2YWI2ZTI3ODlk=
YWMwOTk5ZjA5MTJmZDYwNzBjZTIxOTFlMDhlM2ViMjkyZWQ5YzMwMjdkMGYwZjU3ZDY2MDg5NDI=
xMWE3MTU1ODU4ZmFjNGYwMTdjOGY3NjcxODM3ZjRkYWQ0YmUxZDY4ZTZlYzg2Y2U3N2U1MmZlMT=
ljZjVkMWI5YWQ0OGRiMTk4NTVkNzhkMmUzOWI3NjQxMTc2NGRkN2NlZGExNTM3YTQwZjU3NzQzY=
mMzZGE0NTUzYThkNTRmZDMwMDMyN2UxY2Q2MTE0MmRkNzZlNWVmNzQ0OTI2N2I1MDI5OGE5ZDY2=
YzUzMzJlZDYwNThjOTVhODhlYmE5Yzc4NWJiOGVjYzdlYzMwNzE2OWZkY2ZiMDU5N2MwNGIwZjR=
lZDg5NTNkYTBlYWRiODk1Mjg2Y2Q3M2M5ZGI0NDg1ZjQ3MzE5MmMzMWM2NmIyNTJjYTQzM2VkYT=
YzMGYzZmUxYzNmYjE0NGY1MDY=3D" style=3D"font-size:12px;line-height:134%;font=
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
